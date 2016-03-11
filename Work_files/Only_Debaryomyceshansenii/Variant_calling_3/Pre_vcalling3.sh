#!/usr/bin/env bash

mkdir /data02/merce/Only_Debaryomyceshansenii/Vcalling3

#Remove PCR duplicates:

mkdir /data02/merce/Only_Debaryomyceshansenii/Vcalling3/metrics_files

java -jar ~/picard/dist/picard.jar MarkDuplicates INPUT=/data02/merce/Only_Debaryomyceshansenii/1001_pea_DehaAH_sorted.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1001_AH_rmDUP.bam REMOVE_DUPLICATES=true METRICS_FILE=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/metrics_files/metrics_file1001ah.txt AS=true

java -jar ~/picard/dist/picard.jar MarkDuplicates INPUT=/data02/merce/Only_Debaryomyceshansenii/1001_pea_DehaBC_sorted.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1001_BC_rmDUP.bam REMOVE_DUPLICATES=true METRICS_FILE=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/metrics_files/metrics_file1001bc.txt AS=true

java -jar ~/picard/dist/picard.jar MarkDuplicates INPUT=/data02/merce/Only_Debaryomyceshansenii/1002_pea_DehaAH_sorted.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1002_AH_rmDUP.bam REMOVE_DUPLICATES=true METRICS_FILE=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/metrics_files/metrics_file1002ah.txt AS=true

java -jar ~/picard/dist/picard.jar MarkDuplicates INPUT=/data02/merce/Only_Debaryomyceshansenii/1002_pea_DehaBC_sorted.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1002_BC_rmDUP.bam REMOVE_DUPLICATES=true METRICS_FILE=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/metrics_files/metrics_file1002bc.txt AS=true

java -jar ~/picard/dist/picard.jar MarkDuplicates INPUT=/data02/merce/Only_Debaryomyceshansenii/1003_pea_DehaAH_sorted.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1003_AH_rmDUP.bam REMOVE_DUPLICATES=true METRICS_FILE=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/metrics_files/metrics_file1003ah.txt AS=true

java -jar ~/picard/dist/picard.jar MarkDuplicates INPUT=/data02/merce/Only_Debaryomyceshansenii/1003_pea_DehaBC_sorted.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1003_BC_rmDUP.bam REMOVE_DUPLICATES=true METRICS_FILE=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/metrics_files/metrics_file1003bc.txt AS=true

java -jar ~/picard/dist/picard.jar MarkDuplicates INPUT=/data02/merce/Only_Debaryomyceshansenii/1004_pea_DehaAH_sorted.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1004_AH_rmDUP.bam REMOVE_DUPLICATES=true METRICS_FILE=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/metrics_files/metrics_file1004ah.txt AS=true

java -jar ~/picard/dist/picard.jar MarkDuplicates INPUT=/data02/merce/Only_Debaryomyceshansenii/1004_pea_DehaBC_sorted.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1004_BC_rmDUP.bam REMOVE_DUPLICATES=true METRICS_FILE=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/metrics_files/metrics_file1004bc.txt AS=true

java -jar ~/picard/dist/picard.jar MarkDuplicates INPUT=/data02/merce/Only_Debaryomyceshansenii/1005_pea_DehaAH_sorted.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1005_AH_rmDUP.bam REMOVE_DUPLICATES=true METRICS_FILE=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/metrics_files/metrics_file1005ah.txt AS=true

java -jar ~/picard/dist/picard.jar MarkDuplicates INPUT=/data02/merce/Only_Debaryomyceshansenii/1005_pea_DehaBC_sorted.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1005_BC_rmDUP.bam REMOVE_DUPLICATES=true METRICS_FILE=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/metrics_files/metrics_file1005bc.txt AS=true 

java -jar ~/picard/dist/picard.jar MarkDuplicates INPUT=/data02/merce/Only_Debaryomyceshansenii/1007_pea_DehaAH_sorted.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1007_AH_rmDUP.bam REMOVE_DUPLICATES=true METRICS_FILE=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/metrics_files/metrics_file1007ah.txt AS=true

java -jar ~/picard/dist/picard.jar MarkDuplicates INPUT=/data02/merce/Only_Debaryomyceshansenii/1007_pea_DehaBC_sorted.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1007_BC_rmDUP.bam REMOVE_DUPLICATES=true METRICS_FILE=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/metrics_files/metrics_file1007bc.txt AS=true

