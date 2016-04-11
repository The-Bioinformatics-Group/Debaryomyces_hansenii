#!/usr/bin/env bash

#AddOrReplaceReadGroups

#java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/deha_vcalling/Bowtie2/1001_sorted.bam OUTPUT=/data02/merce/deha_vcalling/1001_RG.bam RGID=1001 RGLB=1001 RGPL=illumina RGPU=1001 RGSM=1001

#java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/deha_vcalling/Bowtie2/1002_sorted.bam OUTPUT=/data02/merce/deha_vcalling/1002_RG.bam RGID=1002 RGLB=1002 RGPL=illumina RGPU=1002 RGSM=1002

#java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/deha_vcalling/Bowtie2/1003_sorted.bam OUTPUT=/data02/merce/deha_vcalling/1003_RG.bam RGID=1003 RGLB=1003 RGPL=illumina RGPU=1003 RGSM=1003

#java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/deha_vcalling/Bowtie2/1004_sorted.bam OUTPUT=/data02/merce/deha_vcalling/1004_RG.bam RGID=1004 RGLB=1004 RGPL=illumina RGPU=1004 RGSM=1004

#java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/deha_vcalling/Bowtie2/1005_sorted.bam OUTPUT=/data02/merce/deha_vcalling/1005_RG.bam RGID=1005 RGLB=1005 RGPL=illumina RGPU=1005 RGSM=1005

#java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/deha_vcalling/Bowtie2/1007_sorted.bam OUTPUT=/data02/merce/deha_vcalling/1007_RG.bam RGID=1007 RGLB=1007 RGPL=illumina RGPU=1007 RGSM=1007

#java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/deha_vcalling/Bowtie2/1008_sorted.bam OUTPUT=/data02/merce/deha_vcalling/1008_RG.bam RGID=1008 RGLB=1008 RGPL=illumina RGPU=1008 RGSM=1008

#java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/deha_vcalling/Bowtie2/1013_sorted.bam OUTPUT=/data02/merce/deha_vcalling/1013_RG.bam RGID=1013 RGLB=1013 RGPL=illumina RGPU=1013 RGSM=1013

#java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/deha_vcalling/Bowtie2/1014_sorted.bam OUTPUT=/data02/merce/deha_vcalling/1014_RG.bam RGID=1014 RGLB=1014 RGPL=illumina RGPU=1014 RGSM=1014

#java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/deha_vcalling/Bowtie2/1015_sorted.bam OUTPUT=/data02/merce/deha_vcalling/1015_RG.bam RGID=1015 RGLB=1015 RGPL=illumina RGPU=1015 RGSM=1015

#java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/deha_vcalling/Bowtie2/1016_sorted.bam OUTPUT=/data02/merce/deha_vcalling/1016_RG.bam RGID=1016 RGLB=1016 RGPL=illumina RGPU=1016 RGSM=1016

#java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/deha_vcalling/Bowtie2/1019_sorted.bam OUTPUT=/data02/merce/deha_vcalling/1019_RG.bam RGID=1019 RGLB=1019 RGPL=illumina RGPU=1019 RGSM=1019

#Local realignment BAQ

#samtools calmd -Arb /data02/merce/deha_vcalling/1001_RG.bam /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna > /data02/merce/deha_vcalling/1001_RGBAQ.bam

#samtools calmd -Arb /data02/merce/deha_vcalling/1002_RG.bam /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna > /data02/merce/deha_vcalling/1002_RGBAQ.bam

#samtools calmd -Arb /data02/merce/deha_vcalling/1003_RG.bam /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna > /data02/merce/deha_vcalling/1003_RGBAQ.bam

#samtools calmd -Arb /data02/merce/deha_vcalling/1004_RG.bam /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna > /data02/merce/deha_vcalling/1004_RGBAQ.bam

#samtools calmd -Arb /data02/merce/deha_vcalling/1005_RG.bam /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna > /data02/merce/deha_vcalling/1005_RGBAQ.bam

