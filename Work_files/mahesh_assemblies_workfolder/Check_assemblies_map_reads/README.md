# Check assemblies

### Create reference indexes from each assembly

	$ bowtie2-build P1206_1001_preliminary_assembly.fasta 1001

		- Repeat with all the assemblies.

### Map reads to its own assembly

	$ bowtie2 -x 1001 -1 1_140716_AH9BY4ADXX_P1260_1001_1.fastq -2 1_140716_AH9BY4ADXX_P1260_1001_2.fastq -S 1001_AHreads_check.sam

	$ bowtie2 -x 1001 -1 8_140619_BC47HDACXX_P1260_1001_1.fastq -2 8_140619_BC47HDACXX_P1260_1001_2.fastq -S 1001_BCreads_check.sam

		- Repeat with both sets of reads of each strain.

### Results

|Assembly	|AH reads	|BC reads	|
|---------------|---------------|---------------|
|1001		|98.25%		|98.13%		|
|1002		|97.87%		|
|1003		|98.42%		|
|1004		|
|1005		|
|1006		|
|1007		|
|1008		|
|1009		|
|1010		|
|1011		|
|1012		|
|1013		|
|1014		|
|1015		|
|1016		|
|1017		|
|1018		|
|1019		|


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

- 1002 BC

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

- 1004 AH:

- 1004 BC:

- 1005 AH:


- 1005 BC:


- 1006 AH:


- 1006 BC:


- 1007 AH:


- 1007 BC:


- 1008 AH:


- 1008 BC:


- 1009 AH:


- 1009 BC:


- 1010 AH:


- 1010 BC:


- 1011 AH:


- 1011 BC:


- 1012 AH:


- 1012 BC:


- 1013 AH:


- 1013 BC:


- 1014 AH:


- 1014 BC:


- 1015 AH:


- 1015 BC:


- 1016 AH:


- 1016 BC:


- 1017 AH:


- 1017 BC:


- 1018 AH:


- 1018 BC:


- 1019 AH:


- 1019 BC:
