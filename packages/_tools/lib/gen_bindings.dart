// ignore_for_file: implementation_imports
import 'dart:io';

import 'package:code_builder/code_builder.dart' as cb;
import 'package:dart_style/dart_style.dart';
import 'package:ffigen/src/code_generator.dart';
import 'package:ffigen/src/config_provider.dart';
import 'package:ffigen/src/header_parser.dart';
import 'package:path/path.dart' as path;
import 'package:recase/recase.dart';
import 'package:yaml/yaml.dart';

// in case if ffigen don't want to work
Future<void> main() async {
  final library = parse(
    YamlConfig.fromYaml(
      YamlMap.wrap(const {
        'output': 'generated.dart',
        'exclude-all-by-default': true,
        'headers': {
          'entry-points': [
            'icu4x/ffi/capi/bindings/c/**.h',
          ],
        },
        'ignore-source-errors': true,
        'functions': {
          'include': [
            'ICU4XLocale_create_from_string',
          ],
        },
      }),
    ),
  );

  final allocator = CustomAllocator();

  final generatedDir = Directory(
    path.join(Directory.current.path, 'packages/icu4d/lib/src/generated'),
  );

  if (generatedDir.existsSync()) {
    generatedDir.deleteSync(recursive: true);
  }
  const indexFileName = 'index';
  const indexDartFileName = '$indexFileName.dart';
  final indexLibraryBuilder = cb.LibraryBuilder();

  String writeLibrary(
    String fileName,
    cb.Library spec,
  ) {
    final name = '$fileName.dart';
    final file = File(path.join(generatedDir.path, name));

    final dartEmitter = cb.DartEmitter(
      allocator: allocator,
      useNullSafetySyntax: true,
      orderDirectives: true,
    );

    final code = spec.accept(dartEmitter).toString();
    file.createSync(recursive: true);
    final dartFormatter = DartFormatter();

    file.writeAsStringSync(dartFormatter.format(code));

    return name;
  }

  String writeSpec(String fileName, cb.Spec spec) {
    cb.Code;
    final library = cb.Library(
      (b) => b
        ..directives.add(cb.Directive.partOf(indexDartFileName))
        ..body.add(spec)
        ..generatedByComment =
            'Generated by ${path.prettyUri(Platform.script)}',
    );

    return writeLibrary(fileName, library);
  }

  for (final binding in library.bindings) {
    switch (binding) {
      case final EnumClass enumClass:
        final (:fileName, :spec) = enumClassHandler(enumClass);

        indexLibraryBuilder.directives
            .add(cb.Directive.part(writeSpec(fileName, spec)));
      default:
        throw UnsupportedError('${binding.runtimeType}');
    }
  }

  indexLibraryBuilder
    ..directives.addAll(allocator.allImports)
    ..generatedByComment = 'Generated by ${path.prettyUri(Platform.script)}';

  writeLibrary(indexFileName, indexLibraryBuilder.build());
}

final _genericArgRef = cb.refer('T');
final _mustBeConstRef = cb.refer('mustBeConst', 'package:meta/meta.dart');

String _removeIcu4XPrefix(String name) {
  const prefix = 'ICU4X';

  if (name.startsWith(prefix)) {
    return name.substring(prefix.length);
  }

  return name;
}

({
  String fileName,
  cb.Spec spec,
}) enumClassHandler(EnumClass enumClass) {
  final name = enumClass.name;
  final namePrefix = '${name}_';

  final methodBuilder = cb.MethodBuilder()
    ..types.add(_genericArgRef)
    ..name = '${_removeIcu4XPrefix(name).camelCase}Mapper'
    ..returns = _genericArgRef
    ..requiredParameters.add(cb.Parameter(
      (b) => b
        ..name = 'value'
        ..type = cb.refer('int'),
    ));

  final methodBodyBuilder = cb.BlockBuilder();

  methodBodyBuilder.statements.add(cb.Code('return switch (value) {'));

  void addParams(String name) {
    methodBuilder.optionalParameters.add(
      cb.Parameter(
        (b) => b
          ..name = name
          ..named = true
          ..type = _genericArgRef
          ..required = true
          ..annotations.add(_mustBeConstRef),
      ),
    );
  }

  for (final constant in enumClass.enumConstants) {
    if (!constant.name.startsWith(namePrefix)) {
      throw UnsupportedError('$namePrefix: ${constant.name}');
    }

    final constantName = constant.name.substring(namePrefix.length);
    final constantNameCamelCase = constantName.camelCase;

    addParams(constantNameCamelCase);

    methodBodyBuilder.statements
        .add(cb.Code('${constant.value} => $constantNameCamelCase,'));
  }

  const unknown = 'unknown';
  addParams(unknown);

  methodBodyBuilder.statements
    ..add(cb.Code('_ => $unknown,'))
    ..add(cb.Code('};'));

  methodBuilder.body = methodBodyBuilder.build();

  final spec = methodBuilder.build();
  return (
    fileName: spec.name!.snakeCase,
    spec: spec,
  );
}

final class CustomAllocator implements cb.Allocator {
  final _imports = <String>{};

  @override
  String allocate(cb.Reference reference) {
    final url = reference.url;
    if (url != null) {
      _imports.add(url);
    }

    return reference.symbol!;
  }

  Iterable<cb.Directive> get allImports => _imports.map(cb.Directive.import);

  @override
  Iterable<cb.Directive> get imports => const [];
}
