part of '../ffi.dart';

final class DataProvider implements ffi.Finalizable {
  static final _finalizer = ffi.NativeFinalizer(
    icu4XBindings.dataProvider.destroyPointer.cast(),
  );

  final ffi.Pointer<ICU4XDataProvider> _pointer;
  _DataProviderState _state;

  DataProvider._(this._pointer, this._state) {
    _finalizer.attach(this, _pointer.cast());
  }

  factory DataProvider.compiled() {
    return DataProvider._(
      icu4XBindings.dataProvider.createCompiled(),
      _DataProviderState.compiled,
    );
  }

  factory DataProvider.empty() {
    return DataProvider._(
      icu4XBindings.dataProvider.createEmpty(),
      _DataProviderState.empty,
    );
  }

  static DataProvider fromBytes(Uint8List bytes) {
    final bytesLength = bytes.length;
    assert(bytesLength > 0);

    final bytesPointer = icu4XAllocator.allocate(bytesLength, 1);
    final bytesPointerBytes = bytesPointer.asTypedList(bytesLength);

    // no CheckWritable in cycle
    bytesPointerBytes[0] = 0;

    for (int i = 0; i < bytesLength; i++) {
      bytesPointerBytes[i] = bytes[i];
    }

    final res = icu4XBindings.dataProvider.createFs(bytesPointer, bytesLength);

    if (res.is_ok) {
      return DataProvider._(
        res.value.ok,
        _DataProviderState.buffer,
      );
    }

    throw FFIError(res.value.err);
  }

  factory DataProvider.fromPath(String path) {
    final pathPointer = StringPointer.toUtf8(path);

    final res = icu4XBindings.dataProvider
        .createFs(pathPointer.pointer, pathPointer.size);

    pathPointer.free();

    if (res.is_ok) {
      return DataProvider._(
        res.value.ok,
        _DataProviderState.buffer,
      );
    }

    throw FFIError(res.value.err);
  }

  void enableLocaleFallback() {
    _debugNotDestroyed(this);
    assert(
      _state == _DataProviderState.buffer,
      '$_state provider cannot be modified',
    );

    final res = icu4XBindings.dataProvider.enableLocaleFallback(_pointer);

    if (res.is_ok) {
      return;
    }

    throw FFIError(res.err);
  }

  void enableLocaleFallbackWith() {
    _debugNotDestroyed(this);
    assert(
      _state == _DataProviderState.buffer,
      '${_state.name} provider cannot be modified',
    );

    // TODO(nikitadol): need implement
  }

  void forkByKey(DataProvider other) {
    _forkBy(other, icu4XBindings.dataProvider.forkByKey);
  }

  void forkByLocale(DataProvider other) {
    _forkBy(other, icu4XBindings.dataProvider.forkByLocale);
  }

  void _forkBy(
    DataProvider other,
    ResultVoidOrICU4XError Function(
      ffi.Pointer<ICU4XDataProvider> self,
      ffi.Pointer<ICU4XDataProvider> other,
    ) forkBy,
  ) {
    _debugNotDestroyed(this);
    _debugNotDestroyed(other);

    assert(
      _state != _DataProviderState.compiled &&
          other._state != _DataProviderState.compiled,
      'The compiled provider cannot be modified',
    );

    _state = _DataProviderState.destroyed;
    other._state = _DataProviderState.destroyed;

    final res = forkBy(_pointer, other._pointer);

    if (res.is_ok) {
      // only that possible
      _state = _DataProviderState.buffer;
      return;
    }

    throw FFIError(res.err);
  }

  static void _debugNotDestroyed(DataProvider provider) {
    assert(
      provider._state != _DataProviderState.destroyed,
      'This provider has been destroyed',
    );
  }
}

enum _DataProviderState {
  destroyed,
  empty,
  compiled,
  buffer,
}