java -jar ~/picard/dist/picard.jar MarkDuplicates INPUT=/data02/merce/Only_Debaryomyceshansenii/1008_pea_DehaAH_sorted.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1008_AH_rmDUP.bam REMOVE_DUPLICATES=true METRICS_FILE=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/metrics_files/metrics_file1008ah.txt AS=true

java -jar ~/picard/dist/picard.jar MarkDuplicates INPUT=/data02/merce/Only_Debaryomyceshansenii/1008_pea_DehaBC_sorted.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1008_BC_rmDUP.bam REMOVE_DUPLICATES=true METRICS_FILE=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/metrics_files/metrics_file1008bc.txt AS=true

java -jar ~/picard/dist/picard.jar MarkDuplicates INPUT=/data02/merce/Only_Debaryomyceshansenii/1013_pea_DehaAH_sorted.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1013_AH_rmDUP.bam REMOVE_DUPLICATES=true METRICS_FILE=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/metrics_files/metrics_file1013ah.txt AS=true

java -jar ~/picard/dist/picard.jar MarkDuplicates INPUT=/data02/merce/Only_Debaryomyceshansenii/1013_pea_DehaBC_sorted.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1013_BC_rmDUP.bam REMOVE_DUPLICATES=true METRICS_FILE=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/metrics_files/metrics_file1013bc.txt AS=true

java -jar ~/picard/dist/picard.jar MarkDuplicates INPUT=/data02/merce/Only_Debaryomyceshansenii/1014_pea_DehaAH_sorted.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1014_AH_rmDUP.bam REMOVE_DUPLICATES=true METRICS_FILE=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/metrics_files/metrics_file1014ah.txt AS=true

java -jar ~/picard/dist/picard.jar MarkDuplicates INPUT=/data02/merce/Only_Debaryomyceshansenii/1014_pea_DehaBC_sorted.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1014_BC_rmDUP.bam REMOVE_DUPLICATES=true METRICS_FILE=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/metrics_files/metrics_file1014bc.txt AS=true

java -jar ~/picard/dist/picard.jar MarkDuplicates INPUT=/data02/merce/Only_Debaryomyceshansenii/1015_pea_DehaAH_sorted.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1015_AH_rmDUP.bam REMOVE_DUPLICATES=true METRICS_FILE=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/metrics_files/metrics_file1015ah.txt AS=true

java -jar ~/picard/dist/picard.jar MarkDuplicates INPUT=/data02/merce/Only_Debaryomyceshansenii/1015_pea_DehaBC_sorted.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1015_BC_rmDUP.bam REMOVE_DUPLICATES=true METRICS_FILE=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/metrics_files/metrics_file1015bc.txt AS=true

java -jar ~/picard/dist/picard.jar MarkDuplicates INPUT=/data02/merce/Only_Debaryomyceshansenii/1016_pea_DehaAH_sorted.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1016_AH_rmDUP.bam REMOVE_DUPLICATES=true METRICS_FILE=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/metrics_files/metrics_file1016ah.txt AS=true

java -jar ~/picard/dist/picard.jar MarkDuplicates INPUT=/data02/merce/Only_Debaryomyceshansenii/1016_pea_DehaBC_sorted.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1016_BC_rmDUP.bam REMOVE_DUPLICATES=true METRICS_FILE=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/metrics_files/metrics_file1016bc.txt AS=true

java -jar ~/picard/dist/picard.jar MarkDuplicates INPUT=/data02/merce/Only_Debaryomyceshansenii/1019_pea_DehaAH_sorted.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1019_AH_rmDUP.bam REMOVE_DUPLICATES=true METRICS_FILE=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/metrics_files/metrics_file1019ah.txt AS=true

java -jar ~/picard/dist/picard.jar MarkDuplicates INPUT=/data02/merce/Only_Debaryomyceshansenii/1019_pea_DehaBC_sorted.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1019_BC_rmDUP.bam REMOVE_DUPLICATES=true METRICS_FILE=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/metrics_files/metrics_file1019bc.txt AS=true

#AddOrReplaceReadGroups

#mkdir /data02/merce/Only_Debaryomyceshansenii/Vcalling3/log_files

java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1001_AH_rmDUP.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1001_AH_rmDUP_readGROUP.bam RGID=1001 RGLB=1001 RGPL=illumina RGPU=1001 RGSM=1001

java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1001_BC_rmDUP.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1001_BC_rmDUP_readGROUP.bam RGID=1001 RGLB=1001 RGPL=illumina RGPU=1001 RGSM=1001

