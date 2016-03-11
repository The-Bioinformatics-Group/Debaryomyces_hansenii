#!/usr/bin/env bash

mkdir /data02/merce/Only_Debaryomyceshansenii/Vcalling3/FB_cohort

mkdir /data02/merce/Only_Debaryomyceshansenii/Vcalling3/FB_individual

mkdir /data02/merce/Only_Debaryomyceshansenii/Vcalling3/FB_cohort/no-indels

mkdir /data02/merce/Only_Debaryomyceshansenii/Vcalling3/FB_individual/no-indels

mkdir /data02/merce/Only_Debaryomyceshansenii/Vcalling3/VarScan

mkdir /data02/merce/Only_Debaryomyceshansenii/Vcalling3/VarScan/indels

mkdir /data02/merce/Only_Debaryomyceshansenii/Vcalling3/VarScan/snp

#Freebayes cohort

freebayes --fasta-reference /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --bam-list /data02/merce/Only_Debaryomyceshansenii/Vcalling3/bam.txt \
> /data02/merce/Only_Debaryomyceshansenii/Vcalling3/FB_cohort/12Deha_FBc.vcf

#Individual Freebayes

freebayes --fasta-reference /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1001_dpRGBAQ.bam \
> /data02/merce/Only_Debaryomyceshansenii/Vcalling3/FB_individual/1001Deha_FBi.vcf

freebayes --fasta-reference /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1002_dpRGBAQ.bam \
> /data02/merce/Only_Debaryomyceshansenii/Vcalling3/FB_individual/1002Deha_FBi.vcf

freebayes --fasta-reference /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1003_dpRGBAQ.bam \
> /data02/merce/Only_Debaryomyceshansenii/Vcalling3/FB_individual/1003Deha_FBi.vcf

freebayes --fasta-reference /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1004_dpRGBAQ.bam \
> /data02/merce/Only_Debaryomyceshansenii/Vcalling3/FB_individual/1004Deha_FBi.vcf

freebayes --fasta-reference /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1005_dpRGBAQ.bam \
> /data02/merce/Only_Debaryomyceshansenii/Vcalling3/FB_individual/1005Deha_FBi.vcf

freebayes --fasta-reference /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1007_dpRGBAQ.bam \
> /data02/merce/Only_Debaryomyceshansenii/Vcalling3/FB_individual/1007Deha_FBi.vcf

freebayes --fasta-reference /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1008_dpRGBAQ.bam \
> /data02/merce/Only_Debaryomyceshansenii/Vcalling3/FB_individual/1008Deha_FBi.vcf

freebayes --fasta-reference /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1013_dpRGBAQ.bam \
> /data02/merce/Only_Debaryomyceshansenii/Vcalling3/FB_individual/1013Deha_FBi.vcf

freebayes --fasta-reference /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1014_dpRGBAQ.bam \
> /data02/merce/Only_Debaryomyceshansenii/Vcalling3/FB_individual/1014Deha_FBi.vcf

freebayes --fasta-reference /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1015_dpRGBAQ.bam \
> /data02/merce/Only_Debaryomyceshansenii/Vcalling3/FB_individual/1015Deha_FBi.vcf

freebayes --fasta-reference /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1016_dpRGBAQ.bam \
> /data02/merce/Only_Debaryomyceshansenii/Vcalling3/FB_individual/1016Deha_FBi.vcf

freebayes --fasta-reference /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1019_dpRGBAQ.bam \
> /data02/merce/Only_Debaryomyceshansenii/Vcalling3/FB_individual/1019Deha_FBi.vcf

#Indel calling and SNP calling separatelly

#samtools mpileup:

samtools mpileup \
-f /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna \
/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1001_dpRGBAQ.bam \
/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1002_dpRGBAQ.bam \
/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1003_dpRGBAQ.bam \
/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1004_dpRGBAQ.bam \
/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1005_dpRGBAQ.bam \
/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1007_dpRGBAQ.bam \
/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1008_dpRGBAQ.bam \
/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1013_dpRGBAQ.bam \
/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1014_dpRGBAQ.bam \
/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1015_dpRGBAQ.bam \
/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1016_dpRGBAQ.bam \
/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1019_dpRGBAQ.bam \
> /data02/merce/Only_Debaryomyceshansenii/Vcalling3/12Deha_pileup.mpileup

