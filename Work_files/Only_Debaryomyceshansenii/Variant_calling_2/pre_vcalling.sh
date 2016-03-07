#!/usr/bin/env bash

#Merge bam files, remove duplicates already done before that:

#samtools merge -nr /data02/merce/Only_Debaryomyceshansenii/Vcalling2/1001.bam /data02/merce/Only_Debaryomyceshansenii/1001_AH_rmDUP.bam /data02/merce/Only_Debaryomyceshansenii/1001_BC_rmDUP.bam

samtools merge -nr /data02/merce/Only_Debaryomyceshansenii/Vcalling2/1002.bam /data02/merce/Only_Debaryomyceshansenii/1002_AH_rmDUP.bam /data02/merce/Only_Debaryomyceshansenii/1002_BC_rmDUP.bam

samtools merge -nr /data02/merce/Only_Debaryomyceshansenii/Vcalling2/1003.bam /data02/merce/Only_Debaryomyceshansenii/1003_AH_rmDUP.bam /data02/merce/Only_Debaryomyceshansenii/1003_BC_rmDUP.bam

samtools merge -nr /data02/merce/Only_Debaryomyceshansenii/Vcalling2/1004.bam /data02/merce/Only_Debaryomyceshansenii/1004_AH_rmDUP.bam /data02/merce/Only_Debaryomyceshansenii/1004_BC_rmDUP.bam

samtools merge -nr /data02/merce/Only_Debaryomyceshansenii/Vcalling2/1005.bam /data02/merce/Only_Debaryomyceshansenii/1005_AH_rmDUP.bam /data02/merce/Only_Debaryomyceshansenii/1005_BC_rmDUP.bam

samtools merge -nr /data02/merce/Only_Debaryomyceshansenii/Vcalling2/1007.bam /data02/merce/Only_Debaryomyceshansenii/1007_AH_rmDUP.bam /data02/merce/Only_Debaryomyceshansenii/1007_BC_rmDUP.bam

samtools merge -nr /data02/merce/Only_Debaryomyceshansenii/Vcalling2/1008.bam /data02/merce/Only_Debaryomyceshansenii/1008_AH_rmDUP.bam /data02/merce/Only_Debaryomyceshansenii/1008_BC_rmDUP.bam

samtools merge -nr /data02/merce/Only_Debaryomyceshansenii/Vcalling2/1013.bam /data02/merce/Only_Debaryomyceshansenii/1013_AH_rmDUP.bam /data02/merce/Only_Debaryomyceshansenii/1013_BC_rmDUP.bam

samtools merge -nr /data02/merce/Only_Debaryomyceshansenii/Vcalling2/1014.bam /data02/merce/Only_Debaryomyceshansenii/1014_AH_rmDUP.bam /data02/merce/Only_Debaryomyceshansenii/1014_BC_rmDUP.bam

samtools merge -nr /data02/merce/Only_Debaryomyceshansenii/Vcalling2/1015.bam /data02/merce/Only_Debaryomyceshansenii/1015_AH_rmDUP.bam /data02/merce/Only_Debaryomyceshansenii/1015_BC_rmDUP.bam

samtools merge -nr /data02/merce/Only_Debaryomyceshansenii/Vcalling2/1016.bam /data02/merce/Only_Debaryomyceshansenii/1016_AH_rmDUP.bam /data02/merce/Only_Debaryomyceshansenii/1016_BC_rmDUP.bam

samtools merge -nr /data02/merce/Only_Debaryomyceshansenii/Vcalling2/1019.bam /data02/merce/Only_Debaryomyceshansenii/1019_AH_rmDUP.bam /data02/merce/Only_Debaryomyceshansenii/1019_BC_rmDUP.bam

#AddOrReplaceReadGroups

java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling2/1001.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling2/1001_rmdupRG.bam RGID=1001 RGLB=1001 RGPL=illumina RGPU=1001 RGSM=1001

java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling2/1002.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling2/1002_rmdupRG.bam RGID=1002 RGLB=1002 RGPL=illumina RGPU=1002 RGSM=1002

java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling2/1003.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling2/1003_rmdupRG.bam RGID=1003 RGLB=1003 RGPL=illumina RGPU=1003 RGSM=1003

java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling2/1004.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling2/1004_rmdupRG.bam RGID=1004 RGLB=1004 RGPL=illumina RGPU=1004 RGSM=1004

