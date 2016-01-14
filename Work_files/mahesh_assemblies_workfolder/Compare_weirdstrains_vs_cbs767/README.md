## Comparing non-Debaryomyces hansenii strains with CBS767

The goal is to find shared regions between those species and Debaryomyces hansenii, that would make them have a similar phenotype. 


#### BLAST

**Database:** *Debaryomyces hansenii* CBS767

        $ makeblastdb -in GCA_000006445.2_ASM644v2_genomic.fna -parse_seqids -dbtype nucl

##### Blastn

- 1006

		$ blastn -db blastdb_CBS767/GCA_000006445.2_ASM644v2_genomic.fna -query P1260_1006_preliminary_assembly.fasta -outfmt '6' -out blastn_cbs767vsNONDeha/cbs767_06_tab.out

- 1012

		$ blastn -db blastdb_CBS767/GCA_000006445.2_ASM644v2_genomic.fna -query P1260_1012_preliminary_assembly.fasta -outfmt '6' -out blastn_cbs767vsNONDeha/cbs767_12_tab.out

- 1010

		$ blastn -db blastdb_CBS767/GCA_000006445.2_ASM644v2_genomic.fna -query P1260_1010_preliminary_assembly.fasta -outfmt '6' -out blastn_cbs767vsNONDeha/cbs767_10_tab.out


##### Parse output tables

Use of a script from Tomas Larsson to keep only hits that are at least 1000 bases long, as we found out that most of the hits where even less than 100 bases.

	$ perl parseBLAST.pl cbs767_06_tab.out -c 1000 > cbs767_06_parse.out

	$ perl parseBLAST.pl cbs767_12_tab.out -c 1000 > cbs767_12_parse.out

	$ perl parseBLAST.pl cbs767_10_tab.out -c 1000 > cbs767_10_parse.out

##### Reverse sort according to % of identity

	$ sort -k 3 -n -r cbs767_06_parse.out > cbs767_06_parseSorted.out

	$ sort -k 3 -n -r cbs767_12_parse.out > cbs767_12_parseSorted.out

	$ sort -k 3 -n -r cbs767_10_parse.out > cbs767_10_parseSorted.out


