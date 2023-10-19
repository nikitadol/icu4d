part of 'ffi.dart';

final LibraryLoader libraryLoader = LibraryLoader._();

ffi.DynamicLibrary _default() {
  // TODO(nikitadol): need add for all platforms
  return ffi.DynamicLibrary.executable();
}

typedef LibraryOpener = ffi.DynamicLibrary Function();

final class LibraryLoader {
  LibraryLoader._();

  final Map<String, LibraryOpener> _overridePlatforms = {};
  LibraryOpener? _overrideForAll;

  ffi.DynamicLibrary openIcu4x() {
    final opener = _overrideForAll ??
        _overridePlatforms[Platform.operatingSystem] ??
        _default;

    return opener();
  }

  void overrideFor(String platform, LibraryOpener opener) {
    _overridePlatforms[platform] = opener;
  }

  void overrideForAll(LibraryOpener opener) {
    _overrideForAll = opener;
  }
}
