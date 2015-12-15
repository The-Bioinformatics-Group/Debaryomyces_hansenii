# Check assemblies

### Create reference indexes from each assembly

	$ bowtie2-build P1206_1001_preliminary_assembly.fasta 1001

		- Repeat with all the assemblies.

### Map reads to its own assembly

	$ bowtie2 -x 1001 -1 1_140716_AH9BY4ADXX_P1260_1001_1.fastq -2 1_140716_AH9BY4ADXX_P1260_1001_2.fastq -S 1001_AHreads_check.sam

	$ bowtie2 -x 1001 -1 8_140619_BC47HDACXX_P1260_1001_1.fastq -2 8_140619_BC47HDACXX_P1260_1001_2.fastq -S 1001_BCreads_check.sam

		- Repeat with both sets of reads of each strain.

### Results -overall alignment rate-

|Assembly	|AH reads	|BC reads	|
|---------------|---------------|---------------|
|1001		|98.25%		|98.13%		|
|1002		|97.87%		|97.54%		|
|1003		|98.42%		|98.30%		|
|1004		|96.19%		|96.59%		|
|1005		|97.70%		|97.57%		|
|1006		|98.26%		|98.12%		|
|1007		|97.99%		|97.83%		|
|1008		|97.52%		|97.23%		|
|1009		|91.33%		|91.26%		|
|1010		|93.66%		|93.53%		|
|1011		|85.94%		|85.46%		|
|1012		|98.09%		|97.92%		|
|1013		|98.22%		|98.15%		|
|1014		|98.10%		|97.88%		|		
|1015		|98.13%		|97.90%		|
|1016		|98.39%		|98.25%		|
|1017		|89.81%		|89.58%		|
|1018		|92.05%		|91.86%		|
|1019		|98.04%		|98.32%		|


#### More in detail

- 1001 AH

```
2462393 reads; of these:
  2462393 (100.00%) were paired; of these:
    509009 (20.67%) aligned concordantly 0 times
    1840116 (74.73%) aligned concordantly exactly 1 time
    113268 (4.60%) aligned concordantly >1 times
    ----
    509009 pairs aligned concordantly 0 times; of these:
      367791 (72.26%) aligned discordantly 1 time
    ----
    141218 pairs aligned 0 times concordantly or discordantly; of these:
      282436 mates make up the pairs; of these:
        86106 (30.49%) aligned 0 times
        41010 (14.52%) aligned exactly 1 time
        155320 (54.99%) aligned >1 times
98.25% overall alignment rate
```

- 1001 BC:

```
3480996 reads; of these:
  3480996 (100.00%) were paired; of these:
    654716 (18.81%) aligned concordantly 0 times
    2662452 (76.49%) aligned concordantly exactly 1 time
    163828 (4.71%) aligned concordantly >1 times
    ----
    654716 pairs aligned concordantly 0 times; of these:
      461304 (70.46%) aligned discordantly 1 time
    ----
    193412 pairs aligned 0 times concordantly or discordantly; of these:
      386824 mates make up the pairs; of these:
        130425 (33.72%) aligned 0 times
        56441 (14.59%) aligned exactly 1 time
        199958 (51.69%) aligned >1 times
98.13% overall alignment rate
```

- 1002 AH:

```
1160378 reads; of these:
  1160378 (100.00%) were paired; of these:
    197268 (17.00%) aligned concordantly 0 times
    933237 (80.43%) aligned concordantly exactly 1 time
    29873 (2.57%) aligned concordantly >1 times
    ----
    197268 pairs aligned concordantly 0 times; of these:
      152924 (77.52%) aligned discordantly 1 time
    ----
    44344 pairs aligned 0 times concordantly or discordantly; of these:
      88688 mates make up the pairs; of these:
        49394 (55.69%) aligned 0 times
        16515 (18.62%) aligned exactly 1 time
        22779 (25.68%) aligned >1 times
97.87% overall alignment rate
```

- 1002 BC:

