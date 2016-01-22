##### Parse output tables with Tomas Larsson script

Use of a script from Tomas Larsson to keep only hits that are at least 1000 bases long, as we found out that most of the hits where even less than 100 bases.

	$ perl parseBLAST.pl cbs767_06_tab.out -c 1000 > cbs767_06_parse.out

	$ perl parseBLAST.pl cbs767_12_tab.out -c 1000 > cbs767_12_parse.out

	$ perl parseBLAST.pl cbs767_10_tab.out -c 1000 > cbs767_10_parse.out

##### Reverse sort according to % of identity

	$ sort -k 3 -n -r cbs767_06_parse.out > cbs767_06_parseSorted.out

	$ sort -k 3 -n -r cbs767_12_parse.out > cbs767_12_parseSorted.out

	$ sort -k 3 -n -r cbs767_10_parse.out > cbs767_10_parseSorted.out


##### Compare results with other strains.

- 1019: known to be almost the same as the reference cbs767 

		$ blastn -db blastdb_CBS767/GCA_000006445.2_ASM644v2_genomic.fna -query P1260_1019_preliminary_assembly.fasta -outfmt '6' -out blastn_cbs767vsNONDeha/cbs767_19_tab.out

		$ perl parseBLAST.pl cbs767_19_tab.out -c 1000 > cbs767_19_parse.out

		$ sort -k 3 -n -r cbs767_19_parse.out > cbs767_19_parseSorted.out

- 1002: A different Debaryomyces hansenii strain

		$ blastn -db blastdb_CBS767/GCA_000006445.2_ASM644v2_genomic.fna -query P1260_1002_preliminary_assembly.fasta -outfmt '6' -out blastn_cbs767vsNONDeha/cbs767_02_tab.out

		$ perl parseBLAST.pl cbs767_02_tab.out -c 1000 > cbs767_02_parse.out

		$ sort -k 3 -n -r cbs767_02_parse.out > cbs767_02_parseSorted.out

- 1017: Saccharomyces cerevisiae strain

		$ blastn -db blastdb_CBS767/GCA_000006445.2_ASM644v2_genomic.fna -query P1260_1017_preliminary_assembly.fasta -outfmt '6' -out blastn_cbs767vsNONDeha/cbs767_17_tab.out

		$ perl parseBLAST.pl cbs767_17_tab.out -c 1000 > cbs767_17_parse.out

		$ sort -k 3 -n -r cbs767_17_parse.out > cbs767_17_parseSorted.out

- 1009: One of the two hybrids (1011 too bad data to be used)

		$ blastn -db blastdb_CBS767/GCA_000006445.2_ASM644v2_genomic.fna -query P1260_1009_preliminary_assembly.fasta -outfmt '6' -out blastn_cbs767vsNONDeha/cbs767_09_tab.out

		$ perl parseBLAST.pl cbs767_09_tab.out -c 1000 > cbs767_09_parse.out

		$ sort -k 3 -n -r cbs767_09_parse.out > cbs767_09_parseSorted.out