samtools calmd -Arb /data02/merce/deha_vcalling/1007_RG.bam /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna > /data02/merce/deha_vcalling/1007_RGBAQ.bam

samtools calmd -Arb /data02/merce/deha_vcalling/1008_RG.bam /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna > /data02/merce/deha_vcalling/1008_RGBAQ.bam

samtools calmd -Arb /data02/merce/deha_vcalling/1013_RG.bam /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna > /data02/merce/deha_vcalling/1013_RGBAQ.bam

samtools calmd -Arb /data02/merce/deha_vcalling/1014_RG.bam /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna > /data02/merce/deha_vcalling/1014_RGBAQ.bam

samtools calmd -Arb /data02/merce/deha_vcalling/1015_RG.bam /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna > /data02/merce/deha_vcalling/1015_RGBAQ.bam

samtools calmd -Arb /data02/merce/deha_vcalling/1016_RG.bam /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna > /data02/merce/deha_vcalling/1016_RGBAQ.bam

samtools calmd -Arb /data02/merce/deha_vcalling/1019_RG.bam /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna > /data02/merce/deha_vcalling/1019_RGBAQ.bam

#Index

#samtools index /data02/merce/deha_vcalling/1001_RGBAQ.bam

#samtools index /data02/merce/deha_vcalling/1002_RGBAQ.bam

samtools index /data02/merce/deha_vcalling/1003_RGBAQ.bam

samtools index /data02/merce/deha_vcalling/1004_RGBAQ.bam

samtools index /data02/merce/deha_vcalling/1005_RGBAQ.bam

samtools index /data02/merce/deha_vcalling/1007_RGBAQ.bam

samtools index /data02/merce/deha_vcalling/1008_RGBAQ.bam

samtools index /data02/merce/deha_vcalling/1013_RGBAQ.bam

samtools index /data02/merce/deha_vcalling/1014_RGBAQ.bam

samtools index /data02/merce/deha_vcalling/1015_RGBAQ.bam

samtools index /data02/merce/deha_vcalling/1016_RGBAQ.bam

samtools index /data02/merce/deha_vcalling/1019_RGBAQ.bam

#File with bam paths for Freebayes:

echo -e '/data02/merce/deha_vcalling/1001_RGBAQ.bam\n/data02/merce/deha_vcalling/1002_RGBAQ.bam\n/data02/merce/deha_vcalling/1003_RGBAQ.bam\n/data02/merce/deha_vcalling/1004_RGBAQ.bam\n/data02/merce/deha_vcalling/1005_RGBAQ.bam\n/data02/merce/deha_vcalling/1007_RGBAQ.bam\n/data02/merce/deha_vcalling/1008_RGBAQ.bam\n/data02/merce/deha_vcalling/1013_RGBAQ.bam\n/data02/merce/deha_vcalling/1014_RGBAQ.bam\n/data02/merce/deha_vcalling/1015_RGBAQ.bam\n/data02/merce/deha_vcalling/1016_RGBAQ.bam\n/data02/merce/deha_vcalling/1019_RGBAQ.bam' >> /data02/merce/deha_vcalling/bam.txt

mkdir /data02/merce/deha_vcalling/FB_cohort

mkdir /data02/merce/deha_vcalling/FB_individual

mkdir /data02/merce/deha_vcalling/FB_cohort/no-indels

mkdir /data02/merce/deha_vcalling/FB_individual/no-indels

mkdir /data02/merce/deha_vcalling/VarScan

mkdir /data02/merce/deha_vcalling/VarScan/indels

mkdir /data02/merce/deha_vcalling/VarScan/snp

#Freebayes cohort

freebayes --fasta-reference /home/merce/CBS767/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --bam-list /data02/merce/deha_vcalling/bam.txt \
> /data02/merce/deha_vcalling/FB_cohort/12Deha_FBc.vcf

#Individual Freebayes