``` 
1853630 reads; of these:
  1853630 (100.00%) were paired; of these:
    302538 (16.32%) aligned concordantly 0 times
    1502251 (81.04%) aligned concordantly exactly 1 time
    48841 (2.63%) aligned concordantly >1 times
    ----
    302538 pairs aligned concordantly 0 times; of these:
      224861 (74.32%) aligned discordantly 1 time
    ----
    77677 pairs aligned 0 times concordantly or discordantly; of these:
      155354 mates make up the pairs; of these:
        91077 (58.63%) aligned 0 times
        30036 (19.33%) aligned exactly 1 time
        34241 (22.04%) aligned >1 times
97.54% overall alignment rate
```

- 1003 AH:

```
2193546 reads; of these:
  2193546 (100.00%) were paired; of these:
    715892 (32.64%) aligned concordantly 0 times
    1415060 (64.51%) aligned concordantly exactly 1 time
    62594 (2.85%) aligned concordantly >1 times
    ----
    715892 pairs aligned concordantly 0 times; of these:
      603736 (84.33%) aligned discordantly 1 time
    ----
    112156 pairs aligned 0 times concordantly or discordantly; of these:
      224312 mates make up the pairs; of these:
        69431 (30.95%) aligned 0 times
        51644 (23.02%) aligned exactly 1 time
        103237 (46.02%) aligned >1 times
98.42% overall alignment rate
```

- 1003 BC:

```
3349842 reads; of these:
  3349842 (100.00%) were paired; of these:
    1009953 (30.15%) aligned concordantly 0 times
    2240488 (66.88%) aligned concordantly exactly 1 time
    99401 (2.97%) aligned concordantly >1 times
    ----
    1009953 pairs aligned concordantly 0 times; of these:
      844355 (83.60%) aligned discordantly 1 time
    ----
    165598 pairs aligned 0 times concordantly or discordantly; of these:
      331196 mates make up the pairs; of these:
        113633 (34.31%) aligned 0 times
        74092 (22.37%) aligned exactly 1 time
        143471 (43.32%) aligned >1 times
98.30% overall alignment rate
```

- 1004 AH:

```
1558691 reads; of these:
  1558691 (100.00%) were paired; of these:
    681434 (43.72%) aligned concordantly 0 times
    733026 (47.03%) aligned concordantly exactly 1 time
    144231 (9.25%) aligned concordantly >1 times
    ----
    681434 pairs aligned concordantly 0 times; of these:
      320971 (47.10%) aligned discordantly 1 time
    ----
    360463 pairs aligned 0 times concordantly or discordantly; of these:
      720926 mates make up the pairs; of these:
        118905 (16.49%) aligned 0 times
        237679 (32.97%) aligned exactly 1 time
        364342 (50.54%) aligned >1 times
96.19% overall alignment rate
```

- 1004 BC:

```
2449087 reads; of these:
  2449087 (100.00%) were paired; of these:
    1004638 (41.02%) aligned concordantly 0 times
    1204932 (49.20%) aligned concordantly exactly 1 time
    239517 (9.78%) aligned concordantly >1 times
    ----
    1004638 pairs aligned concordantly 0 times; of these:
      475432 (47.32%) aligned discordantly 1 time
    ----
    529206 pairs aligned 0 times concordantly or discordantly; of these:
      1058412 mates make up the pairs; of these:
        166842 (15.76%) aligned 0 times
        348252 (32.90%) aligned exactly 1 time
        543318 (51.33%) aligned >1 times
96.59% overall alignment rate
```

- 1005 AH:

```
2088288 reads; of these:
  2088288 (100.00%) were paired; of these:
    743456 (35.60%) aligned concordantly 0 times
    1288537 (61.70%) aligned concordantly exactly 1 time
    56295 (2.70%) aligned concordantly >1 times
    ----
    743456 pairs aligned concordantly 0 times; of these:
      586532 (78.89%) aligned discordantly 1 time
    ----
    156924 pairs aligned 0 times concordantly or discordantly; of these:
      313848 mates make up the pairs; of these:
        95905 (30.56%) aligned 0 times
        57338 (18.27%) aligned exactly 1 time
        160605 (51.17%) aligned >1 times
97.70% overall alignment rate
```

