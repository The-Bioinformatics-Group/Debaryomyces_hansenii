# VarScan

First, use of samtools to pileup the bam files of the strains that had better m$
This includes: 1001, 1002, 1003, 1004, 1005, 1007, 1008, 1009, 1010, 1011, 1013$
1006, 1012, 1017 and 1018 left out.

samtools mpileup -f GCA_000006445.2_ASM644v2_genomic.fna 1001_pea_DehaAH_sorted$

## Runing VarScan:
java -jar /usr/local/bin/VarScan.v2.4.0.jar mpileup2cns Deha_goodmaps.mpileup >$

No OPTIONS defined, default values:
- Min coverage: 8
- Min reads2:   2
- Min var freq: 0.2
- Min avg qual: 15
- P-value thresh: 0.01
