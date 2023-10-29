import 'dart:io';

import 'package:code_builder/code_builder.dart' as code_builder;
import 'package:collection/collection.dart';
import 'package:dart_style/dart_style.dart';
import 'package:ffigen/ffigen.dart' as ffigen;
import 'package:ffigen/src/code_generator.dart' as ffigen;
import 'package:ffigen/src/code_generator/writer.dart' as ffigen;
import 'package:path/path.dart';
import 'package:recase/recase.dart';
import 'package:yaml/yaml.dart';

const _icuPrefix = 'ICU4X';
const _bindingsPrefix = 'Icu4X';
const _bindingsSuffix = 'Bindings';
const _mainFile = 'bindings.dart';
const _ffiPrefix = 'ffi';
const _dynamicLibraryType = '$_ffiPrefix.DynamicLibrary';
const _dynamicLibraryFieldName = 'dynamicLibrary';
const _subBindingsDir = 'bindings';
const _ignoreForBindings =
    'ignore_for_file: require_trailing_commas, non_constant_identifier_names';

const _nonOptionalFunctions = {
  'ICU4XDataProvider_create_empty',
  'ICU4XDataProvider_destroy',
  'ICU4XDataProvider_enable_locale_fallback',
  'ICU4XDataProvider_fork_by_key',
  'ICU4XDataProvider_fork_by_locale',
  'ICU4XDataStruct_destroy',
  'ICU4XError_destroy',
  'ICU4XLocale_basename',
  'ICU4XLocale_canonicalize',
  'ICU4XLocale_clone',
  'ICU4XLocale_create_from_string',
  'ICU4XLocale_create_und',
  'ICU4XLocale_destroy',
  'ICU4XLocale_get_unicode_extension',
  'ICU4XLocale_language',
  'ICU4XLocale_normalizing_eq',
  'ICU4XLocale_region',
  'ICU4XLocale_script',
  'ICU4XLocale_set_language',
  'ICU4XLocale_set_region',
  'ICU4XLocale_set_script',
  'ICU4XLocale_strict_cmp',
  'ICU4XLocale_to_string',
  'ICU4XOrdering_destroy',
  'diplomat_alloc',
  'diplomat_buffer_writeable_create',
  'diplomat_buffer_writeable_destroy',
  'diplomat_buffer_writeable_get_bytes',
  'diplomat_buffer_writeable_len',
  'diplomat_free',
  'diplomat_simple_writeable',
  'diplomat_dart_alloc',
  'diplomat_dart_realloc',
  'diplomat_dart_free',
};

const _needReplaceFieldName = {'toString'};
const _structuresNeedAllow = {
  'CodePointRangeIterator',
  'DiplomatWriteable',
  'DiplomatStringView',
  'DiplomatUsizeView',
};

bool _generatePointerIf(String name) {
  return name.endsWith('_destroy') || name.endsWith('_free');
}

final formatter = DartFormatter();