- 1005 BC:

```
2922955 reads; of these:
  2922955 (100.00%) were paired; of these:
    960173 (32.85%) aligned concordantly 0 times
    1880460 (64.33%) aligned concordantly exactly 1 time
    82322 (2.82%) aligned concordantly >1 times
    ----
    960173 pairs aligned concordantly 0 times; of these:
      749980 (78.11%) aligned discordantly 1 time
    ----
    210193 pairs aligned 0 times concordantly or discordantly; of these:
      420386 mates make up the pairs; of these:
        142095 (33.80%) aligned 0 times
        77609 (18.46%) aligned exactly 1 time
        200682 (47.74%) aligned >1 times
97.57% overall alignment rate
```

- 1006 AH:

```
1929277 reads; of these:
  1929277 (100.00%) were paired; of these:
    645826 (33.48%) aligned concordantly 0 times
    1242002 (64.38%) aligned concordantly exactly 1 time
    41449 (2.15%) aligned concordantly >1 times
    ----
    645826 pairs aligned concordantly 0 times; of these:
      567628 (87.89%) aligned discordantly 1 time
    ----
    78198 pairs aligned 0 times concordantly or discordantly; of these:
      156396 mates make up the pairs; of these:
        67169 (42.95%) aligned 0 times
        37747 (24.14%) aligned exactly 1 time
        51480 (32.92%) aligned >1 times
98.26% overall alignment rate
```

- 1006 BC:

```
2847843 reads; of these:
  2847843 (100.00%) were paired; of these:
    886992 (31.15%) aligned concordantly 0 times
    1897407 (66.63%) aligned concordantly exactly 1 time
    63444 (2.23%) aligned concordantly >1 times
    ----
    886992 pairs aligned concordantly 0 times; of these:
      771917 (87.03%) aligned discordantly 1 time
    ----
    115075 pairs aligned 0 times concordantly or discordantly; of these:
      230150 mates make up the pairs; of these:
        107343 (46.64%) aligned 0 times
        52266 (22.71%) aligned exactly 1 time
        70541 (30.65%) aligned >1 times
98.12% overall alignment rate
```

- 1007 AH:

```
2305984 reads; of these:
  2305984 (100.00%) were paired; of these:
    727162 (31.53%) aligned concordantly 0 times
    1474210 (63.93%) aligned concordantly exactly 1 time
    104612 (4.54%) aligned concordantly >1 times
    ----
    727162 pairs aligned concordantly 0 times; of these:
      546083 (75.10%) aligned discordantly 1 time
    ----
    181079 pairs aligned 0 times concordantly or discordantly; of these:
      362158 mates make up the pairs; of these:
        92737 (25.61%) aligned 0 times
        63691 (17.59%) aligned exactly 1 time
        205730 (56.81%) aligned >1 times
97.99% overall alignment rate
```

- 1007 BC:

```
3473851 reads; of these:
  3473851 (100.00%) were paired; of these:
    1006772 (28.98%) aligned concordantly 0 times
    2302969 (66.29%) aligned concordantly exactly 1 time
    164110 (4.72%) aligned concordantly >1 times
    ----
    1006772 pairs aligned concordantly 0 times; of these:
      750143 (74.51%) aligned discordantly 1 time
    ----
    256629 pairs aligned 0 times concordantly or discordantly; of these:
      513258 mates make up the pairs; of these:
        150482 (29.32%) aligned 0 times
        90567 (17.65%) aligned exactly 1 time
        272209 (53.04%) aligned >1 times
97.83% overall alignment rate
```

- 1008 AH:

```
1312616 reads; of these:
  1312616 (100.00%) were paired; of these:
    355160 (27.06%) aligned concordantly 0 times
    903856 (68.86%) aligned concordantly exactly 1 time
    53600 (4.08%) aligned concordantly >1 times
    ----
    355160 pairs aligned concordantly 0 times; of these:
      278957 (78.54%) aligned discordantly 1 time
    ----
    76203 pairs aligned 0 times concordantly or discordantly; of these:
      152406 mates make up the pairs; of these:
        65214 (42.79%) aligned 0 times
        28119 (18.45%) aligned exactly 1 time
        59073 (38.76%) aligned >1 times
97.52% overall alignment rate
```