java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1002_AH_rmDUP.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1002_AH_rmDUP_readGROUP.bam RGID=1002 RGLB=1002 RGPL=illumina RGPU=1002 RGSM=1002

java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1002_BC_rmDUP.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1002_BC_rmDUP_readGROUP.bam RGID=1002 RGLB=1002 RGPL=illumina RGPU=1002 RGSM=1002

java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1003_AH_rmDUP.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1003_AH_rmDUP_readGROUP.bam RGID=1003 RGLB=1003 RGPL=illumina RGPU=1003 RGSM=1003

java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1003_BC_rmDUP.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1003_BC_rmDUP_readGROUP.bam RGID=1003 RGLB=1003 RGPL=illumina RGPU=1003 RGSM=1003

java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1004_AH_rmDUP.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1004_AH_rmDUP_readGROUP.bam RGID=1004 RGLB=1004 RGPL=illumina RGPU=1004 RGSM=1004

java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1004_BC_rmDUP.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1004_BC_rmDUP_readGROUP.bam RGID=1004 RGLB=1004 RGPL=illumina RGPU=1004 RGSM=1004

java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1005_AH_rmDUP.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1005_AH_rmDUP_readGROUP.bam RGID=1005 RGLB=1005 RGPL=illumina RGPU=1005 RGSM=1005

java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1005_BC_rmDUP.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1005_BC_rmDUP_readGROUP.bam RGID=1005 RGLB=1005 RGPL=illumina RGPU=1005 RGSM=1005

java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1007_AH_rmDUP.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1007_AH_rmDUP_readGROUP.bam RGID=1007 RGLB=1007 RGPL=illumina RGPU=1007 RGSM=1007

java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1007_BC_rmDUP.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1007_BC_rmDUP_readGROUP.bam RGID=1007 RGLB=1007 RGPL=illumina RGPU=1007 RGSM=1007

java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1008_AH_rmDUP.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1008_AH_rmDUP_readGROUP.bam RGID=1008 RGLB=1008 RGPL=illumina RGPU=1008 RGSM=1008

java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1008_BC_rmDUP.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1008_BC_rmDUP_readGROUP.bam RGID=1008 RGLB=1008 RGPL=illumina RGPU=1008 RGSM=1008

java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1013_AH_rmDUP.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1013_AH_rmDUP_readGROUP.bam RGID=1013 RGLB=1013 RGPL=illumina RGPU=1013 RGSM=1013

java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1013_BC_rmDUP.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1013_BC_rmDUP_readGROUP.bam RGID=1013 RGLB=1013 RGPL=illumina RGPU=1013 RGSM=1013

java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1014_AH_rmDUP.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1014_AH_rmDUP_readGROUP.bam RGID=1014 RGLB=1014 RGPL=illumina RGPU=1014 RGSM=1014

java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1014_BC_rmDUP.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1014_BC_rmDUP_readGROUP.bam RGID=1014 RGLB=1014 RGPL=illumina RGPU=1014 RGSM=1014

java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1015_AH_rmDUP.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1015_AH_rmDUP_readGROUP.bam RGID=1015 RGLB=1015 RGPL=illumina RGPU=1015 RGSM=1015

java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1015_BC_rmDUP.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1015_BC_rmDUP_readGROUP.bam RGID=1015 RGLB=1015 RGPL=illumina RGPU=1015 RGSM=1015

java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1016_AH_rmDUP.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1016_AH_rmDUP_readGROUP.bam RGID=1016 RGLB=1016 RGPL=illumina RGPU=1016 RGSM=1016

java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1016_BC_rmDUP.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1016_BC_rmDUP_readGROUP.bam RGID=1016 RGLB=1016 RGPL=illumina RGPU=1016 RGSM=1016

java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1019_AH_rmDUP.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1019_AH_rmDUP_readGROUP.bam RGID=1019 RGLB=1019 RGPL=illumina RGPU=1019 RGSM=1019

java -jar ~/picard/dist/picard.jar AddOrReplaceReadGroups INPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1019_BC_rmDUP.bam OUTPUT=/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1019_BC_rmDUP_readGROUP.bam RGID=1019 RGLB=1019 RGPL=illumina RGPU=1019 RGSM=1019

#Merge bam files:

samtools merge -c /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1001_dpRG.bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1001_AH_rmDUP_readGROUP.bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1001_BC_rmDUP_readGROUP.bam

samtools merge -c /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1002_dpRG.bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1002_AH_rmDUP_readGROUP.bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1002_BC_rmDUP_readGROUP.bam

