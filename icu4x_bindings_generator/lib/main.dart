import 'dart:io';

import 'package:code_builder/code_builder.dart' as code_builder;
import 'package:collection/collection.dart';
import 'package:dart_style/dart_style.dart';
import 'package:ffigen/ffigen.dart' as ffigen;
import 'package:ffigen/src/code_generator.dart' as ffigen;
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
const _ignoreForBindings = 'ignore_for_file: require_trailing_commas';

const _needReplaceFieldName = {'toString'};
const _structuresNeedAllow = {
  'CodePointRangeIterator',
  'DiplomatWriteable',
  'DiplomatStringView',
  'DiplomatUsizeView',
};
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
            '../icu4x/ffi/diplomat/c/include/**',
            'diplomat-runtime.h',
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
          },
        },
      },
    ),
  );
  print('Parsing...');

  final library = ffigen.parse(ffiGenConfig);

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
            function.functionType.returnType.getDartType(library.writer) ==
                'void' &&
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
      sb.write(functionType.returnType.getDartType(library.writer));
    } else {
      sb.write(functionType.returnType.getCType(library.writer));
    }
    sb.write(' Function(');

    if (dart) {
      sb.writeAll([
        for (final param in functionType.dartTypeParameters) ...[
          param.type.getDartType(library.writer),
          ' ',
          param.name,
          ', ',
        ],
      ]);
    } else {
      sb.writeAll([
        for (final param in functionType.parameters) ...[
          param.type.getCType(library.writer),
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
      ..type = code_builder.refer(_dynamicLibraryType)
      ..name = _dynamicLibraryFieldName,
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

      bindingConstructorBuilder.initializers.add(
        code_builder
            .refer(funcName)
            .assign(
              code_builder
                  .refer(_dynamicLibraryFieldName)
                  .property('lookupFunction')
                  .call(
                [
                  code_builder.literalString(function.name),
                ],
                const {},
                [
                  code_builder.refer(cType),
                  code_builder.refer(dartType),
                ],
              ),
            )
            .code,
      );

      bindingBuilder.fields.add(code_builder.Field(
        (b) => b
          ..name = funcName
          ..modifier = code_builder.FieldModifier.final$
          ..type = code_builder.refer(dartType),
      ));
    }

    bindingBuilder
      ..modifier = code_builder.ClassModifier.final$
      ..name = bindingName
      ..modifier = code_builder.ClassModifier.final$
      ..constructors.add(bindingConstructorBuilder.build());

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
          ..requiredParameters.add(
            code_builder.Parameter(
              (b) => b
                ..name = _dynamicLibraryFieldName
                ..toThis = true,
            ),
          ),
      ),
    )
    ..name = '$_bindingsPrefix$_bindingsSuffix'
    ..fields.add(
      code_builder.Field(
        (b) => b
          ..name = _dynamicLibraryFieldName
          ..type = code_builder.refer(_dynamicLibraryType)
          ..modifier = code_builder.FieldModifier.final$
          ..annotations.add(code_builder.refer('visibleForTesting')),
      ),
    );

  allBindingsClassBuilder.fields.sort(
    (a, b) {
      final result = b.annotations.length.compareTo(a.annotations.length);

      if (result == 0) {
        return a.name.compareTo(b.name);
      }

      return result;
    },
  );

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
          ..name = constant.name.substring(enum$.name.length + 1).camelCase
          ..static = true
          ..type = code_builder.refer(
            enum$.baseType.getDartType(library.writer),
          )
          ..assignment = code_builder.literalNum(constant.value).code;

        enumBuilder.fields.add(fieldBuilder.build());
      }

      libBuilder.body.add(enumBuilder.build());
    }

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

        final dartType = type.getDartType(library.writer);

        final field = code_builder.FieldBuilder()
          ..name = name
          ..external = true
          ..type = code_builder.refer(dartType);

        final cType = type.getCType(library.writer);
        if (dartType != cType) {
          field.annotations.add(code_builder.refer(cType).call([]));
        }

        builder.fields.add(field.build());
      }

      libBuilder.body.add(builder.build());
    }

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
        final dartType = member.type.getDartType(library.writer);

        final field = code_builder.FieldBuilder()
          ..name = member.name
          ..external = true
          ..type = code_builder.refer(dartType);

        final cType = member.type.getCType(library.writer);
        if (dartType != cType) {
          field.annotations.add(code_builder.refer(cType).call([]));
        }

        builder.fields.add(field.build());
      }

      libBuilder.body.add(builder.build());
    }

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

extension on File {
  void writeSpec(code_builder.Spec spec) {
    if (!existsSync()) {
      createSync(recursive: true);
    }

    writeAsStringSync(
      formatter.format(
        spec.accept(code_builder.DartEmitter()).toString(),
      ),
    );
  }
}