freebayes --fasta-reference /home/merce/CBS767/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --bam /data02/merce/deha_vcalling/1001_RGBAQ.bam \
> /data02/merce/deha_vcalling/FB_individual/1001Deha_FBi.vcf

freebayes --fasta-reference /home/merce/CBS767/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --bam /data02/merce/deha_vcalling/1002_RGBAQ.bam \
> /data02/merce/deha_vcalling/FB_individual/1002Deha_FBi.vcf

freebayes --fasta-reference /home/merce/CBS767/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --bam /data02/merce/deha_vcalling/1003_RGBAQ.bam \
> /data02/merce/deha_vcalling/FB_individual/1003Deha_FBi.vcf

freebayes --fasta-reference /home/merce/CBS767/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --bam /data02/merce/deha_vcalling/1004_RGBAQ.bam \
> /data02/merce/deha_vcalling/FB_individual/1004Deha_FBi.vcf

freebayes --fasta-reference /home/merce/CBS767/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --bam /data02/merce/deha_vcalling/1005_RGBAQ.bam \
> /data02/merce/deha_vcalling/FB_individual/1005Deha_FBi.vcf

freebayes --fasta-reference /home/merce/CBS767/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --bam /data02/merce/deha_vcalling/1007_RGBAQ.bam \
> /data02/merce/deha_vcalling/FB_individual/1007Deha_FBi.vcf

freebayes --fasta-reference /home/merce/CBS767/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --bam /data02/merce/deha_vcalling/1008_RGBAQ.bam \
> /data02/merce/deha_vcalling/FB_individual/1008Deha_FBi.vcf

freebayes --fasta-reference /home/merce/CBS767/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --bam /data02/merce/deha_vcalling/1013_RGBAQ.bam \
> /data02/merce/deha_vcalling/FB_individual/1013Deha_FBi.vcf

freebayes --fasta-reference /home/merce/CBS767/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --bam /data02/merce/deha_vcalling/1014_RGBAQ.bam \
> /data02/merce/deha_vcalling/FB_individual/1014Deha_FBi.vcf

freebayes --fasta-reference /home/merce/CBS767/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --bam /data02/merce/deha_vcalling/1015_RGBAQ.bam \
> /data02/merce/deha_vcalling/FB_individual/1015Deha_FBi.vcf

freebayes --fasta-reference /home/merce/CBS767/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --bam /data02/merce/deha_vcalling/1016_RGBAQ.bam \
> /data02/merce/deha_vcalling/FB_individual/1016Deha_FBi.vcf

freebayes --fasta-reference /home/merce/CBS767/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --bam /data02/merce/deha_vcalling/1019_RGBAQ.bam \
> /data02/merce/deha_vcalling/FB_individual/1019Deha_FBi.vcf

#Indel calling and SNP calling separatelly

#samtools mpileup:

samtools mpileup \
-f /home/merce/CBS767/GCA_000006445.2_ASM644v2_genomic.fna \
/data02/merce/deha_vcalling/1001_RGBAQ.bam \
/data02/merce/deha_vcalling/1002_RGBAQ.bam \
/data02/merce/deha_vcalling/1003_RGBAQ.bam \
/data02/merce/deha_vcalling/1004_RGBAQ.bam \
/data02/merce/deha_vcalling/1005_RGBAQ.bam \
/data02/merce/deha_vcalling/1007_RGBAQ.bam \
/data02/merce/deha_vcalling/1008_RGBAQ.bam \
/data02/merce/deha_vcalling/1013_RGBAQ.bam \
/data02/merce/deha_vcalling/1014_RGBAQ.bam \
/data02/merce/deha_vcalling/1015_RGBAQ.bam \
/data02/merce/deha_vcalling/1016_RGBAQ.bam \
/data02/merce/deha_vcalling/1019_RGBAQ.bam \
> /data02/merce/deha_vcalling/12Deha_pileup.mpileup

#VarScan to call indels

