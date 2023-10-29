cd components/collator/
cargo bench
```
en-US/TestNames_Latin/0_rust_sort/default: 822.18 ns 
en-US/TestNames_Latin/1_icu4x_sort/0_Primary: 24.565 µs 
da-DK/TestNames_Latin/0_rust_sort/default: 820.06 ns 
da-DK/TestNames_Latin/1_icu4x_sort/0_Primary: 27.627 µs 
fr-CA/TestNames_Latin/0_rust_sort/default: 821.69 ns 
fr-CA/TestNames_Latin/1_icu4x_sort/0_Primary: 24.558 µs 
ja-JP/TestNames_Latin/0_rust_sort/default: 820.49 ns 
ja-JP/TestNames_Latin/1_icu4x_sort/0_Primary: 27.035 µs 
ja-JP/TestNames_Japanese_h/0_rust_sort/default: 736.47 ns 
ja-JP/TestNames_Japanese_h/1_icu4x_sort/0_Primary: 29.559 µs 
ja-JP/TestNames_Japanese_k/0_rust_sort/default: 812.16 ns 
ja-JP/TestNames_Japanese_k/1_icu4x_sort/0_Primary: 38.352 µs 
ja-JP/TestNames_Asian/0_rust_sort/default: 808.46 ns 
ja-JP/TestNames_Asian/1_icu4x_sort/0_Primary: 34.515 µs 
zh-u-co-pinyin/TestNames_Latin/0_rust_sort/default: 819.97 ns 
zh-u-co-pinyin/TestNames_Latin/1_icu4x_sort/0_Primary: 27.826 µs 
zh-u-co-pinyin/TestNames_Chinese/0_rust_sort/default: 869.23 ns 
zh-u-co-pinyin/TestNames_Chinese/1_icu4x_sort/0_Primary: 27.356 µs 
zh-u-co-stroke/TestNames_Latin/0_rust_sort/default: 819.37 ns 
zh-u-co-stroke/TestNames_Latin/1_icu4x_sort/0_Primary: 27.937 µs 
zh-u-co-stroke/TestNames_Chinese/0_rust_sort/default: 865.90 ns 
zh-u-co-stroke/TestNames_Chinese/1_icu4x_sort/0_Primary: 28.868 µs 
ru-RU/TestNames_Latin/0_rust_sort/default: 819.98 ns 
ru-RU/TestNames_Latin/1_icu4x_sort/0_Primary: 24.794 µs 
ru-RU/TestNames_Russian/0_rust_sort/default: 719.44 ns 
ru-RU/TestNames_Russian/1_icu4x_sort/0_Primary: 24.271 µs 
th/TestNames_Latin/0_rust_sort/default: 820.72 ns 
th/TestNames_Latin/1_icu4x_sort/0_Primary: 26.621 µs 
th/TestNames_Thai/0_rust_sort/default: 707.98 ns 
th/TestNames_Thai/1_icu4x_sort/0_Primary: 29.989 µs 
ko-KR/TestNames_Latin/0_rust_sort/default: 820.45 ns 
ko-KR/TestNames_Latin/1_icu4x_sort/0_Primary: 26.479 µs 
ko-KR/TestNames_Korean/0_rust_sort/default: 779.12 ns 
ko-KR/TestNames_Korean/1_icu4x_sort/0_Primary: 32.076 µs 
```

cargo build -p icu_capi_cdylib --all-features --release
dart benchmark/collator/collator.dart
```
en-US/TestNames_Latin/dart(RunTime): 38.97332 us.
en-US/TestNames_Latin/collator/primary(RunTime): 2748.44875 us.
da-DK/TestNames_Latin/dart(RunTime): 38.45096151995226 us.
da-DK/TestNames_Latin/collator/primary(RunTime): 2792.95125 us.
fr-CA/TestNames_Latin/dart(RunTime): 38.48571090000593 us.
fr-CA/TestNames_Latin/collator/primary(RunTime): 2768.845 us.
ja-JP/TestNames_Latin/dart(RunTime): 39.01564996438815 us.
ja-JP/TestNames_Latin/collator/primary(RunTime): 2834.255 us.
ja-JP/TestNames_Japanese_h/dart(RunTime): 49.32988705686356 us.
ja-JP/TestNames_Japanese_h/collator/primary(RunTime): 3423.1094452773614 us.
ja-JP/TestNames_Japanese_k/dart(RunTime): 54.62568173227496 us.
ja-JP/TestNames_Japanese_k/collator/primary(RunTime): 3830.431818181818 us.
ja-JP/TestNames_Asian/dart(RunTime): 48.486980104159166 us.
ja-JP/TestNames_Asian/collator/primary(RunTime): 2944.76125 us.
zh-u-co-pinyin/TestNames_Latin/dart(RunTime): 39.181331690696645 us.
zh-u-co-pinyin/TestNames_Latin/collator/primary(RunTime): 2770.1475 us.
zh-u-co-pinyin/TestNames_Chinese/dart(RunTime): 48.74655168189725 us.
zh-u-co-pinyin/TestNames_Chinese/collator/primary(RunTime): 2591.23875 us.
zh-u-co-stroke/TestNames_Latin/dart(RunTime): 38.97287724499028 us.
zh-u-co-stroke/TestNames_Latin/collator/primary(RunTime): 2791.59125 us.
zh-u-co-stroke/TestNames_Chinese/dart(RunTime): 49.168790649674804 us.
zh-u-co-stroke/TestNames_Chinese/collator/primary(RunTime): 2854.7775 us.
ru-RU/TestNames_Latin/dart(RunTime): 39.21170763633564 us.
ru-RU/TestNames_Latin/collator/primary(RunTime): 2786.06375 us.
ru-RU/TestNames_Russian/dart(RunTime): 44.516072904432555 us.
ru-RU/TestNames_Russian/collator/primary(RunTime): 3023.995 us.
th/TestNames_Latin/dart(RunTime): 39.33163036483825 us.
th/TestNames_Latin/collator/primary(RunTime): 2786.32125 us.
th/TestNames_Thai/dart(RunTime): 43.043386652906776 us.
th/TestNames_Thai/collator/primary(RunTime): 2978.5487256371816 us.
ko-KR/TestNames_Latin/dart(RunTime): 39.0679705095382 us.
ko-KR/TestNames_Latin/collator/primary(RunTime): 2802.88875 us.
ko-KR/TestNames_Korean/dart(RunTime): 51.655079181151024 us.
ko-KR/TestNames_Korean/collator/primary(RunTime): 3544.027972027972 us.
```
