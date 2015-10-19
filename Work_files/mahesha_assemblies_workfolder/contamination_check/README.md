# Analysis of contamination of the assemblies

## Kraken

### Database
Standard database build and saved in dna server: `/data01/tomas/kraken_dbs/standardkraken_20151015` using the building command:

	$ kraken-build --standard --db standardkraken_20151015

- Possible to run the process with multiple threads using `--threads NUM`

The database contains NCBI taxonomic information, as well as the complete genomes in RefSeq for the bacterial, archaeal, and viral domains.

### Run classification

Contamination analysis run to the raw reads in fastq format:

	$ kraken --threads 24 --db /data01/tomas/kraken_dbs/standardkraken_20151015 --fasta-input P1260_1001_preliminary_assembly.fasta > tests_kraken/1001_stdkraken.kraken
 
 - Repeat with the rest of the fasta files of the strains (1 to 19).

### Results

General first result, percentaje of contaminated sequences.

- **Classified sequences:** Found in the kraken standard database, sequences matching bacterial, archaeal or viral domains.

- **Unclassified sequences:** Not found in the standard database. Not archaeal, bacterial or viral domain. Before future analysis we could assume that the rest would be sequences of our specie. 

| fasta  | Total sequences | Classified sequences | Unclassified sequences |
|--------|-----------------|----------------------|------------------------| 
| 1001	 |	840        |	69 (8.21%)        |	771 (91.79%)	   |	
| 1002   |  	804        |	80 (9.95%)        |	724 (90.05%)       |
| 1003   |	714 	   |	71 (9.94%)        |	643 (90.06%)       |  	
| 1004   | 	15474      |	305 (1.97%)       |	15169 (98.03%)     |
| 1005   | 	2070       |	194 (9.37%)       | 	1876 (90.63%)      |
| 1006   | 	593        |	88 (14.84%)       |	505 (85.16%)       |
| 1007   |  	1421       |	76 (5.35%)        |	1345 (94.65%)      |
| 1008   |  	1024       |	126 (12.30%)      |	898 (87.70%)       |
| 1009   |  	1029       |	228 (22.16%)      |	801 (77.84%)       |
| 1010   |  	396        |	84 (21.21%)       |	312 (78.79%)       |
| 1011   |  	5889       |	268 (4.55%)       |	5621 (95.45%)      |
| 1012   |  	454        |	74 (16.30%)       |	380 (83.70%)       |
| 1013   |	1483       |	133 (8.97%)       |	1350 (91.03%)      |
| 1014   | 	906        |	88 (9.71%)        |	818 (90.29%)       |
| 1015   |  	1140 	   |	96 (8.42%)        |	1044 (91.58%)      |
| 1016   |  	723 	   |	72 (9.96%)        |	651 (90.04%)	   |
| 1017   |  	1008       |	158 (15.67%)      |	850 (84.33%)       |
| 1018   | 	1326       |	138 (10.41%)      |	1188 (89.59%)      |
| 1019   |  	1023 	   |	89 (8.70%)        |	934 (91.30%)       |

[Complete table with all the alternative names for every strain](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Work_files/Strains.md)

