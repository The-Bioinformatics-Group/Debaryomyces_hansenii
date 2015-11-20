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

	$ kraken --threads 24 --db /data02/merce/kraken_db/CustomDB --fastq-input 1_140716_AH9BY4ADXX_P1260_1001_1.fastq > cstm_tests_kraken/1001_AH1_cstmkraken.kraken 


	- Repeat with all the sequences (AH, BC and forward and reverse)

#### Results

- **Classified sequences:** Found in the kraken custom database, sequences matching bacterial, archaeal, plasmids, viral, human or fungi domains.

- **Unclassified sequences:** Not found in the custom database.  

| fastq		|Total sequences| Classified sequences  | Unclassified sequences|
|---------------|---------------|-----------------------|-----------------------| 
| 1001 AH 1	|2462393	|2029147 (82.41%)	|433246 (17.59%)	|
| 1002 AH 1	|1160378	|1140993 (98.33%)	|19385 (1.67%)		|
| 1003 AH 1	|2193546	|1817189 (82.84%)	|376357 (17.16%)	|
| 1004 AH 1	|1558691	|1433365 (91.96%)	|125326 (8.04%)		|
| 1005 AH 1	|2088288	|2057955 (98.55%)	|30333 (1.45%)		|
| 1006 AH 1	|1929277	|335761 (17.40%)	|1593516 (82.60%)	|
| 1007 AH 1	|2305984	|2267226 (98.32%)	|38758 (1.68%)		|
| 1008 AH 1	|1312616	|1281379 (97.62%)	|31237 (2.38%)		|
| 1009 AH 1	|1944249	|1419587 (73.01%)	|524662 (26.99%)	|
| 1010 AH 1	|1319601	|189904 (14.39%)	|1129697 (85.61%)	|
| 1011 AH 1	|768699		|450133 (58.56%)	|318566 (41.44%)	|
| 1012 AH 1	|2073205	|359992 (17.36%)	|1713213 (82.64%)	|
| 1013 AH 1	|1828482	|1765439 (96.55%)	|63043 (3.45%)		|
| 1014 AH 1	|2206902	|1806751 (81.87%)	|400151 (18.13%)	|
| 1015 AH 1	|1923464	|1859416 (96.67%)	|64048 (3.33%)		|
| 1016 AH 1	|2646260	|2151919 (81.32%)	|494341 (18.68%)	|
| 1017 AH 1	|1889165	|1853424 (98.11%)	|35741 (1.89%)		|
| 1018 AH 1	|2628541	|2580100 (98.16%)	|48441 (1.84%)		|
| 1019 AH 1	|2000344	|1964810 (98.22%)	|35534 (1.78%)		|
	
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

	$ kraken-translate --db /data02/merce/kraken_db/CustomDB cstm_tests_kraken/1001_AH1_cstmkraken.kraken > cstm_tests_kraken/1001_AH1_cstmkraken.labels
	
#### Output report

Used to get an idea of the kraken's results across the entire sample.

	$ kraken-report --db /data02/merce/kraken_db/CustomDB cstm_tests_kraken/1001_AH1_cstmkraken.kraken > cstm_tests_kraken/1001_AH1_cstmkraken.report

The output is tab delimites, with one line per taxon. Fields:

1. Percentage of reads covered by the clade rooted at this taxon
2. Number of reads covered by the clade rooted at this taxon
3. Number of reads assigned directly to this taxon
4. A rank code, indicating (U)nclassified, (D)omain, (K)ingdom, (P)hylum, (C)lass, (O)rder, (F)amily, (G)enus, or (S)pecies. All other ranks are simply '-'.
5. NCBI taxonomy ID 
6. indented scientific name

The scientific names are indented using spaces, according to the tree structure specified by the taxonomy.
	
##### Table resume of the reports

| Strain	| Fungi		| Bacteria	| Viruses	| Archaea	| Others	| Unclassified	| Deha	|Sc     |Human	|
|---------------|---------------|---------------|---------------|---------------|---------------|---------------|-------|-------|-------|		
| 1001 AH 1	|82.38%		|0.01%		|0.00%		|0.00%		|0.01%		|17.59%		|77.62%	|0.01%	|0.01%	|	
| 1002 AH 1	|98.31%		|0.01%		|-		|-		|0.01%		|1.97%		|93.71%	|0.01%	|0.01%	|
| 1003 AH 1	|82.81%		|0.02%		|0.00%		|0.00%		|0.01%		|17.16%		|78.91% |0.00%	|0.01%	|
| 1004 AH 1	|91.91%		|0.04%		|0.00%		|0.00%		|0.00%		|8.04%		|89.12%	|0.00%	|0.00%	|
| 1005 AH 1	|98.48%		|0.06%		|0.00%		|-		|0.00%		|1.45%		|93.36%	|0.00%	|0.00%	|
| 1006 AH 1	|17.32%		|0.05%		|0.00%		|-		|0.02%		|82.60%		|12.74%	|0.02%	|0.02%	|
| 1007 AH 1	|98.29%		|0.02%		|0.00%		|-		|0.00%		|1.68%		|91.13%	|0.00%	|0.00%	|
| 1008 AH 1	|97.60%		|0.01%		|-		|-		|0.01%		|2.38%		|91.44%	|0.00%	|0.01%	|
| 1009 AH 1	|72.97%		|0.01%		|0.00%		|0.00%		|0.02%		|26.99%		|69.45%	|0.01%	|0.02%	|
| 1010 AH 1	|14.33%		|0.03%		|0.00%		|0.00%		|0.02%		|85.61%		|9.20%	|0.03%	|0.02%	|
| 1011 AH 1	|58.50%		|0.02%		|0.00%		|0.00%		|0.02%		|41.44%		|53.28%	|0.01%	|0.02%	|
| 1012 AH 1	|17.31%		|0.02%		|0.00%		|-		|0.02%		|82.64%		|12.17%	|0.02%	|0.02%	|
| 1013 AH 1	|96.50%		|0.04%		|0.00%		|0.00%		|0.00%		|3.45%		|90.88%	|0.00%	|0.00%	|
| 1014 AH 1	|81.84%		|0.01%		|0.00%		|0.00%		|0.01%		|18.13%		|78.14%	|0.00%	|0.01%	|
| 1015 AH 1	|96.65%		|0.01%		|-		|-		|0.01%		|3.33%		|90.17%	|0.00%	|0.01%	|
| 1016 AH 1	|81.29%		|0.01%		|0.00%		|0.00%		|0.01%		|18.68%		|76.99%	|0.01%	|0.01%	|
| 1017 AH 1	|98.04%		|0.03%		|0.00%		|-		|0.02%		|1.89%		|0.05%	|93.14%	|0.02%	|
| 1018 AH 1	|98.12%		|0.01%		|-		|-		|0.01%		|1.84%		|0.04%	|94.68%	|0.01%	|
| 1019 AH 1	|98.19%		|0.03%		|0.00%		|-		|0.00%		|1.78%		|95.54%	|0.00%	|0.00%	|		