- 1008 BC:

```
1940489 reads; of these:
  1940489 (100.00%) were paired; of these:
    490416 (25.27%) aligned concordantly 0 times
    1369351 (70.57%) aligned concordantly exactly 1 time
    80722 (4.16%) aligned concordantly >1 times
    ----
    490416 pairs aligned concordantly 0 times; of these:
      377395 (76.95%) aligned discordantly 1 time
    ----
    113021 pairs aligned 0 times concordantly or discordantly; of these:
      226042 mates make up the pairs; of these:
        107383 (47.51%) aligned 0 times
        40676 (17.99%) aligned exactly 1 time
        77983 (34.50%) aligned >1 times
97.23% overall alignment rate
```

- 1009 AH:

```
1944249 reads; of these:
  1944249 (100.00%) were paired; of these:
    620299 (31.90%) aligned concordantly 0 times
    622214 (32.00%) aligned concordantly exactly 1 time
    701736 (36.09%) aligned concordantly >1 times
    ----
    620299 pairs aligned concordantly 0 times; of these:
      139977 (22.57%) aligned discordantly 1 time
    ----
    480322 pairs aligned 0 times concordantly or discordantly; of these:
      960644 mates make up the pairs; of these:
        337143 (35.10%) aligned 0 times
        149701 (15.58%) aligned exactly 1 time
        473800 (49.32%) aligned >1 times
91.33% overall alignment rate
```

- 1009 BC:

```
2894462 reads; of these:
  2894462 (100.00%) were paired; of these:
    868398 (30.00%) aligned concordantly 0 times
    949543 (32.81%) aligned concordantly exactly 1 time
    1076521 (37.19%) aligned concordantly >1 times
    ----
    868398 pairs aligned concordantly 0 times; of these:
      191121 (22.01%) aligned discordantly 1 time
    ----
    677277 pairs aligned 0 times concordantly or discordantly; of these:
      1354554 mates make up the pairs; of these:
        506056 (37.36%) aligned 0 times
        204759 (15.12%) aligned exactly 1 time
        643739 (47.52%) aligned >1 times
91.26% overall alignment rate
```

- 1010 AH:

```
1319601 reads; of these:
  1319601 (100.00%) were paired; of these:
    508142 (38.51%) aligned concordantly 0 times
    769699 (58.33%) aligned concordantly exactly 1 time
    41760 (3.16%) aligned concordantly >1 times
    ----
    508142 pairs aligned concordantly 0 times; of these:
      378025 (74.39%) aligned discordantly 1 time
    ----
    130117 pairs aligned 0 times concordantly or discordantly; of these:
      260234 mates make up the pairs; of these:
        167216 (64.26%) aligned 0 times
        36154 (13.89%) aligned exactly 1 time
        56864 (21.85%) aligned >1 times
93.66% overall alignment rate
```

- 1010 BC:

```
1909206 reads; of these:
  1909206 (100.00%) were paired; of these:
    693232 (36.31%) aligned concordantly 0 times
    1153616 (60.42%) aligned concordantly exactly 1 time
    62358 (3.27%) aligned concordantly >1 times
    ----
    693232 pairs aligned concordantly 0 times; of these:
      506346 (73.04%) aligned discordantly 1 time
    ----
    186886 pairs aligned 0 times concordantly or discordantly; of these:
      373772 mates make up the pairs; of these:
        247103 (66.11%) aligned 0 times
        51233 (13.71%) aligned exactly 1 time
        75436 (20.18%) aligned >1 times
93.53% overall alignment rate
```

- 1011 AH:

```
768699 reads; of these:
  768699 (100.00%) were paired; of these:
    181777 (23.65%) aligned concordantly 0 times
    306324 (39.85%) aligned concordantly exactly 1 time
    280598 (36.50%) aligned concordantly >1 times
    ----
    181777 pairs aligned concordantly 0 times; of these:
      25487 (14.02%) aligned discordantly 1 time
    ----
    156290 pairs aligned 0 times concordantly or discordantly; of these:
      312580 mates make up the pairs; of these:
        216098 (69.13%) aligned 0 times
        37935 (12.14%) aligned exactly 1 time
        58547 (18.73%) aligned >1 times
85.94% overall alignment rate
```