void main(List<String> args) {
  if (args.length != 1) {
    throw ArgumentError('no output dir');
  }

  final saveDir = args.first;

  print('Starting...');
  final ffiGenConfig = ffigen.Config.fromYaml(
    YamlMap.wrap(
      const {
        'output': 'generated_bindings.dart',
        'headers': {
          'entry-points': [
            'icu4x/ffi/diplomat/c/include/**',
            'packages/bindings_generator/diplomat-runtime.h',
          ],
        },
        'type-map': {
          'native-types': {
            'char': {
              'lib': _ffiPrefix,
              'dart-type': 'int',
              'c-type': 'Uint8',
            },
          },
          'typedefs': {
            'char32_t': {
              'lib': _ffiPrefix,
              'dart-type': 'int',
              'c-type': 'Uint32',
            },
            'dart_ffi_type': {
              'lib': _ffiPrefix,
              'dart-type': 'NativeType',
              'c-type': 'NativeType',
            },
          },
        },
      },
    ),
  );
  print('Parsing...');

  final library = ffigen.parse(ffiGenConfig);
  final writer = library.writer;

  print('Processing...');

  final spaceToFunctions = <String, List<ffigen.Func>>{};
  final enums = <ffigen.EnumClass>[];
  final structures = <ffigen.Struct>[];
  final unions = <ffigen.Union>[];

  for (final binding in library.bindings) {
    switch (binding) {
      case final function when function is ffigen.Func:
        if (!(function.name.startsWith(_icuPrefix) ||
            function.name.startsWith('diplomat_'))) continue;

        final name = function.name;
        final space = name.substring(0, name.indexOf('_'));

        if (function.name.endsWith('_destroy') &&
            function.functionType.returnType.getDartType(writer) == 'void' &&
            function.functionType.parameters.first.type.baseType
                is ffigen.EnumClass) {
          continue;
        }

        (spaceToFunctions[space] ??= []).add(function);
      case final enum$ when enum$ is ffigen.EnumClass:
        if (!enum$.name.startsWith(_icuPrefix)) continue;
        enums.add(enum$);
      case final struct when struct is ffigen.Struct:
        if (!(struct.name.startsWith(_icuPrefix) ||
                struct.name.contains('diplomat')) &&
            !_structuresNeedAllow.contains(struct.name)) continue;
        // diplomat_result_box_ICU4XDataProvider_ICU4XError
        // diplomat_result_void_ICU4XError
        if (struct.name.startsWith('diplomat_')) {
          final splittedName = struct.name.split('_');

          struct.name =
              'Result${splittedName.skip(splittedName[2] == 'box' ? 3 : 2).map((e) => e[0].toUpperCase() + e.substring(1)).join('Or')}';
        }
        structures.add(struct);
      case final union when union is ffigen.Union:
        if (!union.usr.contains(_icuPrefix)) continue;
        if (union.name.startsWith('UnnamedUnion')) {
          final nameParts = <String>[];

          for (final member in union.members) {
            final type = member.type.baseType;
            if (type is ffigen.Binding) {
              nameParts.add((type as ffigen.Binding).name);
            } else {
              nameParts.add((type as ffigen.NativeType).toString());
            }
          }

          union.name =
              'Value${nameParts.map((e) => e[0].toUpperCase() + e.substring(1)).join('Or')}';
        }
        unions.add(union);
      default:
        continue;
    }
  }

  final fileNamaToBindingClass = <String, code_builder.Spec>{};
  final allBindingsClassBuilder = code_builder.ClassBuilder();

  String functionToString(ffigen.FunctionType functionType, bool dart) {
    final sb = StringBuffer();
    if (dart) {
      sb.write(functionType.returnType.getDartType(writer));
    } else {
      sb.write(functionType.returnType.getCType(writer));
    }
    sb.write(' Function(');

    if (dart) {
      sb.writeAll([
        for (final param in functionType.dartTypeParameters) ...[
          param.type.getDartType(writer),
          ' ',
          param.name,
          ', ',
        ],
      ]);
    } else {
      sb.writeAll([
        for (final param in functionType.parameters) ...[
          param.type.getCType(writer),
          ' ',
          param.name,
          ', ',
        ],
      ]);
    }

    sb.write(')');

    return sb.toString();
  }

  final dynamicLibraryParameter = code_builder.Parameter(
    (b) => b
      ..name = _dynamicLibraryFieldName
      ..toThis = true,
  );

  final dynamicLibraryField = code_builder.Field(
    (b) => b
      ..name = _dynamicLibraryFieldName
      ..type = code_builder.refer(_dynamicLibraryType)
      ..modifier = code_builder.FieldModifier.final$
      ..annotations.add(code_builder.refer('visibleForTesting')),
  );

  for (final MapEntry(key: space, value: functions)
      in spaceToFunctions.entries) {
    final name = ReCase(
      space.startsWith(_icuPrefix) ? space.substring(_icuPrefix.length) : space,
    );

    final bindingBuilder = code_builder.ClassBuilder();
    final bindingConstructorBuilder = code_builder.ConstructorBuilder();

    bindingConstructorBuilder.requiredParameters.add(dynamicLibraryParameter);

    final bindingName = '_${name.pascalCase}';

    for (final function in functions) {
      String funcName = function.name.substring(space.length + 1).camelCase;
      if (_needReplaceFieldName.contains(funcName)) {
        funcName = '${funcName}_';
      }
      final dartType = functionToString(function.functionType, true);
      final cType = functionToString(function.functionType, false);

      final arguments = const {
        'isLeaf': code_builder.literalTrue,
      };

      final code_builder.Expression lookup;
      final code_builder.Reference funcType;

      if (_generatePointerIf(function.name)) {
        final oldFuncName = funcName;
        funcName = '${funcName}Pointer';

        final nativeFunction = code_builder.TypeReference(
          (b) => b
            ..symbol = 'ffi.NativeFunction'
            ..types.add(code_builder.refer(cType)),
        );

        funcType = code_builder.TypeReference((b) => b
          ..symbol = 'ffi.Pointer'
          ..types.add(nativeFunction));

        lookup = code_builder
            .refer(_dynamicLibraryFieldName)
            .property('lookup')
            .call(
          [
            code_builder.literalString(function.name),
          ],
          const {},
          [
            nativeFunction,
          ],
        );

        bindingBuilder.fields.add(
          code_builder.Field(
            (b) => b
              ..name = oldFuncName
              ..modifier = code_builder.FieldModifier.final$
              ..type = code_builder.refer(dartType)
              ..late = true
              ..assignment = code_builder
                  .refer(funcName)
                  .property('asFunction')
                  .call(const [], arguments).code,
          ),
        );
      } else {
        lookup = code_builder
            .refer(_dynamicLibraryFieldName)
            .property('lookupFunction')
            .call(
              [
                code_builder.literalString(function.name),
              ],
              arguments,
              [
                code_builder.refer(cType),
                code_builder.refer(dartType),
              ],
            );

        funcType = code_builder.refer(dartType);
      }

      final field = code_builder.FieldBuilder()
        ..name = funcName
        ..modifier = code_builder.FieldModifier.final$
        ..type = funcType;

      if (function.functionType.returnType is ffigen.EnumClass ||
          function.functionType.dartTypeParameters
              .any((element) => element.type is ffigen.EnumClass)) {
        field.docs.addAll([
          '/// C args:',
          for (final parameter in function.functionType.parameters)
            '/// - ${parameter.type.asCommentString(writer)}',
          '///',
          '/// C return:',
          '/// - ${function.functionType.returnType.asCommentString(writer)}',
        ]);
      }

      if (_nonOptionalFunctions.contains(function.name)) {
        bindingConstructorBuilder.initializers.add(
          code_builder.refer(funcName).assign(lookup).code,
        );
      } else {
        field
          ..late = true
          ..assignment = lookup.code;
      }

      bindingBuilder.fields.add(field.build());
    }

    bindingBuilder
      ..modifier = code_builder.ClassModifier.final$
      ..name = bindingName
      ..modifier = code_builder.ClassModifier.final$
      ..constructors.add(bindingConstructorBuilder.build())
      ..fields.add(dynamicLibraryField)
      ..fields.sort(_fieldCompare);

    fileNamaToBindingClass[name.snakeCase] = code_builder.Library(
      (b) => b
        ..comments.add(_ignoreForBindings)
        ..directives.add(code_builder.Directive.partOf('../$_mainFile'))
        ..body.add(bindingBuilder.build()),
    );

    allBindingsClassBuilder.fields.add(
      code_builder.Field(
        (b) => b
          ..name = name.camelCase
          ..type = code_builder.refer(bindingName)
          ..modifier = code_builder.FieldModifier.final$,
      ),
    );
  }

  allBindingsClassBuilder
    ..modifier = code_builder.ClassModifier.final$
    ..constructors.add(
      code_builder.Constructor(
        (b) => b
          ..initializers.addAll(
            [
              for (final field in allBindingsClassBuilder.fields
                  .build()
                  .sorted((a, b) => a.name.compareTo(b.name)))
                code_builder
                    .refer(field.name)
                    .assign(
                      field.type!.newInstance(
                        [
                          code_builder.refer(_dynamicLibraryFieldName),
                        ],
                      ),
                    )
                    .code,
            ],
          )
          ..requiredParameters.add(dynamicLibraryParameter),
      ),
    )
    ..name = '$_bindingsPrefix$_bindingsSuffix'
    ..fields.add(dynamicLibraryField);

  allBindingsClassBuilder.fields.sort(_fieldCompare);

  print('Saving...');

  final mainFileBuilder = code_builder.LibraryBuilder()
    ..body.add(allBindingsClassBuilder.build())
    ..comments.addAll(const [
      'AUTO GENERATED FILE, DO NOT EDIT.',
      '',
      'Generated by `icu4x_bindings_generator`.',
      'ignore_for_file: library_private_types_in_public_api',
    ])
    ..directives.addAll([
      code_builder.Directive.import('package:meta/meta.dart'),
      code_builder.Directive.import('dart:ffi', as: 'ffi'),
    ]);

  {
    final libBuilder = code_builder.LibraryBuilder()
      ..comments.add(_ignoreForBindings)
      ..directives.add(code_builder.Directive.partOf('../$_mainFile'));

    for (final enum$ in enums) {
      final enumBuilder = code_builder.ClassBuilder()
        ..name = enum$.name
        ..abstract = true;

      for (final constant in enum$.enumConstants) {
        final fieldBuilder = code_builder.FieldBuilder()
          // Name in C -> ICU4XCollatorAlternateHandling_Auto
          ..name = constant.name.substring(enum$.name.length + 1).camelCase
          ..static = true
          ..modifier = code_builder.FieldModifier.constant
          ..type = code_builder.refer(
            enum$.baseType.getDartType(writer),
          )
          ..assignment = code_builder.literalNum(constant.value).code;

        enumBuilder.fields.add(fieldBuilder.build());
      }

      libBuilder.body.add(enumBuilder.build());
    }

    libBuilder.body.sort(_specCompare);

    final fileName = join(_subBindingsDir, 'enums.dart');
    File(join(saveDir, fileName)).writeSpec(libBuilder.build());
    mainFileBuilder.directives.add(code_builder.Directive.part(fileName));
  }

  {
    final libBuilder = code_builder.LibraryBuilder()
      ..comments.add(_ignoreForBindings)
      ..directives.add(code_builder.Directive.partOf('../$_mainFile'));

    for (final struct in structures) {
      final builder = code_builder.ClassBuilder()
        ..name = struct.name
        ..modifier = code_builder.ClassModifier.final$
        ..extend = code_builder.refer(
          '$_ffiPrefix.${struct.members.isEmpty ? 'Opaque' : 'Struct'}',
        );

      for (final member in struct.members) {
        final String name;
        final ffigen.Type type;

        switch (member.type) {
          case final union when union is ffigen.Union:
            if (union.members.length > 1) {
              name = 'value';
              type = member.type;
            } else {
              final first = union.members.first;
              name = first.name;
              type = first.type;
            }
          default:
            type = member.type;
            name = member.name;
        }

        final dartType = type.getDartType(writer);

        final field = code_builder.FieldBuilder()
          ..name = name
          ..external = true
          ..type = code_builder.refer(dartType);

        final cType = type.getCType(writer);
        if (dartType != cType) {
          field.annotations.add(code_builder.refer(cType).call([]));
        }

        if (type is ffigen.EnumClass) {
          field.docs.add('/// ${type.asCommentString(writer)}');
        }

        builder.fields.add(field.build());
      }

      libBuilder.body.add(builder.build());
    }

    libBuilder.body.sort(_specCompare);

    final fileName = join(_subBindingsDir, 'structures.dart');
    File(join(saveDir, fileName)).writeSpec(libBuilder.build());
    mainFileBuilder.directives.add(code_builder.Directive.part(fileName));
  }

  {
    final libBuilder = code_builder.LibraryBuilder()
      ..comments.add(_ignoreForBindings)
      ..directives.add(code_builder.Directive.partOf('../$_mainFile'));

    for (final union in unions) {
      if (union.members.length == 1) continue;

      final builder = code_builder.ClassBuilder()
        ..modifier = code_builder.ClassModifier.final$
        ..name = union.name
        ..extend = code_builder.refer(
          '$_ffiPrefix.Union',
        );

      for (final member in union.members) {
        final dartType = member.type.getDartType(writer);

        final field = code_builder.FieldBuilder()
          ..name = member.name
          ..external = true
          ..type = code_builder.refer(dartType);

        final cType = member.type.getCType(writer);
        if (dartType != cType) {
          field.annotations.add(code_builder.refer(cType).call([]));
        }

        if (member.type is ffigen.EnumClass) {
          field.docs.add('/// ${member.type.asCommentString(writer)}');
        }

        builder.fields.add(field.build());
      }

      libBuilder.body.add(builder.build());
    }

    libBuilder.body.sort(_specCompare);

    final fileName = join(_subBindingsDir, 'unions.dart');
    File(join(saveDir, fileName)).writeSpec(libBuilder.build());
    mainFileBuilder.directives.add(code_builder.Directive.part(fileName));
  }

  for (final MapEntry(key: name, value: binding)
      in fileNamaToBindingClass.entries) {
    final fileName = join(_subBindingsDir, '$name.dart');
    File(join(saveDir, fileName)).writeSpec(binding);
    mainFileBuilder.directives.add(code_builder.Directive.part(fileName));
  }

  mainFileBuilder.directives.sort();
  File(join(args.first, _mainFile)).writeSpec(mainFileBuilder.build());

  print('Done!');
}

int _fieldCompare(code_builder.Field a, code_builder.Field b) {
  final result = b.annotations.length.compareTo(a.annotations.length);

  if (result == 0) {
    return a.name.compareTo(b.name);
  }

  return result;
}

int _specCompare(a, b) {
  final String aName = a.name;
  final String bName = b.name;

  return aName.compareTo(bName);
}

extension on File {
  void writeSpec(code_builder.Spec spec) {
    if (!existsSync()) {
      createSync(recursive: true);
    }

    final emitter = code_builder.DartEmitter(
      useNullSafetySyntax: true,
    );

    writeAsStringSync(
      formatter.format(
        spec.accept(emitter).toString(),
      ),
    );
  }
}

extension on ffigen.Type {
  String asCommentString(ffigen.Writer writer) {
    final type = this;
    if (type is ffigen.PointerType) {
      return '${type.child.asCommentString(writer)}*';
    } else if (type is ffigen.Struct) {
      return '[${type.name}]';
    } else if (type is ffigen.Union) {
      return '[${type.name}]';
    } else if (type is ffigen.NativeType) {
      return '[${type.getCType(writer)}]';
    }

    return '[$type]';
  }
}