samtools merge -c /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1003_dpRG.bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1003_AH_rmDUP_readGROUP.bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1003_BC_rmDUP_readGROUP.bam

samtools merge -c /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1004_dpRG.bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1004_AH_rmDUP_readGROUP.bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1004_BC_rmDUP_readGROUP.bam

samtools merge -c /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1005_dpRG.bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1005_AH_rmDUP_readGROUP.bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1005_BC_rmDUP_readGROUP.bam

samtools merge -c /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1007_dpRG.bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1007_AH_rmDUP_readGROUP.bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1007_BC_rmDUP_readGROUP.bam

samtools merge -c /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1008_dpRG.bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1008_AH_rmDUP_readGROUP.bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1008_BC_rmDUP_readGROUP.bam

samtools merge -c /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1013_dpRG.bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1013_AH_rmDUP_readGROUP.bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1013_BC_rmDUP_readGROUP.bam

samtools merge -c /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1014_dpRG.bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1014_AH_rmDUP_readGROUP.bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1014_BC_rmDUP_readGROUP.bam

samtools merge -c /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1015_dpRG.bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1015_AH_rmDUP_readGROUP.bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1015_BC_rmDUP_readGROUP.bam

samtools merge -c /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1016_dpRG.bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1016_AH_rmDUP_readGROUP.bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1016_BC_rmDUP_readGROUP.bam

samtools merge -c /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1019_dpRG.bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1019_AH_rmDUP_readGROUP.bam /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1019_BC_rmDUP_readGROUP.bam

#Local realignment BAQ

samtools calmd -Arb /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1001_dpRG.bam /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna > /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1001_dpRGBAQ.bam

samtools calmd -Arb /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1002_dpRG.bam /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna > /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1002_dpRGBAQ.bam

samtools calmd -Arb /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1003_dpRG.bam /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna > /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1003_dpRGBAQ.bam

samtools calmd -Arb /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1004_dpRG.bam /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna > /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1004_dpRGBAQ.bam

samtools calmd -Arb /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1005_dpRG.bam /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna > /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1005_dpRGBAQ.bam

samtools calmd -Arb /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1007_dpRG.bam /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna > /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1007_dpRGBAQ.bam

samtools calmd -Arb /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1008_dpRG.bam /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna > /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1008_dpRGBAQ.bam

samtools calmd -Arb /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1013_dpRG.bam /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna > /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1013_dpRGBAQ.bam

samtools calmd -Arb /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1014_dpRG.bam /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna > /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1014_dpRGBAQ.bam

samtools calmd -Arb /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1015_dpRG.bam /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna > /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1015_dpRGBAQ.bam

samtools calmd -Arb /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1016_dpRG.bam /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna > /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1016_dpRGBAQ.bam

samtools calmd -Arb /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1019_dpRG.bam /data02/merce/Only_Debaryomyceshansenii/reference/GCA_000006445.2_ASM644v2_genomic.fna > /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1019_dpRGBAQ.bam

#Index

samtools index /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1001_dpRGBAQ.bam

samtools index /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1002_dpRGBAQ.bam

samtools index /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1003_dpRGBAQ.bam

samtools index /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1004_dpRGBAQ.bam

samtools index /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1005_dpRGBAQ.bam

samtools index /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1007_dpRGBAQ.bam

samtools index /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1008_dpRGBAQ.bam

samtools index /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1013_dpRGBAQ.bam

samtools index /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1014_dpRGBAQ.bam

samtools index /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1015_dpRGBAQ.bam

samtools index /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1016_dpRGBAQ.bam

samtools index /data02/merce/Only_Debaryomyceshansenii/Vcalling3/1019_dpRGBAQ.bam

#File with bam paths for Freebayes:

echo -e '/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1001_dpRGBAQ.bam \n/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1002_dpRGBAQ.bam \n/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1003_dpRGBAQ.bam \n/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1004_dpRGBAQ.bam \n/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1005_dpRGBAQ.bam \n/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1007_dpRGBAQ.bam \n/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1008_dpRGBAQ.bam \n/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1013_dpRGBAQ.bam \n/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1014_dpRGBAQ.bam \n/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1015_dpRGBAQ.bam \n/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1016_dpRGBAQ.bam \n/data02/merce/Only_Debaryomyceshansenii/Vcalling3/1019_dpRGBAQ.bam' >> /data02/merce/Only_Debaryomyceshansenii/Vcalling3/bam.txt