- 1011 BC:

```
1178421 reads; of these:
  1178421 (100.00%) were paired; of these:
    279960 (23.76%) aligned concordantly 0 times
    467252 (39.65%) aligned concordantly exactly 1 time
    431209 (36.59%) aligned concordantly >1 times
    ----
    279960 pairs aligned concordantly 0 times; of these:
      37845 (13.52%) aligned discordantly 1 time
    ----
    242115 pairs aligned 0 times concordantly or discordantly; of these:
      484230 mates make up the pairs; of these:
        342647 (70.76%) aligned 0 times
        56680 (11.71%) aligned exactly 1 time
        84903 (17.53%) aligned >1 times
85.46% overall alignment rate
```

- 1012 AH:

```
2073205 reads; of these:
  2073205 (100.00%) were paired; of these:
    382097 (18.43%) aligned concordantly 0 times
    1669990 (80.55%) aligned concordantly exactly 1 time
    21118 (1.02%) aligned concordantly >1 times
    ----
    382097 pairs aligned concordantly 0 times; of these:
      317870 (83.19%) aligned discordantly 1 time
    ----
    64227 pairs aligned 0 times concordantly or discordantly; of these:
      128454 mates make up the pairs; of these:
        79201 (61.66%) aligned 0 times
        32795 (25.53%) aligned exactly 1 time
        16458 (12.81%) aligned >1 times
98.09% overall alignment rate
```

- 1012 BC:

```
3224847 reads; of these:
  3224847 (100.00%) were paired; of these:
    560913 (17.39%) aligned concordantly 0 times
    2630925 (81.58%) aligned concordantly exactly 1 time
    33009 (1.02%) aligned concordantly >1 times
    ----
    560913 pairs aligned concordantly 0 times; of these:
      457161 (81.50%) aligned discordantly 1 time
    ----
    103752 pairs aligned 0 times concordantly or discordantly; of these:
      207504 mates make up the pairs; of these:
        134286 (64.71%) aligned 0 times
        48495 (23.37%) aligned exactly 1 time
        24723 (11.91%) aligned >1 times
97.92% overall alignment rate
```

- 1013 AH:

```
1828482 reads; of these:
  1828482 (100.00%) were paired; of these:
    632353 (34.58%) aligned concordantly 0 times
    1144993 (62.62%) aligned concordantly exactly 1 time
    51136 (2.80%) aligned concordantly >1 times
    ----
    632353 pairs aligned concordantly 0 times; of these:
      530340 (83.87%) aligned discordantly 1 time
    ----
    102013 pairs aligned 0 times concordantly or discordantly; of these:
      204026 mates make up the pairs; of these:
        65030 (31.87%) aligned 0 times
        48325 (23.69%) aligned exactly 1 time
        90671 (44.44%) aligned >1 times
98.22% overall alignment rate
```

- 1013 BC:

```
2736996 reads; of these:
  2736996 (100.00%) were paired; of these:
    874860 (31.96%) aligned concordantly 0 times
    1782589 (65.13%) aligned concordantly exactly 1 time
    79547 (2.91%) aligned concordantly >1 times
    ----
    874860 pairs aligned concordantly 0 times; of these:
      729836 (83.42%) aligned discordantly 1 time
    ----
    145024 pairs aligned 0 times concordantly or discordantly; of these:
      290048 mates make up the pairs; of these:
        101132 (34.87%) aligned 0 times
        67474 (23.26%) aligned exactly 1 time
        121442 (41.87%) aligned >1 times
98.15% overall alignment rate
```

- 1014 AH:

