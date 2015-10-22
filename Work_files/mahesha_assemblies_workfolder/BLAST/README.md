# BLAST

## Databases

2015-10-22

***Debaryomyces hansenii* db**: Reference CBS767

	$ makeblastdb -in GCA_000006445.2_ASM644v2_genomic.fna -parse_seqids -dbtype nucl

***Saccharomyces cerevisiae* db**: Reference S288c

	$ makeblastdb -in GCF_000146045.2_R64_genomic.fna -parse_seqids -dbtype nucl

**nr db**: Unformatted version downloaded from NCBI.

	$ formatdb -t NCBInrdb20151022 -i nr -o T -p T

## Tests

### Default blastn

Tested in 6 strains (1001 - 1006)

	$ blastn -db blastdb_CBS767/GCA_000006445.2_ASM644v2_genomic.fna -query P1260_1001_preliminary_assembly.fasta -out blastn_firsttest_default_CBS767_S288c/1001_blastn_CBS767.out

	$ blastn -db blastdb_S288c/GCF_000146045.2_R64_genomic.fna -query P1260_1001_preliminary_assembly.fasta -out blastn_firsttest_default_CBS767_S288c/1001_blastn_S288c.out

- Same with each strain.

### Outputfmt

Tested in 8 strains (1001 - 1006, 1017 and 1018)

	$ blastn -outfmt '7 std qlen slen' -db blastdb_CBS767/GCA_000006445.2_ASM644v2_genomic.fna -query P1260_1001_preliminary_assembly.fasta -out blastn_secondtest_outfmt_7_std_qlen_slen_CBS767_S288c/1001_blastnCBS767_outfmt7stdqlenslen.out

	$ blastn -outfmt '7 std qlen slen' -db blastdb_S288c/GCF_000146045.2_R64_genomic.fna -query P1260_1001_preliminary_assembly.fasta -out blastn_secondtest_outfmt_7_std_qlen_slen_CBS767_S288c/1001_blastnS288c_outfmt7stdqlenslen.out

- Same with each strain.
