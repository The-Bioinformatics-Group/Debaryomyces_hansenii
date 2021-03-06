## Kraken CustomDB

### Database
Creating a Custom kraken database, steps:

1. Download taxonomy from NCBI Taxonomy:

		$ kraken-build --download-taxonomy --db CustomDB

2. Add the genomic libraries that kraken have available to download:

		$ kraken-build --download-library bacteria --db CustomDB
		$ kraken-build --download-library plasmids --db CustomDB
	 	$ kraken-build --download-library viruses --db CustomDB
		$ kraken-build --download-library human --db CustomDB --> Found out that this command wasn't working. Human added manually.

3. Add custom genomic libraries, fungi and human genomic library.

	- Download the RefSeq from NCBI: 
		
			$ wget ftp://ftp.ncbi.nlm.nih.gov/refseq/release/fungi/

			$ wget ftp://ftp.ncbi.nlm.nih.gov/genomes/H_sapiens/Assembled_chromosomes/seq/*.fa.*

	- Add to the database:

		Fungi:

			$ #!/bin/bash

				find fungi_all/ -name '*.fna' -print0 | \
        		
				xargs -0 -I{} -n1 kraken-build --add-to-library {} --db CustomDB

		Human:
		
			$ #!/bin/bash

				find Human/ -name '*.fa' -print0 | \
	
				xargs -0 -I{} -n1 kraken-build --add-to-library {} --db CustomDB	

 

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
| 1002		| 804			| 735 (91.42%)		| 69 (8.58%)		|	
| 1003		| 714			| 517 (72.41%)		| 197 (27.59%)		|
| 1004		| 15474			| 14975 (96.78%)	| 499 (3.22%)		|
| 1005		| 2070			| 1090 (52.66%)		| 980 (47.34%)		|
| 1006		| 593			| 218 (36.76%)		| 375 (63.24%)		|
| 1007		| 1421			| 1162 (81.77%)		| 259 (18.23%)		|
| 1008		| 1024			| 929 (90.72%)		| 95 (9.28%)		|
| 1009		| 1029			| 994 (96.60%)		| 35 (3.40%)		|
| 1010		| 396			| 297 (75.00%)		| 99 (25.00%)		|
| 1011		| 5889			| 5641 (95.79%)		| 248 (4.21%)		|
| 1012		| 454			| 200 (44.05%)		| 254 (55.95%)		|
| 1013		| 1483			| 996 (67.16%)		| 487 (32.84%)		|
| 1014		| 906			| 670 (73.95%)		| 236 (26.05%)		|
| 1015		| 1140			| 1029 (90.26%)		| 111 (9.74%)		|
| 1016		| 723			| 545 (75.38%)		| 178 (24.62%)		|
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

##### Table resume of the reports

| Strain	| Fungi		| Bacteria	| Viruses	| Archaea	| Others	| Unclassified	| Deha	|Sc     |
|---------------|---------------|---------------|---------------|---------------|---------------|---------------|-------|-------|
| 1001		| 80.36%	| 0.48%		| -		| -		| -		| 18.57%	|74.29%	|-	|
| 1002		| 89.18%	| 0.25%		| -		| -		| 0.37%		| 8.58%		|81.59%	|-	|
| 1003		| 70.17%	| 1.26%		| 0.14%		| - 		| -		| 27.59%	|64.85%	|-	|
| 1004		| 96.37%	| 0.25%		| 0.03%		| - 		| 0.01%		| 3.22%		|95.83%	|-	|
| 1005		| 45.51%	| 6.14%		| 0.43%		| -		| 0.05%		| 47.34%	|41.59%	|-	|
| 1006		| 30.19%	| 4.22%		| 0.51%		| -		| -		| 63.24%	|25.80%	|-	|
| 1007		| 79.24%	| 1.69%		| -		| -		| 0.21%		| 18.23%	|73.61%	|-	|
| 1008		| 88.96%	| 0.39%		| -		| -		| 0.10%		| 9.28%		|79.20%	|-	|
| 1009		| 96.60%	| -		| - 		| -		| - 		| 3.40%		|95.43%	|-	|
| 1010		| 73.48%	| 0.51%		| -		| -		| 0.76%		| 25.00%	|66.41%	|-	|
| 1011		| 95.72%	| -		| - 		| 0.02%		| 0.07%		| 4.19%		|95.19%	|00.02%	|
| 1012		| 40.53%	| 0.88%		| - 		| -		| 0.22%		| 55.95%	|33.48%	|00.22%	|
| 1013		| 61.90%	| 3.78%		| 0.40%		| - 		| 0.07%		| 32.84%	|55.02%	|-	|
| 1014		| 72.41%	| 0.33%		| - 		| - 		| 0.11%		| 26.05%	|66.67%	|-	|
| 1015		| 88.51%	| 0.26%		| -		| -		| 0.35%		| 9.74%		|77.82%	|-	|
| 1016		| 73.44%	| 0.69%		| -		| -		| 0.28%		| 24.62%	|65.15%	|-	|
| 1017		| 98.91%	| 0.10%		| - 		| -		| - 		| 0.99%		|00.00%	|98.12%	|
| 1018		| 97.89%	| -		| -		| -		| -		| 2.11%		|00.00%	|97.51%	|
| 1019		| 65.59%	| 3.03%		| 0.20%		| - 		| -		| 30.11%	|61.00%	|00.20%	|

1001 CBS767 reference

1006, 1010 and 1012 Probably not *Debaryomyces hansenii*

1009, 1011 Genome ~double size

1017, 1018 *Saccharomyces cerevisiae*

[Complete table with all the alternative names for every strain](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Work_files/Strains.md)
