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

			$	find fungi_all/ -name '*.fna' -print0 | \
        		
			$	xargs -0 -I{} -n1 kraken-build --add-to-library {} --db CustomDB

		Human:
		
			$ #!/bin/bash

			$	find Human/ -name '*.fa' -print0 | \
	
        		$	xargs -0 -I{} -n1 kraken-build --add-to-library {} --db CustomDB	 

4. Build the database:

		$ kraken-build --build --threads 24 --db CustomDB

			- Note: It needs Jellyfish 1. 


### Run classification

	$ kraken --threads 24 --db /data02/merce/kraken_db/CustomDB --fastq-input 1_140716_AH9BY4ADXX_P1260_1001_1.fastq > cstm_tests_kraken/1001_AH1_cstmkraken.kraken 

#### Results

- **Classified sequences:** Found in the kraken custom database, sequences matching bacterial, archaeal, plasmids, viral, human or fungi domains.

- **Unclassified sequences:** Not found in the custom database.  

| fastq		|Total sequences| Classified sequences  | Unclassified sequences|
|---------------|---------------|-----------------------|-----------------------| 
| 1001 AH 1	|2462393	|2029147 (82.41%)	|433246 (17.59%)	|

	
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
	
		