java -jar ~/VarScan.v2.3.9.jar mpileup2indel \
--min-reads2 10 /data02/merce/deha_vcalling/12Deha_pileup.mpileup \
> /data02/merce/deha_vcalling/VarScan/indels/12Deha_indels_VS.vcf

#Freebayes cohort

freebayes --fasta-reference /home/merce/CBS767/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --no-indels --bam-list /data02/merce/deha_vcalling/bam.txt \
> /data02/merce/deha_vcalling/FB_cohort/no-indels/12Deha_FBc.vcf

#Individual Freebayes

freebayes --fasta-reference /home/merce/CBS767/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --no-indels --bam /data02/merce/deha_vcalling/1001_RGBAQ.bam \
> /data02/merce/deha_vcalling/FB_individual/no-indels/1001Deha_FBi.vcf

freebayes --fasta-reference /home/merce/CBS767/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --no-indels --bam /data02/merce/deha_vcalling/1002_RGBAQ.bam \
> /data02/merce/deha_vcalling/FB_individual/no-indels/1002Deha_FBi.vcf

freebayes --fasta-reference /home/merce/CBS767/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --no-indels --bam /data02/merce/deha_vcalling/1003_RGBAQ.bam \
> /data02/merce/deha_vcalling/FB_individual/no-indels/1003Deha_FBi.vcf

freebayes --fasta-reference /home/merce/CBS767/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --no-indels --bam /data02/merce/deha_vcalling/1004_RGBAQ.bam \
> /data02/merce/deha_vcalling/FB_individual/no-indels/1004Deha_FBi.vcf

freebayes --fasta-reference /home/merce/CBS767/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --no-indels --bam /data02/merce/deha_vcalling/1005_RGBAQ.bam \
> /data02/merce/deha_vcalling/FB_individual/no-indels/1005Deha_FBi.vcf

freebayes --fasta-reference /home/merce/CBS767/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --no-indels --bam /data02/merce/deha_vcalling/1007_RGBAQ.bam \
> /data02/merce/deha_vcalling/FB_individual/no-indels/1007Deha_FBi.vcf

freebayes --fasta-reference /home/merce/CBS767/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --no-indels --bam /data02/merce/deha_vcalling/1008_RGBAQ.bam \
> /data02/merce/deha_vcalling/FB_individual/no-indels/1008Deha_FBi.vcf

freebayes --fasta-reference /home/merce/CBS767/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --no-indels --bam /data02/merce/deha_vcalling/1013_RGBAQ.bam \
> /data02/merce/deha_vcalling/FB_individual/no-indels/1013Deha_FBi.vcf

freebayes --fasta-reference /home/merce/CBS767/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --no-indels --bam /data02/merce/deha_vcalling/1014_RGBAQ.bam \
> /data02/merce/deha_vcalling/FB_individual/no-indels/1014Deha_FBi.vcf

freebayes --fasta-reference /home/merce/CBS767/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --no-indels --bam /data02/merce/deha_vcalling/1015_RGBAQ.bam \
> /data02/merce/deha_vcalling/FB_individual/no-indels/1015Deha_FBi.vcf

freebayes --fasta-reference /home/merce/CBS767/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --no-indels --bam /data02/merce/deha_vcalling/1016_RGBAQ.bam \
> /data02/merce/deha_vcalling/FB_individual/no-indels/1016Deha_FBi.vcf

freebayes --fasta-reference /home/merce/CBS767/GCA_000006445.2_ASM644v2_genomic.fna \
--ploidy 1 --no-indels --bam /data02/merce/deha_vcalling/1019_RGBAQ.bam \
> /data02/merce/deha_vcalling/FB_individual/no-indels/1019Deha_FBi.vcf

#SNP calling with VarScan

java -jar ~/VarScan.v2.3.9.jar mpileup2snp \
--min-coverage 5 --min-var-freq 0.01 /data02/merce/deha_vcalling/12Deha_pileup.mpileup \
> /data02/merce/deha_vcalling/VarScan/snp/12Deha_snp_VS.vcf
