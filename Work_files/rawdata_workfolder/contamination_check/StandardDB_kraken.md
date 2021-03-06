## Kraken StandardDB

### Database
Standard database build and saved in `/data01/tomas/kraken_dbs/standardkraken_20151015` using the building command:

	$ kraken-build --standard --db standardkraken_20151015

- Possible to run the process with multiple threads using `--threads NUM`

The database contains NCBI taxonomic information, as well as the complete genomes in RefSeq for the bacterial, archaeal, and viral domains.

### Run classification

Contamination analysis run to the raw reads in fastq format:

	$ kraken --threads 24 --db /data01/tomas/kraken_dbs/standardkraken_20151015 --fastq-input 1_140716_AH9BY4ADXX_P1260_1001_1.fastq > tests_kraken/1001_stdkraken_AH1.kraken
 
 - Repeat with all the fastq files (forward and reverse for each one (1, 2), and both sets of every strain (AH, BC))

#### Results

General first result, percentaje of contaminated sequences.

- **Classified sequences:** Found in the kraken standard database, sequences matching bacterial, archaeal or viral domains.

- **Unclassified sequences:** Not found in the standard database. Not archaeal, bacterial or viral domain. Before future analysis we could assume that the rest would be sequences of our specie. 

| fastq      | Total sequences | Classified sequences | Unclassified sequences |
|------------|-----------------|----------------------|------------------------| 
| 1001	AH 1 | 	2462393        |	4218 (0.17%)  | 2458175 (99.83%)       |
| 1001	AH 2 |	2462393        | 	4490 (0.18%)  | 2457903 (99.82%)       |
| 1001  BC 1 |  3480996        |	6040 (0.17%)  | 3474956 (99.83%)       |
| 1001  BC 2 |  3480996        |	6252 (0.18%)  | 3474744 (99.82%)       |
| 1002  AH 1 |	1160378	       |	2457 (0.21%)  |	1157921 (99.79%)       |
| 1002  AH 2 |  1160378        | 	2479 (0.21%)  | 1157899 (99.79%)       |
| 1002  BC 1 |  1853630        |	3816 (0.21%)  | 1849814 (99.79%)       |
| 1002  BC 2 |  1853630        |	3927 (0.21%)  | 1849703 (99.79%)       |
| 1003  AH 1 |  2193546        |	4473 (0.20%)  | 2189073 (99.80%)       |
| 1003  AH 2 |  2193546        |	4551 (0.21%)  | 2188995 (99.79%)       |
| 1003  BC 1 |  3349842        |	6988 (0.21%)  | 3342854 (99.79%)       |
| 1003  BC 2 |  3349842        |	6964 (0.21%)  | 3342878 (99.79%)       |
| 1004  AH 1 |  1558691        |	3031 (0.19%)  | 1555660 (99.81%)       |
| 1004  AH 2 |  1558691        |	2975 (0.19%)  | 1555716 (99.81%)       |
| 1004  BC 1 |  2449087        |	4880 (0.20%)  | 2444207 (99.80%)       |
| 1004  BC 2 |  2449087        |	4581 (0.19%)  | 2444506 (99.81%)       |
| 1005  AH 1 |  2088288        | 	4554 (0.22%)  | 2083734 (99.78%)       |
| 1005  AH 2 |  2088288        |	4600 (0.22%)  | 2083688 (99.78%)       |
| 1005  BC 1 |  2922955        |	6602 (0.23%)  | 2916353 (99.77%)       |
| 1005  BC 2 |  2922955        |	6244 (0.21%)  | 2916711 (99.79%)       |
| 1006  AH 1 |  1929277        |	4030 (0.21%)  | 1925247 (99.79%)       |
| 1006  AH 2 |  1929277        |	4074 (0.21%)  | 1925203 (99.79%)       |
| 1006  BC 1 |  2847843        |	5991 (0.21%)  | 2841852 (99.79%)       |
| 1006  BC 2 |  2847843        |	5937 (0.21%)  | 2841906 (99.79%)       |
| 1007  AH 1 |  2305984        |	5389 (0.23%)  | 2300595 (99.77%)       |
| 1007  AH 2 |  2305984        |	5370 (0.23%)  | 2300614 (99.77%)       |
| 1007  BC 1 |  3473851        |	8250 (0.24%)  | 3465601 (99.76%)       |
| 1007  BC 2 |  3473851        |	8072 (0.23%)  | 3465779 (99.77%)       |
| 1008  AH 1 |  1312616        |	3184 (0.24%)  | 1309432 (99.76%)       |
| 1008  AH 2 |  1312616        |	3037 (0.23%)  | 1309579 (99.77%)       |
| 1008  BC 1 |  1940489        |	4563 (0.24%)  | 1935926 (99.76%)       |
| 1008  BC 2 |  1940489        |	4432 (0.23%)  | 1936057 (99.77%)       |
| 1009  AH 1 |  1944249        |	3770 (0.19%)  | 1940479 (99.81%)       |
| 1009  AH 2 |  1944249        |	3908 (0.20%)  | 1940341 (99.80%)       |
| 1009  BC 1 |  2894462        |	5777 (0.20%)  | 2888685 (99.80%)       |
| 1009  BC 2 |  2894462        |	5932 (0.20%)  | 2888530 (99.80%)       |
| 1010  AH 1 |  1319601        | 	2676 (0.20%)  | 1316925 (99.80%)       |
| 1010  AH 2 |  1319601        |	2714 (0.21%)  | 1316887 (99.79%)       |
| 1010  BC 1 |  1909206        |	3707 (0.19%)  | 1905499 (99.81%)       |
| 1010  BC 2 |  1909206        |	3663 (0.19%)  | 1905543 (99.81%)       |
| 1011  AH 1 |  768699         |	1806 (0.23%)  | 766893 (99.77%)        |  
| 1011  AH 2 |  768699         |	1853 (0.24%)  | 766846 (99.76%)        |
| 1011  BC 1 |  1178421        |	2840 (0.24%)  | 1175581 (99.76%)       |
| 1011  BC 2 |  1178421        |	2867 (0.24%)  | 1175554 (99.76%)       |
| 1012  AH 1 |  2073205        |	4299 (0.21%)  | 2068906 (99.79%)       |
| 1012  AH 2 |  2073205        |	4274 (0.21%)  | 2068931 (99.79%)       |
| 1012  BC 1 |  3224847        |	6586 (0.20%)  | 3218261 (99.80%)       |
| 1012  BC 2 |  3224847        |	6744 (0.21%)  | 3218103 (99.79%)       |
| 1013  AH 1 |  1828482        |        4889 (0.27%)  | 1823593 (99.73%)       |
| 1013  AH 2 |  1828482        |	4751 (0.26%)  | 1823731 (99.74%)       |
| 1013  BC 1 |  2736996        |	7244 (0.26%)  | 2729752 (99.74%)       |
| 1013  BC 2 |  2736996        |	7079 (0.26%)  | 2729917 (99.74%)       |
| 1014  AH 1 |  2206902        |	4290 (0.19%)  | 2202612 (99.81%)       |
| 1014  AH 2 |  2206902        |	4180 (0.19%)  | 2202722 (99.81%)       |
| 1014  BC 1 |  3528456        |	6791 (0.19%)  | 3521665 (99.81%)       |
| 1014  BC 2 |  3528456        |	6712 (0.19%)  | 3521744 (99.81%)       |
| 1015  AH 1 |  1923464        |	4333 (0.23%)  | 1919131 (99.77%)       |
| 1015  AH 2 |  1923464        |	4365 (0.23%)  | 1919099 (99.77%)       |
| 1015  BC 1 |  3181425        |	7000 (0.22%)  | 3174425 (99.78%)       |
| 1015  BC 2 |  3181425        |	7160 (0.23%)  | 3174265 (99.77%)       |
| 1016  AH 1 |  2646260        |        5434 (0.21%)  | 2640826 (99.79%)       |
| 1016  AH 2 |  2646260        |	5487 (0.21%)  | 2640773 (99.79%)       |
| 1016  BC 1 |  3919163        |	8065 (0.21%)  | 3911098 (99.79%)       |
| 1016  BC 2 |  3919163        |	7991 (0.20%)  | 3911172 (99.80%)       |
| 1017  AH 1 |  1889165        |	8730 (0.46%)  | 1880435 (99.54%)       |
| 1017  AH 2 |  1889165        |	8552 (0.45%)  | 1880613 (99.55%)       |
| 1017  BC 1 |  2738771        |	13410 (0.49%) |	2725361 (99.51%)       |
| 1017  BC 2 |  2738771        |	13166 (0.48%) | 2725605 (99.52%)       |
| 1018  AH 1 |  2628541        |	8423 (0.32%)  | 2620118 (99.68%)       |
| 1018  AH 2 |  2628541        |	8583 (0.33%)  | 2619958 (99.67%)       |
| 1018  BC 1 |  3662396        |	12651 (0.35%) | 3649745 (99.65%)       |
| 1018  BC 2 |  3662396        |	12665 (0.35%) |	3649731 (99.65%)       |
| 1019  AH 1 |  2000344        |	3714 (0.19%)  | 1996630 (99.81%)       |
| 1019  AH 2 |  2000344        |	3698 (0.18%)  | 1996646 (99.82%)       |
| 1019  BC 1 |  2664496        |	5139 (0.19%)  | 2659357 (99.81%)       |
| 1019  BC 2 |  2664496        |	5031 (0.19%)  | 2659465 (99.81%)       |