java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling2/1005.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling2/1005_rmdupRG.bam RGID=1005 RGLB=1005 RGPL=illumina RGPU=1005 RGSM=1005

java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling2/1007.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling2/1007_rmdupRG.bam RGID=1007 RGLB=1007 RGPL=illumina RGPU=1007 RGSM=1007

java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling2/1008.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling2/1008_rmdupRG.bam RGID=1008 RGLB=1008 RGPL=illumina RGPU=1008 RGSM=1008

java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling2/1013.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling2/1013_rmdupRG.bam RGID=1013 RGLB=1013 RGPL=illumina RGPU=1013 RGSM=1013

java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling2/1014.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling2/1014_rmdupRG.bam RGID=1014 RGLB=1014 RGPL=illumina RGPU=1014 RGSM=1014

java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling2/1015.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling2/1015_rmdupRG.bam RGID=1015 RGLB=1015 RGPL=illumina RGPU=1015 RGSM=1015

java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling2/1016.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling2/1016_rmdupRG.bam RGID=1016 RGLB=1016 RGPL=illumina RGPU=1016 RGSM=1016

java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling2/1019.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling2/1019_rmdupRG.bam RGID=1019 RGLB=1019 RGPL=illumina RGPU=1019 RGSM=1019


#Local realignment:

samtools calmd -Arb /data02/merce/Only_Debaryomyceshansenii/Vcalling2/1001_rmdupRG.bam /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna > /data02/merce/Only_Debaryomyceshansenii/Vcalling2/1001_rmdupRGBAQ.bam

samtools calmd -Arb /data02/merce/Only_Debaryomyceshansenii/Vcalling2/1002_rmdupRG.bam /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna > /data02/merce/Only_Debaryomyceshansenii/Vcalling2/1002_rmdupRGBAQ.bam

samtools calmd -Arb /data02/merce/Only_Debaryomyceshansenii/Vcalling2/1003_rmdupRG.bam /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna > /data02/merce/Only_Debaryomyceshansenii/Vcalling2/1003_rmdupRGBAQ.bam

samtools calmd -Arb /data02/merce/Only_Debaryomyceshansenii/Vcalling2/1004_rmdupRG.bam /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna > /data02/merce/Only_Debaryomyceshansenii/Vcalling2/1004_rmdupRGBAQ.bam

samtools calmd -Arb /data02/merce/Only_Debaryomyceshansenii/Vcalling2/1005_rmdupRG.bam /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna > /data02/merce/Only_Debaryomyceshansenii/Vcalling2/1005_rmdupRGBAQ.bam

samtools calmd -Arb /data02/merce/Only_Debaryomyceshansenii/Vcalling2/1007_rmdupRG.bam /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna > /data02/merce/Only_Debaryomyceshansenii/Vcalling2/1007_rmdupRGBAQ.bam

samtools calmd -Arb /data02/merce/Only_Debaryomyceshansenii/Vcalling2/1008_rmdupRG.bam /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna > /data02/merce/Only_Debaryomyceshansenii/Vcalling2/1008_rmdupRGBAQ.bam

samtools calmd -Arb /data02/merce/Only_Debaryomyceshansenii/Vcalling2/1013_rmdupRG.bam /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna > /data02/merce/Only_Debaryomyceshansenii/Vcalling2/1013_rmdupRGBAQ.bam

samtools calmd -Arb /data02/merce/Only_Debaryomyceshansenii/Vcalling2/1014_rmdupRG.bam /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna > /data02/merce/Only_Debaryomyceshansenii/Vcalling2/1014_rmdupRGBAQ.bam

samtools calmd -Arb /data02/merce/Only_Debaryomyceshansenii/Vcalling2/1015_rmdupRG.bam /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna > /data02/merce/Only_Debaryomyceshansenii/Vcalling2/1015_rmdupRGBAQ.bam

samtools calmd -Arb /data02/merce/Only_Debaryomyceshansenii/Vcalling2/1016_rmdupRG.bam /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna > /data02/merce/Only_Debaryomyceshansenii/Vcalling2/1016_rmdupRGBAQ.bam

samtools calmd -Arb /data02/merce/Only_Debaryomyceshansenii/Vcalling2/1019_rmdupRG.bam /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna > /data02/merce/Only_Debaryomyceshansenii/Vcalling2/1019_rmdupRGBAQ.bam