```
2206902 reads; of these:
  2206902 (100.00%) were paired; of these:
    542672 (24.59%) aligned concordantly 0 times
    1571536 (71.21%) aligned concordantly exactly 1 time
    92694 (4.20%) aligned concordantly >1 times
    ----
    542672 pairs aligned concordantly 0 times; of these:
      397951 (73.33%) aligned discordantly 1 time
    ----
    144721 pairs aligned 0 times concordantly or discordantly; of these:
      289442 mates make up the pairs; of these:
        83745 (28.93%) aligned 0 times
        58774 (20.31%) aligned exactly 1 time
        146923 (50.76%) aligned >1 times
98.10% overall alignment rate
```

- 1014 BC:

```
3528456 reads; of these:
  3528456 (100.00%) were paired; of these:
    810722 (22.98%) aligned concordantly 0 times
    2564680 (72.69%) aligned concordantly exactly 1 time
    153054 (4.34%) aligned concordantly >1 times
    ----
    810722 pairs aligned concordantly 0 times; of these:
      580168 (71.56%) aligned discordantly 1 time
    ----
    230554 pairs aligned 0 times concordantly or discordantly; of these:
      461108 mates make up the pairs; of these:
        149776 (32.48%) aligned 0 times
        94290 (20.45%) aligned exactly 1 time
        217042 (47.07%) aligned >1 times
97.88% overall alignment rate
```

- 1015 AH:

```
1923464 reads; of these:
  1923464 (100.00%) were paired; of these:
    478768 (24.89%) aligned concordantly 0 times
    1363028 (70.86%) aligned concordantly exactly 1 time
    81668 (4.25%) aligned concordantly >1 times
    ----
    478768 pairs aligned concordantly 0 times; of these:
      366259 (76.50%) aligned discordantly 1 time
    ----
    112509 pairs aligned 0 times concordantly or discordantly; of these:
      225018 mates make up the pairs; of these:
        71834 (31.92%) aligned 0 times
        36024 (16.01%) aligned exactly 1 time
        117160 (52.07%) aligned >1 times
98.13% overall alignment rate
```

- 1015 BC:

```
3181425 reads; of these:
  3181425 (100.00%) were paired; of these:
    738036 (23.20%) aligned concordantly 0 times
    2305696 (72.47%) aligned concordantly exactly 1 time
    137693 (4.33%) aligned concordantly >1 times
    ----
    738036 pairs aligned concordantly 0 times; of these:
      553142 (74.95%) aligned discordantly 1 time
    ----
    184894 pairs aligned 0 times concordantly or discordantly; of these:
      369788 mates make up the pairs; of these:
        133869 (36.20%) aligned 0 times
        61213 (16.55%) aligned exactly 1 time
        174706 (47.24%) aligned >1 times
97.90% overall alignment rate
```

- 1016 AH:

```
2646260 reads; of these:
  2646260 (100.00%) were paired; of these:
    634202 (23.97%) aligned concordantly 0 times
    1941855 (73.38%) aligned concordantly exactly 1 time
    70203 (2.65%) aligned concordantly >1 times
    ----
    634202 pairs aligned concordantly 0 times; of these:
      526790 (83.06%) aligned discordantly 1 time
    ----
    107412 pairs aligned 0 times concordantly or discordantly; of these:
      214824 mates make up the pairs; of these:
        85111 (39.62%) aligned 0 times
        49521 (23.05%) aligned exactly 1 time
        80192 (37.33%) aligned >1 times
98.39% overall alignment rate
```

- 1016 BC:

```
3919163 reads; of these:
  3919163 (100.00%) were paired; of these:
    871971 (22.25%) aligned concordantly 0 times
    2940469 (75.03%) aligned concordantly exactly 1 time
    106723 (2.72%) aligned concordantly >1 times
    ----
    871971 pairs aligned concordantly 0 times; of these:
      712507 (81.71%) aligned discordantly 1 time
    ----
    159464 pairs aligned 0 times concordantly or discordantly; of these:
      318928 mates make up the pairs; of these:
        137127 (43.00%) aligned 0 times
        71647 (22.46%) aligned exactly 1 time
        110154 (34.54%) aligned >1 times
98.25% overall alignment rate
```

- 1017 AH:

