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
| 1001 AH 2	|2462393	|2000937 (81.26%)	|461456 (18.74%)	|
| 1001 BC 2	|3480996	|2832253 (81.36%)	|648743 (18.64%)	|
| 1002 AH 1	|1160378	|1140993 (98.33%)	|19385 (1.67%)		|
| 1002 AH 2	|1160378	|1134927 (97.81%)	|25451 (2.19%)		|
| 1002 BC 2	|1853630	|1805406 (97.40%)	|48224 (2.60%)		|
| 1003 AH 1	|2193546	|1817189 (82.84%)	|376357 (17.16%)	|
| 1003 AH 2	|2193546	|1776305 (80.98%)	|417241 (19.02%)	|
| 1003 BC 2	|3349842	|2709763 (80.89%)	|640079 (19.11%)	|
| 1004 AH 1	|1558691	|1433365 (91.96%)	|125326 (8.04%)		|
| 1004 AH 2	|1558691	|1374655 (88.19%)	|184036 (11.81%)	|
| 1004 BC 2	|2449087	|2189404 (89.40%)	|259683 (10.60%)	| 
| 1005 AH 1	|2088288	|2057955 (98.55%)	|30333 (1.45%)		|
| 1005 AH 2	|2088288	|2027995 (97.11%)	|60293 (2.89%)		|
| 1005 BC 2	|2922955	|2835228 (97.00%)	|87727 (3.00%)		|
| 1006 AH 1	|1929277	|335761 (17.40%)	|1593516 (82.60%)	|
| 1006 AH 2	|1929277	|324501 (16.82%)	|1604776 (83.18%)	|
| 1006 BC 2	|2847843	|479112 (16.82%)	|2368731 (83.18%)	|
| 1007 AH 1	|2305984	|2267226 (98.32%)	|38758 (1.68%)		|
| 1007 AH 2	|2305984	|2239638 (97.12%)	|66346 (2.88%)		|
| 1007 BC 2	|3473851	|3372019 (97.07%)	|101832 (2.93%)		|
| 1008 AH 1	|1312616	|1281379 (97.62%)	|31237 (2.38%)		|
| 1008 AH 2	|1312616	|1268340 (96.63%)	|44276 (3.37%)		|
| 1008 BC 2	|1940489	|1873108 (96.53%)	|67381 (3.47%)		|
| 1009 AH 1	|1944249	|1419587 (73.01%)	|524662 (26.99%)	|
| 1009 AH 2	|1944249	|1394897 (71.74%)	|549352 (28.26%)	|
| 1009 BC 2	|2894462	|1873108 (96.53%)	|817442 (28.24%)	|
| 1010 AH 1	|1319601	|189904 (14.39%)	|1129697 (85.61%)	|
| 1010 AH 2	|1319601	|185313 (14.04%)	|1134288 (85.96%)	|
| 1010 BC 2	|1909206	|264627 (71.76%)	|1644579 (86.14%)	|
| 1011 AH 1	|768699		|450133 (58.56%)	|318566 (41.44%)	|
| 1011 AH 2	|768699		|446288 (58.06%)	|322411 (41.94%)	|
| 1011 BC 2	|1178421	|680994 (57.79%)	|497427 (42.21%)	|
| 1012 AH 1	|2073205	|359992 (17.36%)	|1713213 (82.64%)	|
| 1012 AH 2	|2073205	|350775 (16.92%)	|1722430 (83.08%)	|
| 1012 BC 2	|3224847	|544512 (16.88%)	|2680335 (83.12%)	|
| 1013 AH 1	|1828482	|1765439 (96.55%)	|63043 (3.45%)		|
| 1013 AH 2	|1828482	|1740777 (95.20%)	|87705 (4.80%)		|
| 1013 BC 2	|2736996	|2604369 (95.15%)	|132627 (4.85%)		|
| 1014 AH 1	|2206902	|1806751 (81.87%)	|400151 (18.13%)	|
| 1014 AH 2	|2206902	|1780380 (80.67%)	|426522 (19.33%)	|
| 1014 BC 2	|3528456	|2837996 (80.43%)	|690460 (19.57%)	|
| 1015 AH 1	|1923464	|1859416 (96.67%)	|64048 (3.33%)		|
| 1015 AH 2	|1923464	|1844644 (95.90%)	|78820 (4.10%)		|
| 1015 BC 2	|3181425	|3044236 (95.69%)	|137189 (4.31%)		|
| 1016 AH 1	|2646260	|2151919 (81.32%)	|494341 (18.68%)	|
| 1016 AH 2	|2646260	|2117272 (80.01%)	|528988 (19.99%)	|
| 1016 BC 2	|3919163	|3130716 (79.88%)	|788447 (20.12%)	|
| 1017 AH 1	|1889165	|1853424 (98.11%)	|35741 (1.89%)		|
| 1017 AH 2	|1889165	|1828433 (96.79%)	|60732 (3.21%)		|
| 1017 BC 2	|2738771	|2659430 (97.10%)	|79341 (2.90%)		|
| 1018 AH 1	|2628541	|2580100 (98.16%)	|48441 (1.84%)		|
| 1018 AH 2	|2628541	|2552444 (97.10%)	|76097 (2.90%)		|
| 1018 BC 2	|3662396	|3555962 (97.09%)	|106434 (2.91%)		|
| 1019 AH 1	|2000344	|1964810 (98.22%)	|35534 (1.78%)		|
| 1019 AH 2	|2000344	|1915216 (95.74%)	|85128 (4.26%)		|
| 1019 BC 2	|2664496	|2576230 (96.69%)	|88266 (3.31%)		|
	
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
| 1001 AH 1	|82.38%		|0.01%		|0.00%		|0.00%		|0.01%		|17.59%		|78.50%	|0.01%	|0.01%	|	
| 1001 AH 2	|81.22%		|0.01%		|0.00%		|0.00%		|0.01%		|18.74%		|77.38%	|0.01%	|0.01%	|
| 1001 BC 2	|81.33%		|0.01%		|0.00%		|0.00%		|0.02%		|18.64%		|77.53%	|0.01%	|0.02%	|
| 1002 AH 1	|98.31%		|0.01%		|-		|-		|0.01%		|1.97%		|93.71%	|0.01%	|0.01%	|
| 1002 AH 2	|97.78%		|0.00%		|-		|-		|0.01%		|2.19%		|93.20%	|0.01%	|0.01%	|
| 1002 BC 2	|97.37%		|0.00%		|-		|-		|0.02%		|2.60%		|92.82%	|0.01%	|0.02%	|
| 1003 AH 1	|82.81%		|0.02%		|0.00%		|0.00%		|0.01%		|17.16%		|78.91% |0.00%	|0.01%	|
| 1003 AH 2	|80.93%		|0.02%		|0.00%		|0.00%		|0.01%		|19.02%		|77.08%	|0.01%	|0.01%	|
| 1003 BC 2	|80.84%		|0.02%		Â|0.00%		|0.00%		|0.02%		|19.11%		|77.05%	|0.01%	|0.02%	|
| 1004 AH 1	|91.91%		|0.04%		|0.00%		|0.00%		|0.00%		|8.04%		|89.12%	|0.00%	|0.00%	|
| 1004 AH 2	|88.13%		|0.04%		|0.00%		|0.00%		|0.01%		|11.81%		|85.43%	|0.00%	|0.01%	|
| 1004 BC 2	|89.33%		|0.04%		|0.00%		|0.00%		|0.02%		|10.60%		|86.66%	|0.00%	|0.02%	|
| 1005 AH 1	|98.48%		|0.06%		|0.00%		|-		|0.00%		|1.45%		|93.36%	|0.00%	|0.00%	|
| 1005 AH 2	|97.04%		|0.06%		|0.00%		|-		|0.01%		|2.89%		|91.97%	|0.00%	|0.01%	|
| 1005 BC 2	|96.92%		|0.06%		|0.00%		|-		|0.01%		|3.00%		|92.09%	|0.00%	|0.01%	|
| 1006 AH 1	|17.32%		|0.05%		|0.00%		|-		|0.02%		|82.60%		|12.74%	|0.02%	|0.02%	|
| 1006 AH 2	|16.73%		|0.04%		|0.00%		|-		|0.03%		|83.18%		|12.21%	|0.02%	|0.03%	|
| 1006 BC 2	|16.73%		|0.04%		|0.00%		|-		|0.03%		|83.18%		|12.30%	|0.02%	|0.03%	|
| 1007 AH 1	|98.29%		|0.02%		|0.00%		|-		|0.00%		|1.68%		|91.13%	|0.00%	|0.00%	|
| 1007 AH 2	|97.08%		|0.02%		|0.00%		|0.00%		|0.01%		|2.88%		|89.97%	|0.00%	|0.01%	|
| 1007 BC 2	|97.03%		|0.02%		|0.00%		|0.00%		|0.01%		|2.93%		|90.12%	|0.00%	|0.01%	|
| 1008 AH 1	|97.60%		|0.01%		|-		|-		|0.01%		|2.38%		|91.44%	|0.00%	|0.01%	|
| 1008 AH 2	|96.60%		|0.00%		|0.00%		|0.00%		|0.01%		|3.37%		|90.49%	|0.00%	|0.01%	|
| 1008 BC 2	|96.50%		|0.00%		|-		|-		|0.02%		|3.47%		|90.59%	|0.00%	|0.02%	|
| 1009 AH 1	|72.97%		|0.01%		|0.00%		|0.00%		|0.02%		|26.99%		|69.45%	|0.01%	|0.02%	|
| 1009 AH 2	|71.69%		|0.01%		|0.00%		|0.00%		|0.03%		|28.26%		|68.21%	|0.01%	|0.03%	|
| 1009 BC 2	|71.70%		|0.01%		|0.00%		|0.00%		|0.03%		|28.24%		|68.23%	|0.01%	|0.03%	|	
| 1010 AH 1	|14.33%		|0.03%		|0.00%		|0.00%		|0.02%		|85.61%		|9.20%	|0.03%	|0.02%	|
| 1010 AH 2	|13.97%		|0.02%		|0.00%		|0.00%		|0.02%		|85.96%		|8.94%	|0.03%	|0.02%	|
| 1010 BC 2	|13.79%		|0.02%		|0.00%		|0.00%		|0.03%		|86.14%		|8.91%	|0.02%	|0.03%	|
| 1011 AH 1	|58.50%		|0.02%		|0.00%		|0.00%		|0.02%		|41.44%		|53.28%	|0.01%	|0.02%	|
| 1011 AH 2	|58.00%		|0.01%		|0.00%		|0.00%		|0.03%		|41.94%		|52.80%	|0.02%	|0.03%	|
| 1011 BC 2	|57.72%		|0.01%		|0.00%		|0.00%		|0.04%		|42.21%		|52.57%	|0.02%	|0.04%	|
| 1012 AH 1	|17.31%		|0.02%		|0.00%		|-		|0.02%		|82.64%		|12.17%	|0.02%	|0.02%	|
| 1012 AH 2	|16.85%		|0.02%		|0.00%		|0.00%		|0.02%		|83.08%		|11.82%	|0.02%	|0.02%	|
| 1012 BC 2	|16.82%		|0.02%		|0.00%		|0.00%		|0.03%		|83.12%		|11.83%	|0.02%	|0.03%	|
| 1013 AH 1	|96.50%		|0.04%		|0.00%		|0.00%		|0.00%		|3.45%		|90.88%	|0.00%	|0.00%	|
| 1013 AH 2	|95.14%		|0.04%		|0.00%		|0.00%		|0.01%		|4.80%		|89.58%	|0.00%	|0.01%	|
| 1013 BC 2	|95.09%		|0.04%		|0.00%		|0.00%		|0.01%		|4.85%		|89.65%	|0.00%	|0.01%	|
| 1014 AH 1	|81.84%		|0.01%		|0.00%		|0.00%		|0.01%		|18.13%		|78.14%	|0.00%	|0.01%	|
| 1014 AH 2	|80.64%		|0.01%		|0.00%		|-		|0.01%		|19.33%		|76.97%	|0.00%	|0.01%	|
| 1014 BC 2	|80.39%		|0.01%		|0.00%		|-		|0.02%		|19.57%		|76.75%	|0.00%	|0.02%	|
| 1015 AH 1	|96.65%		|0.01%		|-		|-		|0.01%		|3.33%		|90.17%	|0.00%	|0.01%	|
| 1015 AH 2	|95.87%		|0.01%		|0.00%		|0.00%		|0.02%		|4.10%		|89.43%	|0.00%	|0.02%	|
| 1015 BC 2	|95.65%		|0.01%		|0.00%		|0.00%		|0.02%		|4.31%		|89.48%	|0.00%	|0.02%	|
| 1016 AH 1	|81.29%		|0.01%		|0.00%		|0.00%		|0.01%		|18.68%		|76.99%	|0.01%	|0.01%	|
| 1016 AH 2	|79.98%		|0.01%		|0.00%		|-		|0.01%		|19.99%		|75.72%	|0.00%	|0.01%	|
| 1016 BC 2	|79.84%		|0.01%		|0.00%		|0.00%		|0.02%		|20.12%		|75.64%	|0.01%	|0.02%	|
| 1017 AH 1	|98.04%		|0.03%		|0.00%		|-		|0.02%		|1.89%		|0.05%	|93.14%	|0.02%	|
| 1017 AH 2	|96.71%		|0.03%		|0.00%		|0.00%		|0.03%		|3.21%		|0.04%	|91.83%	|0.03%	|
| 1017 BC 2	|97.02%		|0.02%		|0.00%		|0.00%		|0.04%		|2.90%		|0.04%	|92.09%	|0.04%	|
| 1018 AH 1	|98.12%		|0.01%		|-		|-		|0.01%		|1.84%		|0.04%	|94.68%	|0.01%	|
| 1018 AH 2	|97.06%		|0.01%		|0.00%		|-		|0.02%		|2.90%		|0.03%	|93.62%	|0.02%	|
| 1018 BC 2	|97.04%		|0.01%		|0.00%		|-		|0.03%		|2.91%		|0.03%	|93.61%	|0.03%	|
| 1019 AH 1	|98.19%		|0.03%		|0.00%		|-		|0.00%		|1.78%		|95.54%	|0.00%	|0.00%	|		
| 1019 AH 2	|95.70%		|0.03%		|0.00%		|0.00%		|0.01%		|4.26%		|93.10%	|0.00%	|0.01%	|
| 1019 BC 2	|96.64%		|0.03%		|0.00%		|-		|0.01%		|3.31%		|94.04%	|0.00%	|0.01%	|
