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


##### Reverse sort according to % of identity


##### Compare results with other strains.

- 1019: known to be almost the same as the reference cbs767 

- 1002: A different Debaryomyces hansenii strain

- 1017: Saccharomyces cerevisiae strain


- 1009: One of the two hybrids (1011 too bad data to be used)

		