```
1889165 reads; of these:
  1889165 (100.00%) were paired; of these:
    407689 (21.58%) aligned concordantly 0 times
    1322765 (70.02%) aligned concordantly exactly 1 time
    158711 (8.40%) aligned concordantly >1 times
    ----
    407689 pairs aligned concordantly 0 times; of these:
      159162 (39.04%) aligned discordantly 1 time
    ----
    248527 pairs aligned 0 times concordantly or discordantly; of these:
      497054 mates make up the pairs; of these:
        385012 (77.46%) aligned 0 times
        57134 (11.49%) aligned exactly 1 time
        54908 (11.05%) aligned >1 times
89.81% overall alignment rate
```

- 1017 BC:

```
2738771 reads; of these:
  2738771 (100.00%) were paired; of these:
    572184 (20.89%) aligned concordantly 0 times
    1933615 (70.60%) aligned concordantly exactly 1 time
    232972 (8.51%) aligned concordantly >1 times
    ----
    572184 pairs aligned concordantly 0 times; of these:
      210291 (36.75%) aligned discordantly 1 time
    ----
    361893 pairs aligned 0 times concordantly or discordantly; of these:
      723786 mates make up the pairs; of these:
        570563 (78.83%) aligned 0 times
        79356 (10.96%) aligned exactly 1 time
        73867 (10.21%) aligned >1 times
89.58% overall alignment rate
```

- 1018 AH:

```
2628541 reads; of these:
  2628541 (100.00%) were paired; of these:
    547946 (20.85%) aligned concordantly 0 times
    1892145 (71.98%) aligned concordantly exactly 1 time
    188450 (7.17%) aligned concordantly >1 times
    ----
    547946 pairs aligned concordantly 0 times; of these:
      269350 (49.16%) aligned discordantly 1 time
    ----
    278596 pairs aligned 0 times concordantly or discordantly; of these:
      557192 mates make up the pairs; of these:
        417817 (74.99%) aligned 0 times
        65900 (11.83%) aligned exactly 1 time
        73475 (13.19%) aligned >1 times
92.05% overall alignment rate
```

- 1018 BC:

```
3662396 reads; of these:
  3662396 (100.00%) were paired; of these:
    733882 (20.04%) aligned concordantly 0 times
    2663669 (72.73%) aligned concordantly exactly 1 time
    264845 (7.23%) aligned concordantly >1 times
    ----
    733882 pairs aligned concordantly 0 times; of these:
      342988 (46.74%) aligned discordantly 1 time
    ----
    390894 pairs aligned 0 times concordantly or discordantly; of these:
      781788 mates make up the pairs; of these:
        596521 (76.30%) aligned 0 times
        90875 (11.62%) aligned exactly 1 time
        94392 (12.07%) aligned >1 times
91.86% overall alignment rate
```

- 1019 AH:

```
2000344 reads; of these:
  2000344 (100.00%) were paired; of these:
    700819 (35.03%) aligned concordantly 0 times
    1262259 (63.10%) aligned concordantly exactly 1 time
    37266 (1.86%) aligned concordantly >1 times
    ----
    700819 pairs aligned concordantly 0 times; of these:
      591539 (84.41%) aligned discordantly 1 time
    ----
    109280 pairs aligned 0 times concordantly or discordantly; of these:
      218560 mates make up the pairs; of these:
        78490 (35.91%) aligned 0 times
        66338 (30.35%) aligned exactly 1 time
        73732 (33.74%) aligned >1 times
98.04% overall alignment rate
```

- 1019 BC:

```
2664496 reads; of these:
  2664496 (100.00%) were paired; of these:
    853629 (32.04%) aligned concordantly 0 times
    1758640 (66.00%) aligned concordantly exactly 1 time
    52227 (1.96%) aligned concordantly >1 times
    ----
    853629 pairs aligned concordantly 0 times; of these:
      730455 (85.57%) aligned discordantly 1 time
    ----
    123174 pairs aligned 0 times concordantly or discordantly; of these:
      246348 mates make up the pairs; of these:
        89572 (36.36%) aligned 0 times
        66009 (26.80%) aligned exactly 1 time
        90767 (36.85%) aligned >1 times
98.32% overall alignment rate
```