#VarScan to call indels

java -jar ~/VarScan.v2.3.9.jar mpileup2indel \
--min-reads2 10 /data02/merce/Only_Debaryomyceshansenii/Vcalling3/12Deha_pileup.mpileup \
> /data02/merce/Only_Debaryomyceshansenii/Vcalling3/VarScan/indels/12Deha_indels_VS.vcf

#Freebayes cohort

freebayes --fasta-reference /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --no-indels --bam-list /data02/merce/Only_Debaryomyceshansenii/Vcalling3/bam.txt \
> /data02/merce/Only_Debaryomyceshansenii/Vcalling3/FB_cohort/no-indels/12Deha_FBc.vcf

#Individual Freebayes

freebayes --fasta-reference /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --no-indels --bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1001_dpRGBAQ.bam \
> /data02/merce/Only_Debaryomyceshansenii/Vcalling3/FB_individual/no-indels/1001Deha_FBi.vcf

freebayes --fasta-reference /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --no-indels --bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1002_dpRGBAQ.bam \
> /data02/merce/Only_Debaryomyceshansenii/Vcalling3/FB_individual/no-indels/1002Deha_FBi.vcf

freebayes --fasta-reference /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --no-indels --bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1003_dpRGBAQ.bam \
> /data02/merce/Only_Debaryomyceshansenii/Vcalling3/FB_individual/no-indels/1003Deha_FBi.vcf

freebayes --fasta-reference /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --no-indels --bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1004_dpRGBAQ.bam \
> /data02/merce/Only_Debaryomyceshansenii/Vcalling3/FB_individual/no-indels/1004Deha_FBi.vcf

freebayes --fasta-reference /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --no-indels --bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1005_dpRGBAQ.bam \
> /data02/merce/Only_Debaryomyceshansenii/Vcalling3/FB_individual/no-indels/1005Deha_FBi.vcf

freebayes --fasta-reference /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --no-indels --bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1007_dpRGBAQ.bam \
> /data02/merce/Only_Debaryomyceshansenii/Vcalling3/FB_individual/no-indels/1007Deha_FBi.vcf

freebayes --fasta-reference /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --no-indels --bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1008_dpRGBAQ.bam \
> /data02/merce/Only_Debaryomyceshansenii/Vcalling3/FB_individual/no-indels/1008Deha_FBi.vcf

freebayes --fasta-reference /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --no-indels --bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1013_dpRGBAQ.bam \
> /data02/merce/Only_Debaryomyceshansenii/Vcalling3/FB_individual/no-indels/1013Deha_FBi.vcf

freebayes --fasta-reference /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --no-indels --bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1014_dpRGBAQ.bam \
> /data02/merce/Only_Debaryomyceshansenii/Vcalling3/FB_individual/no-indels/1014Deha_FBi.vcf

freebayes --fasta-reference /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --no-indels --bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1015_dpRGBAQ.bam \
> /data02/merce/Only_Debaryomyceshansenii/Vcalling3/FB_individual/no-indels/1015Deha_FBi.vcf

freebayes --fasta-reference /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --no-indels --bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1016_dpRGBAQ.bam \
> /data02/merce/Only_Debaryomyceshansenii/Vcalling3/FB_individual/no-indels/1016Deha_FBi.vcf

freebayes --fasta-reference /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --no-indels --bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1019_dpRGBAQ.bam \
> /data02/merce/Only_Debaryomyceshansenii/Vcalling3/FB_individual/no-indels/1019Deha_FBi.vcf

#SNP calling with VarScan

java -jar ~/VarScan.v2.3.9.jar mpileup2snp \
--min-coverage 5 --min-var-freq 0.01 /data02/merce/Only_Debaryomyceshansenii/Vcalling3/12Deha_pileup.mpileup \
> /data02/merce/Only_Debaryomyceshansenii/Vcalling3/VarScan/snp/12Deha_snp_VS.vcf
