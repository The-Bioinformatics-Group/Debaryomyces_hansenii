## Kraken CustomDB

### Database
Creating a Custom kraken database, steps:

1. Download taxonomy from NCBI Taxonomy:

		$ kraken-build --download-taxonomy --db CustomDB

2. Add the genomic libraries that kraken have available to download:

		$ kraken-build --download-library bacteria --db CustomDB
		$ kraken-build --download-library plasmids --db CustomDB
	 	$ kraken-build --download-library viruses --db CustomDB
		$ kraken-build --download-library human --db CustomDB

3. Add custom genomic libraries, in this case, fungi genomic library.

	- Download the RefSeq from NCBI: ftp://ftp.ncbi.nlm.nih.gov/refseq/release/fungi/

	- Add to the database:

			$ kraken-build --add-to-library fungi_all/fungi.1.1.genomic.fna --db CustomDB

				- Repeat with all the fungal genomic libraries. 

4. Build the database:

		$ kraken-build --build --threads 24 --db CustomDB

			- Note: It needs Jellyfish 1. 


### Run classification

	$ kraken --threads 24 --db /data02/merce/kraken_db/CustomDB --fasta-input P1260_1001_preliminary_assembly.fasta > customdb_tests_kraken/1001_cstmkraken.kraken 

#### Results

- **Classified sequences:** Found in the kraken custom database, sequences matching bacterial, archaeal, plasmids, viral, human or fungi domains.

- **Unclassified sequences:** Not found in the custom database.  

| fasta     	| Total sequences 	| Classified sequences 	| Unclassified sequence |
|---------------|-----------------------|-----------------------|-----------------------| 
| 1001       	| 840             	| 684 (81.43%)	      	| 156 (18.57%)	        |
| 1002		| 804			| 733 (91.17%)		| 71 (8.83%)		|	
| 1003		| 714			| 517 (72.41%)		| 197 (27.59%)		|
| 1004		| 15474			| 14974 (96.77%)	| 500 (3.23%)		|
| 1005		| 2070			| 1090 (52.66%)		| 980 (47.34%)		|
| 1006		| 593			| 218 (36.76%)		| 375 (63.24%)		|
| 1007		| 1421			| 1160 (81.63%)		| 261 (18.37%)		|
| 1008		| 1024			| 928 (90.62%)		| 96 (9.38%)		|
| 1009		| 1029			| 994 (96.60%)		| 35 (3.40%)		|
| 1010		| 396			| 294 (74.24%)		| 102 (25.76%)		|
| 1011		| 5889			| 5641 (95.79%)		| 248 (4.21%)		|
| 1012		| 454			| 200 (44.05%)		| 254 (55.95%)		|
| 1013		| 1483			| 995 (67.09%)		| 448 (32.91%)		|
| 1014		| 906			| 669 (73.84%)		| 237 (26.16%)		|
| 1015		| 1140			| 1026 (90.00%)		| 114 (10.00%)		|
| 1016		| 723			| 543 (75.10%)		| 180 (24.90%)		|
| 1017		| 1008			| 998 (99.01%)		| 10 (0.99%)		|
| 1018		| 1326			| 1298 (97.89%)		| 28 (2.11%)		|
| 1019		| 1023			| 715 (69.89%)		| 308 (30.11%)		|
	
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

	$ kraken-translate --db /data02/merce/kraken_db/CustomDB customdb_tests_kraken/1001_cstmkraken.kraken > customdb_tests_kraken/1001_cstmkraken.labels
	
#### Output report

Used to get an idea of the kraken's results across the entire sample.

	$ kraken-report --db /data02/merce/kraken_db/CustomDB customdb_tests_kraken/1001_cstmkraken.kraken > customdb_tests_kraken/1001_cstmkraken.report

The output is tab delimites, with one line per taxon. Fields:

1. Percentage of reads covered by the clade rooted at this taxon
2. Number of reads covered by the clade rooted at this taxon
3. Number of reads assigned directly to this taxon
4. A rank code, indicating (U)nclassified, (D)omain, (K)ingdom, (P)hylum, (C)lass, (O)rder, (F)amily, (G)enus, or (S)pecies. All other ranks are simply '-'.
5. NCBI taxonomy ID 
6. indented scientific name

The scientific names are indented using spaces, according to the tree structure specified by the taxonomy.

| Strain	| Fungi		| Bacteria	| Viruses	| Archaea	| Others	| Unclassified	|
|---------------|---------------|---------------|---------------|---------------|---------------|---------------|
| 1001		| 80.36%	| 0.48%		| -		| -		| -		| 18.57%	|
| 1002		| 89.43%	| 0.25%		| -		| -		| -		| 8.83%		|
| 1003		| 70.17%	| 1.26%		| 0.14%		| - 		| -		| 27.59%	|
| 1004		| 96.37%	| 0.25%		| 0.03%		| - 		| -		| 3.23%		|
| 1005		| 45.56%	| 6.14%		| 0.43%		| -		| -		| 47.34%	|
| 1006		| 30.69%	| 4.22%		| 0.51%		| -		| -		| 63.24%	|
| 1007		| 79.45%	| 1.69%		| -		| -		| -		| 18.37%	|
| 1008		| 88.96%	| 0.39%		| -		| -		| -		| 9.38%		|
| 1009		| 96.60%	| -		| - 		| -		| - 		| 3.40%		|
| 1010		| 73.74%	| 0.51%		| -		| -		| -		| 25.76%	|
| 1011		| 95.77%	| -		| - 		| 0.02%		| -		| 4.21%		|
| 1012		| 40.97%	| 0.88%		| - 		| -		| -		| 55.95%	|
| 1013		| 61.90%	| 3.78%		| 0.40%		| - 		| - 		| 32.91%	|
| 1014		| 72.63%	| 0.33%		| - 		| - 		| - 		| 26.16%	|
| 1015		| 88.68%	| 0.26%		| -		| -		| -		| 10.00%	|
| 1016		| 73.44%	| 0.69%		| -		| -		| -		| 24.90%	|
| 1017		| 98.91%	| 0.10%		| - 		| -		| - 		| 0.99%		|
| 1018		| 97.89%	| -		| -		| -		| -		| 2.11%		|
| 1019		| 65.59%	| 3.03%		| 0.20%		| - 		| -		| 30.11%	|

1001 CBS767 reference

1006, 1010 and 1012 Probably not *Debaryomyces hansenii*

1009, 1011 Genome ~double size

1017, 1018 *Saccharomyces cerevisiae*

[Complete table with all the alternative names for every strain](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Work_files/Strains.md)
