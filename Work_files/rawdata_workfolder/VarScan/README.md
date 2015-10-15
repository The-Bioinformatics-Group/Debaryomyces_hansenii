# VarScan

First, use of samtools to pileup the bam files of the strains that had better mapping (>50% overall alignment rate). 
- Included: 1001, 1002, 1003, 1004, 1005, 1007, 1008, 1009, 1011, 1013, 1014, 1015, 1016, 1019. 
- Left out: 1006, 1010, 1012, 1017 and 1018

### Samtools mpileup
	$ samtools mpileup -f GCA_000006445.2_ASM644v2_genomic.fna 1001_pea_DehaAH_sorted.bam 1001_pea_DehaBC_sorted.bam 1002_pea_DehaAH_sorted.bam 1002_pea_DehaBC_sorted.bam 1003_pea_DehaAH_sorted.bam 1003_pea_DehaBC_sorted.bam 1004_pea_DehaAH_sorted.bam 1004_pea_DehaBC_sorted.bam 1005_pea_DehaAH_sorted.bam 1005_pea_DehaBC_sorted.bam 1007_pea_DehaAH_sorted.bam 1007_pea_DehaBC_sorted.bam 1008_pea_DehaAH_sorted.bam 1008_pea_DehaBC_sorted.bam 1009_pea_DehaAH_sorted.bam 1009_pea_DehaBC_sorted.bam 1011_pea_DehaAH_sorted.bam 1011_pea_DehaBC_sorted.bam 1013_pea_DehaAH_sorted.bam 1013_pea_DehaBC_sorted.bam 1014_pea_DehaAH_sorted.bam 1014_pea_DehaBC_sorted.bam 1015_pea_DehaAH_sorted.bam 1015_pea_DehaBC_sorted.bam 1016_pea_DehaAH_sorted.bam 1016_pea_DehaBC_sorted.bam 1019_pea_DehaAH_sorted.bam 1019_pea_DehaBC_sorted.bam > Deha_goodmaps.mpileup

### Runing VarScan:
	$ java -jar /usr/local/bin/VarScan.v2.4.0.jar mpileup2cns Deha_goodmaps.mpileup > VarScan_mpileup2cns_Deha

No OPTIONS defined, default values:
- Min coverage: 8
- Min reads2:   2
- Min var freq: 0.2
- Min avg qual: 15
- P-value thresh: 0.01
