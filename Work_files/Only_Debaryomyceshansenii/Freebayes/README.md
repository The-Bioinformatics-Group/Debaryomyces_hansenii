#### Freebayes

Index all bam files from pre-variant calling steps

##### Cohort analysis

	$ freebayes --fasta-reference reference/GCA_000006445.2_ASM644v2_genomic.fna --ploidy 1 --bam-list Deha.txt > Deha_all_snp_indel.vcf


- content of Deha.txt

```
/data02/merce/Only_Debaryomyceshansenii/1001_AH_rmDUP_readGROUP_BAQ.bam
/data02/merce/Only_Debaryomyceshansenii/1001_BC_rmDUP_readGROUP_BAQ.bam
/data02/merce/Only_Debaryomyceshansenii/1002_AH_rmDUP_readGROUP_BAQ.bam
/data02/merce/Only_Debaryomyceshansenii/1002_BC_rmDUP_readGROUP_BAQ.bam
/data02/merce/Only_Debaryomyceshansenii/1003_AH_rmDUP_readGROUP_BAQ.bam
/data02/merce/Only_Debaryomyceshansenii/1003_BC_rmDUP_readGROUP_BAQ.bam
/data02/merce/Only_Debaryomyceshansenii/1004_AH_rmDUP_readGROUP_BAQ.bam
/data02/merce/Only_Debaryomyceshansenii/1004_BC_rmDUP_readGROUP_BAQ.bam
/data02/merce/Only_Debaryomyceshansenii/1005_AH_rmDUP_readGROUP_BAQ.bam
/data02/merce/Only_Debaryomyceshansenii/1005_BC_rmDUP_readGROUP_BAQ.bam
/data02/merce/Only_Debaryomyceshansenii/1007_AH_rmDUP_readGROUP_BAQ.bam
/data02/merce/Only_Debaryomyceshansenii/1007_BC_rmDUP_readGROUP_BAQ.bam
/data02/merce/Only_Debaryomyceshansenii/1008_AH_rmDUP_readGROUP_BAQ.bam
/data02/merce/Only_Debaryomyceshansenii/1008_BC_rmDUP_readGROUP_BAQ.bam
/data02/merce/Only_Debaryomyceshansenii/1013_AH_rmDUP_readGROUP_BAQ.bam
/data02/merce/Only_Debaryomyceshansenii/1013_BC_rmDUP_readGROUP_BAQ.bam
/data02/merce/Only_Debaryomyceshansenii/1014_AH_rmDUP_readGROUP_BAQ.bam
/data02/merce/Only_Debaryomyceshansenii/1014_BC_rmDUP_readGROUP_BAQ.bam
/data02/merce/Only_Debaryomyceshansenii/1015_AH_rmDUP_readGROUP_BAQ.bam
/data02/merce/Only_Debaryomyceshansenii/1015_BC_rmDUP_readGROUP_BAQ.bam
/data02/merce/Only_Debaryomyceshansenii/1016_AH_rmDUP_readGROUP_BAQ.bam
/data02/merce/Only_Debaryomyceshansenii/1016_BC_rmDUP_readGROUP_BAQ.bam
/data02/merce/Only_Debaryomyceshansenii/1019_AH_rmDUP_readGROUP_BAQ.bam
/data02/merce/Only_Debaryomyceshansenii/1019_BC_rmDUP_readGROUP_BAQ.bam
```
