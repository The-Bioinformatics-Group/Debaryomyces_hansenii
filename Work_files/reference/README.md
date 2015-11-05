# Reference CBS767

## Contamination check

### Kraken

#### Standard Database
Standard database build and saved in dna server: `/data01/tomas/kraken_dbs/standardkraken_20151015` using the building command:

	$ kraken-build --standard --db standardkraken_20151015

- Possible to run the process with multiple threads using `--threads NUM`

The database contains NCBI taxonomic information, as well as the complete genomes in RefSeq for the bacterial, archaeal, and viral domains.

#### Run classification

Contamination analysis run to the raw reads in fastq format:

	$ kraken --threads 24 --db /data01/tomas/kraken_dbs/standardkraken_20151015/ --fasta-input GCA_000006445.2_ASM644v2_genomic.fna > CBS767_stdkraken.kraken
 
 - Repeat with the rest of the fasta files of the strains (1 to 19).

##### Results

General first result, percentaje of contaminated sequences.

- **Classified sequences:** Found in the kraken standard database, sequences matching bacterial, archaeal or viral domains.

- **Unclassified sequences:** Not found in the standard database. Not archaeal, bacterial or viral domain. Before future analysis we could assume that the rest would be sequences of our specie.

7 sequences processed

- 7 sequences classified (100%)
- 0 sequences unclassified (0%)

##### Output report

- 28.57% *Xanthomonas campestris*
- 14.29% *Stenotrophomonas maltophilia*
- 14.29% *Alteromonas macleodii*
- 14.29% *Cytophaga hutchinsonii*
- 14.29% *Chlorobium phaeobacteroides*


#### Custom database
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


##### Run classification

	$ kraken --threads 24 --db /data02/merce/kraken_db/CustomDB --fasta-input GCA_000006445.2_ASM644v2_genomic.fna > CBS767_cstmkraken.kraken 

###### Results

- **Classified sequences:** Found in the kraken custom database, sequences matching bacterial, archaeal, plasmids, viral, human or fungi domains.

- **Unclassified sequences:** Not found in the custom database.

7 sequences processed:

- 7 sequences classified (100%)
- 0 sequences unclassified (0%)

###### Output report

		$ kraken-report --db /data02/merce/kraken_db/CustomDB CBS767_cstmkraken.kraken > CBS767_cstmkraken.report

100% *Debaryomyces hansenii*
