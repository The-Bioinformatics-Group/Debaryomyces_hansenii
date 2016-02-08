## VarScan

#### Samtools mpileup

	$ samtools mpileup -f reference/GCA_000006445.2_ASM644v2_genomic.fna 1001_AH_rmDUP_readGROUP_BAQ.bam 1001_BC_rmDUP_readGROUP_BAQ.bam 1002_AH_rmDUP_readGROUP_BAQ.bam 1002_BC_rmDUP_readGROUP_BAQ.bam 1003_AH_rmDUP_readGROUP_BAQ.bam 1003_BC_rmDUP_readGROUP_BAQ.bam 1004_AH_rmDUP_readGROUP_BAQ.bam 1004_BC_rmDUP_readGROUP_BAQ.bam 1005_AH_rmDUP_readGROUP_BAQ.bam 1005_BC_rmDUP_readGROUP_BAQ.bam 1007_AH_rmDUP_readGROUP_BAQ.bam 1007_BC_rmDUP_readGROUP_BAQ.bam 1008_AH_rmDUP_readGROUP_BAQ.bam 1008_BC_rmDUP_readGROUP_BAQ.bam 1013_AH_rmDUP_readGROUP_BAQ.bam 1013_BC_rmDUP_readGROUP_BAQ.bam 1014_AH_rmDUP_readGROUP_BAQ.bam 1014_BC_rmDUP_readGROUP_BAQ.bam 1015_AH_rmDUP_readGROUP_BAQ.bam 1015_BC_rmDUP_readGROUP_BAQ.bam 1016_AH_rmDUP_readGROUP_BAQ.bam 1016_BC_rmDUP_readGROUP_BAQ.bam 1019_AH_rmDUP_readGROUP_BAQ.bam 1019_BC_rmDUP_readGROUP_BAQ.bam > mpileup_Deha.mpileup


Disable BAQ computation:

	$ samtools mpileup -B -f reference/GCA_000006445.2_ASM644v2_genomic.fna 1001_AH_rmDUP_readGROUP_BAQ.bam 1001_BC_rmDUP_readGROUP_BAQ.bam 1002_AH_rmDUP_readGROUP_BAQ.bam 1002_BC_rmDUP_readGROUP_BAQ.bam 1003_AH_rmDUP_readGROUP_BAQ.bam 1003_BC_rmDUP_readGROUP_BAQ.bam 1004_AH_rmDUP_readGROUP_BAQ.bam 1004_BC_rmDUP_readGROUP_BAQ.bam 1005_AH_rmDUP_readGROUP_BAQ.bam 1005_BC_rmDUP_readGROUP_BAQ.bam 1007_AH_rmDUP_readGROUP_BAQ.bam 1007_BC_rmDUP_readGROUP_BAQ.bam 1008_AH_rmDUP_readGROUP_BAQ.bam 1008_BC_rmDUP_readGROUP_BAQ.bam 1013_AH_rmDUP_readGROUP_BAQ.bam 1013_BC_rmDUP_readGROUP_BAQ.bam 1014_AH_rmDUP_readGROUP_BAQ.bam 1014_BC_rmDUP_readGROUP_BAQ.bam 1015_AH_rmDUP_readGROUP_BAQ.bam 1015_BC_rmDUP_readGROUP_BAQ.bam 1016_AH_rmDUP_readGROUP_BAQ.bam 1016_BC_rmDUP_readGROUP_BAQ.bam 1019_AH_rmDUP_readGROUP_BAQ.bam 1019_BC_rmDUP_readGROUP_BAQ.bam > mpileup_Deha_withoutBAQ.mpileup

#### VarScan

	$  java -jar ~/VarScan.v2.3.9.jar mpileup2snp mpileup_Deha.mpileup > varscan_deha_snp_mpileupBAQ.vcf


	$ java -jar ~/VarScan.v2.3.9.jar mpileup2snp mpileup_Deha_withoutBAQ.mpileup > varscan_deha_snp_mpileup.vcf


Â```
Only SNPs will be reported
Warning: No p-value threshold provided, so p-values will not be calculated
Min coverage:	8
Min reads2:	2
Min var freq:	0.2
Min avg qual:	15
P-value thresh:	0.01
```
