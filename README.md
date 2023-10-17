Wrapper for [icu4x](https://github.com/unicode-org/icu4x)


- to regenerate bindings - run ```dart tools/generate_bindings.dart```

to build release ```RUSTFLAGS="-C panic=abort -C strip=symbols -C debuginfo=0 -C link-arg=-s --remap-path-prefix=/Users/nikitadol/.cargo=cargo --remap-path-prefix=/Users/nikitadol=home --remap-path-prefix=/Users/nikitadol/.rustup=rustup --remap-path-prefix=/Users/nikitadol/development/projects/icu4d/icu4x=workspace -C rpath=y" cargo build -p icu_capi_staticlib --release --target aarch64-apple-darwin```
