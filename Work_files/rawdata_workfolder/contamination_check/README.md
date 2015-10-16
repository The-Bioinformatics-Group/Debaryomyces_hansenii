# Analysis of contamination of the sequences

## Kraken

### Database
Standard database build and saved in `/data01/tomas/kraken_dbs/standardkraken_20151015` using the building command:

	$ kraken-build --standard --db standardkraken_20151015

- Possible to run the process with multiple threads using `--threads NUM`

The database contains NCBI taxonomic information, as well as the complete genomes in RefSeq for the bacterial, archaeal, and viral domains.

### Run classification

Contamination analysis run to the raw reads in fastq format:

	$ kraken --threads 24 --db /data01/tomas/kraken_dbs/standardkraken_20151015 --fastq-input 1_140716_AH9BY4ADXX_P1260_1001_1.fastq > tests_kraken/1001_stdkraken_AH1.kraken
 
 - Repeat with all the fastq files (forward and reverse for each one (1, 2), and both sets of every strain (AH, BC))

### Results

General first result, percentaje of contaminated sequences.

- **Classified sequences:** Found in the kraken standard database, sequences matching bacterial, archaeal or viral domains.

- **Unclassified sequences:** Not found in the standard database. Not archaeal, bacterial or viral domain. Before future analysis we could assume that the rest would be sequences of our specie. 

| fastq      | Total sequences | Classified sequences | Unclassified sequences |
|------------|-----------------|----------------------|------------------------| 
| 1001	AH 1 | 	2462393        |	4218 (0.17%)  | 2458175 (99.83%)       |
| 1001	AH 2 |	2462393        | 	4490 (0.18%)  | 2457903 (99.82%)       |
| 1001  BC 1 |
| 1001  BC 2 |
| 1002  AH 1 |	1160378	       |	2457 (0.21%)  |	1157921 (99.79%)       |
| 1002  AH 2 |  1160378        | 	2479 (0.21%)  | 1157899 (99.79%)       |
| 1002  BC 1 |
| 1002  BC 2 |
| 1003  AH 1 |  2193546        |	4473 (0.20%)  | 2189073 (99.80%)       |
| 1003  AH 2 |  2193546        |	4551 (0.21%)  | 2188995 (99.79%)       |
| 1003  BC 1 |
| 1003  BC 2 |
| 1004  AH 1 |  1558691        |	3031 (0.19%)  | 1555660 (99.81%)       |
| 1004  AH 2 |  1558691        |	2975 (0.19%)  | 1555716 (99.81%)       |
| 1004  BC 1 |
| 1004  BC 2 |
| 1005  AH 1 |  2088288        | 	4554 (0.22%)  | 2083734 (99.78%)       |
| 1005  AH 2 |  2088288        |	4600 (0.22%)  | 2083688 (99.78%)       |
| 1005  BC 1 |
| 1005  BC 2 |
| 1006  AH 1 |  1929277        |	4030 (0.21%)  | 1925247 (99.79%)       |
| 1006  AH 2 |  1929277        |	4074 (0.21%)  | 1925203 (99.79%)       |
| 1006  BC 1 |
| 1006  BC 2 |
| 1007  AH 1 |  2305984        |	5389 (0.23%)  | 2300595 (99.77%)       |
| 1007  AH 2 |  2305984        |	5370 (0.23%)  | 2300614 (99.77%)       |
| 1007  BC 1 |
| 1007  BC 2 |
| 1008  AH 1 |  1312616        |	3184 (0.24%)  | 1309432 (99.76%)       |
| 1008  AH 2 |  1312616        |	3037 (0.23%)  | 1309579 (99.77%)       |
| 1008  BC 1 |
| 1008  BC 2 |
| 1009  AH 1 |  1944249        |	3770 (0.19%)  | 1940479 (99.81%)       |
| 1009  AH 2 |  1944249        |	3908 (0.20%)  | 1940341 (99.80%)       |
| 1009  BC 1 |
| 1009  BC 2 |
| 1010  AH 1 |
| 1010  AH 2 |
| 1010  BC 1 |
| 1010  BC 2 |
| 1011  AH 1 |
| 1011  AH 2 |
| 1011  BC 1 |
| 1011  BC 2 |
| 1012  AH 1 |
| 1012  AH 2 |
| 1012  BC 1 |
| 1012  BC 2 |
| 1013  AH 1 |
| 1013  AH 2 |
| 1013  BC 1 |
| 1013  BC 2 |
| 1014  AH 1 |
| 1014  AH 2 |
| 1014  BC 1 |
| 1014  BC 2 |
| 1015  AH 1 |
| 1015  AH 2 |
| 1015  BC 1 |
| 1015  BC 2 |
| 1016  AH 1 |
| 1016  AH 2 |
| 1016  BC 1 |
| 1016  BC 2 |
| 1017  AH 1 |
| 1017  AH 2 |
| 1017  BC 1 |
| 1017  BC 2 |
| 1018  AH 1 |
| 1018  AH 2 |
| 1018  BC 1 |
| 1018  BC 2 |
| 1019  AH 1 |
| 1019  AH 2 |
| 1019  BC 1 |
| 1019  BC 2 |

