```bash
dart run benchmark_runner
```

Apple M1:
```log
Finding benchmark files... 
  benchmark/utf16_to_utf8_benchmark.dart

Progress timer: [27s:000ms]

$ dart benchmark/utf16_to_utf8_benchmark.dart
  [290ms:163us] czech: dart native
    mean: 1.28 ± 0.30 ms, median: 1.11 ± 0.54 ms
    ▉▃▅_ sample size: 60
  
  [269ms:830us] czech: other
    mean: 702.86 ± 322.33 us, median: 505.75 ± 476.17 us
    ▉▁▁▂___ sample size: 89
  
  [311ms:764us] czech: other pragma vm:unsafe:no-interrupts
    mean: 1.14 ± 2.84 ms, median: 0.54 ± 0.63 ms
    ▉_▂▁_________  68  _____ sample size: 78
  
  [256ms:041us] czech: other pragma vm:unsafe:no-bounds-checks
    mean: 656.39 ± 252.65 us, median: 488.63 ± 392.54 us
    ▉▁▂▂_ sample size: 79
  
  [266ms:657us] czech: other all pragmas
    mean: 614.87 ± 251.87 us, median: 456.29 ± 386.96 us
    ▉▂▁▂▁__ sample size: 97
  
  [287ms:355us] german: dart native
    mean: 1.31 ± 0.39 ms, median: 1.083 ± 0.64 ms
    ▉_▄__ sample size: 60
  
  [262ms:774us] german: other
    mean: 599.64 ± 177.86 us, median: 472.10 ± 280.00 us
    ▉_▄▂__ sample size: 98
  
  [263ms:725us] german: other pragma vm:unsafe:no-interrupts
    mean: 605.020 ± 166.76 us, median: 557.23 ± 282.83 us
    ▉▂▄▂_ sample size: 98
  
  [263ms:652us] german: other pragma vm:unsafe:no-bounds-checks
    mean: 606.37 ± 171.077 us, median: 551.19 ± 310.37 us
    ▉▁▄▃_ sample size: 98
  
  [263ms:984us] german: other all pragmas
    mean: 569.74 ± 194.36 us, median: 536.33 ± 339.40 us
    ▉▂▃▃____ sample size: 104
  
  [415ms:000us] arabic: dart native
    mean: 3.33 ± 0.40 ms, median: 3.12 ± 0.71 ms
    ▉▂▄_ sample size: 58
  
  [298ms:103us] arabic: other
    mean: 1.45 ± 0.34 ms, median: 1.27 ± 0.31 ms
    ▉▄▂__▁▁_ sample size: 60
  
  [313ms:820us] arabic: other pragma vm:unsafe:no-interrupts
    mean: 1.72 ± 0.68 ms, median: 1.37 ± 0.65 ms
    ▉▄▂_▂▁_____ sample size: 60
  
  [299ms:464us] arabic: other pragma vm:unsafe:no-bounds-checks
    mean: 1.47 ± 0.37 ms, median: 1.26 ± 0.35 ms
    ▉▂▁__▂_ sample size: 60
  
  [292ms:883us] arabic: other all pragmas
    mean: 1.42 ± 0.41 ms, median: 1.18 ± 0.34 ms
    ▆▉▃_▁▁▂__ sample size: 60
  
  [277ms:762us] japanese: dart native
    mean: 1.16 ± 0.27 ms, median: 1.00079 ± 0.44 ms
    ▉_▂▁_ sample size: 60
  
  [263ms:833us] japanese: other
    mean: 584.26 ± 246.69 us, median: 445.83 ± 294.67 us
    ▉▁_▁▁_____ sample size: 103
  
  [263ms:437us] japanese: other pragma vm:unsafe:no-interrupts
    mean: 575.32 ± 240.71 us, median: 439.71 ± 271.36 us
    ▉___▁▁__ sample size: 103
  
  [264ms:545us] japanese: other pragma vm:unsafe:no-bounds-checks
    mean: 574.33 ± 237.93 us, median: 437.33 ± 283.56 us
    ▉▁__▂___ sample size: 104
  
  [264ms:398us] japanese: other all pragmas
    mean: 555.14 ± 270.25 us, median: 412.10 ± 276.40 us
    ▉▁__▁▁_______ sample size: 108
  
  [265ms:776us] esperanto: dart native
    mean: 661.37 ± 138.071 us, median: 583.25 ± 188.83 us
    ▉▂▁▁▁__ sample size: 92
  
  [250ms:324us] esperanto: other
    mean: 350.25 ± 164.68 us, median: 256.71 ± 179.17 us
    ▉▁_▁__▁___ sample size: 138
  
  [250ms:985us] esperanto: other pragma vm:unsafe:no-interrupts
    mean: 347.067 ± 169.67 us, median: 258.25 ± 129.33 us
    ▉▃_______▁__ sample size: 139
  
  [249ms:130us] esperanto: other pragma vm:unsafe:no-bounds-checks
    mean: 345.22 ± 177.43 us, median: 255.00 ± 161.81 us
    ▉▁___________ sample size: 136
  
  [248ms:728us] esperanto: other all pragmas
    mean: 332.28 ± 176.85 us, median: 232.21 ± 187.50 us
    ▉▁__▁____ sample size: 141
  
  [286ms:306us] turkish: dart native
    mean: 1.30 ± 0.25 ms, median: 1.15 ± 0.40 ms
    ▉_▃▂ sample size: 60
  
  [266ms:345us] turkish: other
    mean: 656.81 ± 196.0024 us, median: 527.46 ± 332.46 us
    ▉▃▃_▁ sample size: 93
  
  [266ms:577us] turkish: other pragma vm:unsafe:no-interrupts
    mean: 668.46 ± 216.28 us, median: 544.38 ± 326.42 us
    ▉▃▃▁▁_ sample size: 93
  
  [264ms:589us] turkish: other pragma vm:unsafe:no-bounds-checks
    mean: 655.20 ± 193.020 us, median: 533.27 ± 315.27 us
    ▉▃▃▁_ sample size: 92
  
  [264ms:011us] turkish: other all pragmas
    mean: 606.00 ± 164.96 us, median: 609.042 ± 295.58 us
    ▉▃▃▄_ sample size: 98
  
  [318ms:779us] chinese: dart native
    mean: 1.77 ± 0.25 ms, median: 1.77 ± 0.26 ms
    ▉▃▉▃_______ sample size: 60
  
  [276ms:915us] chinese: other
    mean: 1.10 ± 1.35 ms, median: 0.74 ± 0.65 ms
    ▉_▃______________________________ sample size: 63
  
  [266ms:757us] chinese: other pragma vm:unsafe:no-interrupts
    mean: 962.63 ± 365.85 us, median: 731.79 ± 673.77 us
    ▉_▄_ sample size: 63
  
  [266ms:584us] chinese: other pragma vm:unsafe:no-bounds-checks
    mean: 957.099 ± 355.56 us, median: 732.29 ± 665.50 us
    ▉_▄_ sample size: 63
  
  [265ms:989us] chinese: other all pragmas
    mean: 881.97 ± 332.93 us, median: 672.33 ± 626.87 us
    ▉▁▃_ sample size: 67
  
  [351ms:163us] vietnamese: dart native
    mean: 2.29 ± 0.33 ms, median: 2.15 ± 0.34 ms
    ▉▉▃▁_▃___ sample size: 59
  
  [278ms:310us] vietnamese: other
    mean: 1.14 ± 0.30 ms, median: 0.99 ± 0.23 ms
    ▉▅▁___▁_▁ sample size: 60
  
  [281ms:096us] vietnamese: other pragma vm:unsafe:no-interrupts
    mean: 1.16 ± 0.31 ms, median: 1.0095 ± 0.15 ms
    ▄▉▁___________ sample size: 60
  
  [278ms:293us] vietnamese: other pragma vm:unsafe:no-bounds-checks
    mean: 1.14 ± 0.30 ms, median: 1.00 ± 0.22 ms
    █▉▃▁___▁_▁ sample size: 60
  
  [275ms:018us] vietnamese: other all pragmas
    mean: 1.089 ± 0.31 ms, median: 0.94 ± 0.23 ms
    ▉▄▁______ sample size: 60
  
  [350ms:329us] hindi: dart native
    mean: 2.29 ± 0.35 ms, median: 2.24 ± 0.34 ms
    ▇▆▉▁▁______ sample size: 59
  
  [283ms:412us] hindi: other
    mean: 1.24 ± 0.47 ms, median: 0.95 ± 0.74 ms
    ▉▁▅___ sample size: 60
  
  [292ms:260us] hindi: other pragma vm:unsafe:no-interrupts
    mean: 1.33 ± 0.57 ms, median: 0.98 ± 0.92 ms
    ▉▁▃▁ sample size: 60
  
  [277ms:434us] hindi: other pragma vm:unsafe:no-bounds-checks
    mean: 1.15 ± 0.38 ms, median: 0.91 ± 0.73 ms
    ▉_▂▁ sample size: 60
  
  [286ms:956us] hindi: other all pragmas
    mean: 1.29 ± 0.61 ms, median: 0.97 ± 0.79 ms
    ▉▂▂▁___ sample size: 60
  
  [414ms:356us] russian: dart native
    mean: 3.34 ± 0.43 ms, median: 3.091 ± 0.66 ms
    ▉▃▃▂_ sample size: 58
  
  [298ms:881us] russian: other
    mean: 1.45 ± 0.39 ms, median: 1.24 ± 0.33 ms
    ▉▂▂__▁___ sample size: 60
  
  [307ms:213us] russian: other pragma vm:unsafe:no-interrupts
    mean: 1.57 ± 0.60 ms, median: 1.28 ± 0.59 ms
    ▉▂_▂________ sample size: 60
  
  [297ms:259us] russian: other pragma vm:unsafe:no-bounds-checks
    mean: 1.45 ± 0.36 ms, median: 1.25 ± 0.34 ms
    ▉▄▂_▁▂_ sample size: 60
  
  [291ms:028us] russian: other all pragmas
    mean: 1.36 ± 0.35 ms, median: 1.15 ± 0.29 ms
    ▉▂▁__▂▁ sample size: 60
  
  [412ms:932us] french: dart native
    mean: 3.27 ± 0.46 ms, median: 3.16 ± 0.85 ms
    ▉▂▆__ sample size: 58
  
  [315ms:620us] french: other
    mean: 1.74 ± 0.48 ms, median: 1.62 ± 0.81 ms
    ▉_█▁_ sample size: 60
  
  [310ms:688us] french: other pragma vm:unsafe:no-interrupts
    mean: 1.65 ± 0.42 ms, median: 1.36 ± 0.78 ms
    ▉▁▅_ sample size: 59
  
  [334ms:061us] french: other pragma vm:unsafe:no-bounds-checks
    mean: 2.057 ± 0.79 ms, median: 1.73 ± 1.35 ms
    ▉▄▃▂_ sample size: 60
  
  [298ms:844us] french: other all pragmas
    mean: 1.47 ± 0.41 ms, median: 1.20 ± 0.75 ms
    ▉▁▅_ sample size: 60
  
  [243ms:313us] emoji: dart native
    mean: 6.93 ± 1.28 us, median: 6.60 ± 0.41 us
    ▅▉▅▂_▁________________________________ sample size: 45 (averaged over 130 runs)
  
  [240ms:733us] emoji: other
    mean: 2.84 ± 0.12 us, median: 2.81 ± 0.11 us
    ▂▅▉▂▂▁▁▁_______ sample size: 78 (averaged over 176 runs)
  
  [240ms:794us] emoji: other pragma vm:unsafe:no-interrupts
    mean: 2.85 ± 0.13 us, median: 2.81 ± 0.14 us
    ▅█▉▃▁▂▁__ sample size: 78 (averaged over 176 runs)
  
  [240ms:802us] emoji: other pragma vm:unsafe:no-bounds-checks
    mean: 2.93 ± 0.29 us, median: 2.87 ± 0.19 us
    ▆█▉▃▂_______________ sample size: 78 (averaged over 172 runs)
  
  [240ms:825us] emoji: other all pragmas
    mean: 2.93 ± 0.21 us, median: 2.85 ± 0.16 us
    ▁▉▄▃▁____________ sample size: 78 (averaged over 172 runs)
  
  [385ms:974us] english: dart native
    mean: 2.81 ± 0.43 ms, median: 2.77 ± 0.86 ms
    ▉▁█_ sample size: 58
  
  [300ms:044us] english: other
    mean: 1.43 ± 0.65 ms, median: 1.17 ± 0.46 ms
    ▉▆▃▂____________ sample size: 60
  
  [292ms:346us] english: other pragma vm:unsafe:no-interrupts
    mean: 1.38 ± 0.48 ms, median: 1.15 ± 0.52 ms
    ▉▄▂▁_____ sample size: 60
  
  [285ms:166us] english: other pragma vm:unsafe:no-bounds-checks
    mean: 1.26 ± 0.38 ms, median: 1.044 ± 0.30 ms
    ▉▂▁__▁▂_ sample size: 60
  
  [286ms:791us] english: other all pragmas
    mean: 1.25 ± 0.39 ms, median: 1.058 ± 0.28 ms
    ▉▆▁___▁_____ sample size: 60
  
  [427ms:094us] thai: dart native
    mean: 3.51 ± 0.51 ms, median: 3.30 ± 0.89 ms
    ▉▃▆▁ sample size: 58
  
  [302ms:405us] thai: other
    mean: 1.54 ± 0.37 ms, median: 1.30 ± 0.77 ms
    ▉▁_▄ sample size: 60
  
  [301ms:488us] thai: other pragma vm:unsafe:no-interrupts
    mean: 1.50 ± 0.38 ms, median: 1.28 ± 0.71 ms
    ▉▁▄_ sample size: 60
  
  [298ms:532us] thai: other pragma vm:unsafe:no-bounds-checks
    mean: 1.48 ± 0.35 ms, median: 1.30 ± 0.34 ms
    ▉▆▂__▄___ sample size: 60
  
  [304ms:015us] thai: other all pragmas
    mean: 1.59 ± 0.51 ms, median: 1.30 ± 0.83 ms
    ▉▁▄____ sample size: 60
  
  [299ms:759us] greek: dart native
    mean: 1.50 ± 0.35 ms, median: 1.29 ± 0.52 ms
    ▉▁▂▂__ sample size: 60
  
  [266ms:523us] greek: other
    mean: 655.40 ± 237.35 us, median: 520.084 ± 285.56 us
    ▉▁▁_▂_ sample size: 91
  
  [266ms:134us] greek: other pragma vm:unsafe:no-interrupts
    mean: 661.98 ± 251.63 us, median: 515.083 ± 368.042 us
    ▉__▂___ sample size: 91
  
  [261ms:252us] greek: other pragma vm:unsafe:no-bounds-checks
    mean: 645.74 ± 246.72 us, median: 509.79 ± 297.50 us
    ▉▁__▁▁_ sample size: 86
  
  [264ms:136us] greek: other all pragmas
    mean: 619.46 ± 211.52 us, median: 503.75 ± 266.79 us
    ▉___▁_ sample size: 93
  
  [333ms:343us] portuguese: dart native
    mean: 2.037 ± 0.44 ms, median: 1.76 ± 0.82 ms
    ▉_▁▃ sample size: 59
  
  [277ms:820us] portuguese: other
    mean: 1.16 ± 0.51 ms, median: 0.87 ± 0.85 ms
    ▉▁▃▁_ sample size: 60
  
  [272ms:628us] portuguese: other pragma vm:unsafe:no-interrupts
    mean: 1.090 ± 0.45 ms, median: 0.81 ± 0.82 ms
    ▉_▃_ sample size: 60
  
  [271ms:228us] portuguese: other pragma vm:unsafe:no-bounds-checks
    mean: 1.076 ± 0.43 ms, median: 0.80 ± 0.84 ms
    ▉_▄_ sample size: 60
  
  [303ms:684us] portuguese: other all pragmas
    mean: 1.60 ± 2.065 ms, median: 0.97 ± 0.83 ms
    ▉▂▂▁_________________________________ sample size: 60
  
  [365ms:527us] hebrew: dart native
    mean: 2.57 ± 2.90 ms, median: 1.54 ± 0.97 ms
    ▉▄▄____________________________ sample size: 59
  
  [251ms:796us] hebrew: other
    mean: 754.19 ± 311.77 us, median: 578.21 ± 522.041 us
    ▉▂▃__ sample size: 60
  
  [265ms:745us] hebrew: other pragma vm:unsafe:no-interrupts
    mean: 657.24 ± 222.31 us, median: 527.042 ± 275.94 us
    ▉▂▁_▂▁ sample size: 91
  
  [266ms:946us] hebrew: other pragma vm:unsafe:no-bounds-checks
    mean: 652.31 ± 224.54 us, median: 529.87 ± 269.71 us
    ▉▃▁_▂▁_ sample size: 93
  
  [267ms:148us] hebrew: other all pragmas
    mean: 659.61 ± 235.71 us, median: 521.88 ± 390.71 us
    ▉__▂_ sample size: 93
  
  [332ms:577us] persan: dart native
    mean: 1.82 ± 1.72 ms, median: 1.11 ± 0.66 ms
    ▉▂▂____________________ sample size: 60
  
  [257ms:307us] persan: other
    mean: 542.42 ± 186.90 us, median: 431.00 ± 247.96 us
    ▉▂▂_▃__ sample size: 97
  
  [262ms:774us] persan: other pragma vm:unsafe:no-interrupts
    mean: 551.87 ± 190.85 us, median: 429.083 ± 237.83 us
    ▉_▃_▃▁_ sample size: 107
  
  [261ms:286us] persan: other pragma vm:unsafe:no-bounds-checks
    mean: 539.54 ± 184.052 us, median: 423.96 ± 230.52 us
    ▉_▄_▂▂__ sample size: 107
  
  [261ms:906us] persan: other all pragmas
    mean: 546.81 ± 190.31 us, median: 442.21 ± 205.083 us
    ▉▁▄_▁▂▁__ sample size: 107
  
  [266ms:520us] korean: dart native
    mean: 702.63 ± 136.34 us, median: 635.88 ± 168.86 us
    ▉▄▁_▁__ sample size: 88
  
  [250ms:407us] korean: other
    mean: 349.17 ± 145.81 us, median: 279.54 ± 48.63 us
    ▅▉▄▁________________________________ sample size: 137
  
  [249ms:757us] korean: other pragma vm:unsafe:no-interrupts
    mean: 335.17 ± 126.58 us, median: 279.21 ± 37.12 us
    ▃▉▆▂____________  21  _____ sample size: 137
  
  [250ms:271us] korean: other pragma vm:unsafe:no-bounds-checks
    mean: 342.38 ± 132.38 us, median: 280.85 ± 46.042 us
    ▅▉▅__________________________ sample size: 138
  
  [250ms:627us] korean: other all pragmas
    mean: 347.99 ± 147.95 us, median: 275.44 ± 33.96 us
    ▂▉▅▂____________  33  _____ sample size: 138
  
  
-------      Summary     -------- 
Total run time: [27s:860ms]
Completed benchmarks: 95.
Completed successfully.
Exiting with code: 0.

```