[Complete table with all the alternative names for every strain](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Work_files/Strains.md)

### Output

#### Output format

Each sequence classified by Kraken results in a single line of output. Output lines contain five tab-delimited fields; from left to right, they are:

1. "C"/"U": one letter code indicating that the sequence was either classified or unclassified.
2. The sequence ID, obtained from the FASTA/FASTQ header.
3. The taxonomy ID Kraken used to label the sequence; this is 0 if the sequence is unclassified.
4. The length of the sequence in bp.
5. A space-delimited list indicating the LCA mapping of each k-mer in the sequence. For example, "562:13 561:4 A:31 0:1 562:3" would indicate that:
	- the first 13 k-mers mapped to taxonomy ID #562
	- the next 4 k-mers mapped to taxonomy ID #561
	- the next 31 k-mers contained an ambiguous nucleotide
	- the next k-mer was not in the database
	- the last 3 k-mers mapped to taxonomy ID #562

#### Output translation

It only reports classified sequences, the output format generated is a text file with two tab-delimited columns and one line for each sequence. The first column is the sequence ID of the classified sequences, and the second column contains the taxonomy of the sequence. Example: `SEQ1  root;cellular organisms;Bacteria;Proteobacteria;Gammaproteobacteria;Enterobacteriales;Enterobacteriaceae;Escherichia;Escherichia coli`

	$ kraken-translate --db /data01/tomas/kraken_dbs/standardkraken_20151015 1001_stdkraken_AH1.kraken > 1001_stdkraken_AH1.labels

- Repeat with all the kraken outputs.

#### Output report

Used to get an idea of the kraken's results across the entire sample.

The output is tab delimites, with one line per taxon. Fields:

1. Percentage of reads covered by the clade rooted at this taxon
2. Number of reads covered by the clade rooted at this taxon
3. Number of reads assigned directly to this taxon
4. A rank code, indicating (U)nclassified, (D)omain, (K)ingdom, (P)hylum, (C)lass, (O)rder, (F)amily, (G)enus, or (S)pecies. All other ranks are simply '-'.
5. NCBI taxonomy ID 
6. indented scientific name

The scientific names are indented using spaces, according to the tree structure specified by the taxonomy.
	
	$ kraken-report --db /data01/tomas/kraken_dbs/standardkraken_20151015 1001_stdkraken_AH1.kraken > 1001_stdkraken_AH1.report
	
- Repeat with all the kraken outputs.

