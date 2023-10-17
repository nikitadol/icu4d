// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _CaseMapper {
  _CaseMapper(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final void Function(
    ffi.Pointer<ICU4XCaseMapper> self,
    int c,
    ffi.Pointer<ICU4XCodePointSetBuilder> builder,
  ) addCaseClosureTo = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XCaseMapper> self,
        ffi.Uint32 c,
        ffi.Pointer<ICU4XCodePointSetBuilder> builder,
      ),
      void Function(
        ffi.Pointer<ICU4XCaseMapper> self,
        int c,
        ffi.Pointer<ICU4XCodePointSetBuilder> builder,
      )>(
    'ICU4XCaseMapper_add_case_closure_to',
    isLeaf: true,
  );

  late final ResultICU4XCaseMapperOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) create = dynamicLibrary.lookupFunction<
      ResultICU4XCaseMapperOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCaseMapperOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCaseMapper_create',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XCaseMapper> self,
  ) destroy = destroyPointer.asFunction(isLeaf: true);

  late final ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XCaseMapper> self,
          )>> destroyPointer = dynamicLibrary.lookup<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XCaseMapper> self,
          )>>('ICU4XCaseMapper_destroy');

  late final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XCaseMapper> self,
    ffi.Pointer<ffi.Uint8> s_data,
    int s_len,
    ffi.Pointer<DiplomatWriteable> write,
  ) fold = dynamicLibrary.lookupFunction<
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XCaseMapper> self,
        ffi.Pointer<ffi.Uint8> s_data,
        ffi.Size s_len,
        ffi.Pointer<DiplomatWriteable> write,
      ),
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XCaseMapper> self,
        ffi.Pointer<ffi.Uint8> s_data,
        int s_len,
        ffi.Pointer<DiplomatWriteable> write,
      )>(
    'ICU4XCaseMapper_fold',
    isLeaf: true,
  );

  late final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XCaseMapper> self,
    ffi.Pointer<ffi.Uint8> s_data,
    int s_len,
    ffi.Pointer<DiplomatWriteable> write,
  ) foldTurkic = dynamicLibrary.lookupFunction<
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XCaseMapper> self,
        ffi.Pointer<ffi.Uint8> s_data,
        ffi.Size s_len,
        ffi.Pointer<DiplomatWriteable> write,
      ),
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XCaseMapper> self,
        ffi.Pointer<ffi.Uint8> s_data,
        int s_len,
        ffi.Pointer<DiplomatWriteable> write,
      )>(
    'ICU4XCaseMapper_fold_turkic',
    isLeaf: true,
  );

  late final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XCaseMapper> self,
    ffi.Pointer<ffi.Uint8> s_data,
    int s_len,
    ffi.Pointer<ICU4XLocale> locale,
    ffi.Pointer<DiplomatWriteable> write,
  ) lowercase = dynamicLibrary.lookupFunction<
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XCaseMapper> self,
        ffi.Pointer<ffi.Uint8> s_data,
        ffi.Size s_len,
        ffi.Pointer<ICU4XLocale> locale,
        ffi.Pointer<DiplomatWriteable> write,
      ),
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XCaseMapper> self,
        ffi.Pointer<ffi.Uint8> s_data,
        int s_len,
        ffi.Pointer<ICU4XLocale> locale,
        ffi.Pointer<DiplomatWriteable> write,
      )>(
    'ICU4XCaseMapper_lowercase',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XCaseMapper> self,
    int ch,
  ) simpleFold = dynamicLibrary.lookupFunction<
      ffi.Uint32 Function(
        ffi.Pointer<ICU4XCaseMapper> self,
        ffi.Uint32 ch,
      ),
      int Function(
        ffi.Pointer<ICU4XCaseMapper> self,
        int ch,
      )>(
    'ICU4XCaseMapper_simple_fold',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XCaseMapper> self,
    int ch,
  ) simpleFoldTurkic = dynamicLibrary.lookupFunction<
      ffi.Uint32 Function(
        ffi.Pointer<ICU4XCaseMapper> self,
        ffi.Uint32 ch,
      ),
      int Function(
        ffi.Pointer<ICU4XCaseMapper> self,
        int ch,
      )>(
    'ICU4XCaseMapper_simple_fold_turkic',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XCaseMapper> self,
    int ch,
  ) simpleLowercase = dynamicLibrary.lookupFunction<
      ffi.Uint32 Function(
        ffi.Pointer<ICU4XCaseMapper> self,
        ffi.Uint32 ch,
      ),
      int Function(
        ffi.Pointer<ICU4XCaseMapper> self,
        int ch,
      )>(
    'ICU4XCaseMapper_simple_lowercase',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XCaseMapper> self,
    int ch,
  ) simpleTitlecase = dynamicLibrary.lookupFunction<
      ffi.Uint32 Function(
        ffi.Pointer<ICU4XCaseMapper> self,
        ffi.Uint32 ch,
      ),
      int Function(
        ffi.Pointer<ICU4XCaseMapper> self,
        int ch,
      )>(
    'ICU4XCaseMapper_simple_titlecase',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XCaseMapper> self,
    int ch,
  ) simpleUppercase = dynamicLibrary.lookupFunction<
      ffi.Uint32 Function(
        ffi.Pointer<ICU4XCaseMapper> self,
        ffi.Uint32 ch,
      ),
      int Function(
        ffi.Pointer<ICU4XCaseMapper> self,
        int ch,
      )>(
    'ICU4XCaseMapper_simple_uppercase',
    isLeaf: true,
  );

  late final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XCaseMapper> self,
    ffi.Pointer<ffi.Uint8> s_data,
    int s_len,
    ffi.Pointer<ICU4XLocale> locale,
    ICU4XTitlecaseOptionsV1 options,
    ffi.Pointer<DiplomatWriteable> write,
  ) titlecaseSegmentWithOnlyCaseDataV1 = dynamicLibrary.lookupFunction<
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XCaseMapper> self,
        ffi.Pointer<ffi.Uint8> s_data,
        ffi.Size s_len,
        ffi.Pointer<ICU4XLocale> locale,
        ICU4XTitlecaseOptionsV1 options,
        ffi.Pointer<DiplomatWriteable> write,
      ),
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XCaseMapper> self,
        ffi.Pointer<ffi.Uint8> s_data,
        int s_len,
        ffi.Pointer<ICU4XLocale> locale,
        ICU4XTitlecaseOptionsV1 options,
        ffi.Pointer<DiplomatWriteable> write,
      )>(
    'ICU4XCaseMapper_titlecase_segment_with_only_case_data_v1',
    isLeaf: true,
  );

  late final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XCaseMapper> self,
    ffi.Pointer<ffi.Uint8> s_data,
    int s_len,
    ffi.Pointer<ICU4XLocale> locale,
    ffi.Pointer<DiplomatWriteable> write,
  ) uppercase = dynamicLibrary.lookupFunction<
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XCaseMapper> self,
        ffi.Pointer<ffi.Uint8> s_data,
        ffi.Size s_len,
        ffi.Pointer<ICU4XLocale> locale,
        ffi.Pointer<DiplomatWriteable> write,
      ),
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XCaseMapper> self,
        ffi.Pointer<ffi.Uint8> s_data,
        int s_len,
        ffi.Pointer<ICU4XLocale> locale,
        ffi.Pointer<DiplomatWriteable> write,
      )>(
    'ICU4XCaseMapper_uppercase',
    isLeaf: true,
  );
}
