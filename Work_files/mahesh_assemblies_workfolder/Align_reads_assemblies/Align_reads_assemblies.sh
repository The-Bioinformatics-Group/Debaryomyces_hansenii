#!/usr/bin/env bash

mkdir /data02/merce/Mapping_reads_assemblies/Bowtie2_logs

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1001 -1 /data02/merce/Mapping_reads_assemblies/1001_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1001_2.fastq -S /data02/merce/Mapping_reads_assemblies/1001_r1001.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1001_r1001mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1001 -1 /data02/merce/Mapping_reads_assemblies/1002_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1002_2.fastq -S /data02/merce/Mapping_reads_assemblies/1001_r1002.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1001_r1002mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1001 -1 /data02/merce/Mapping_reads_assemblies/1003_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1003_2.fastq -S /data02/merce/Mapping_reads_assemblies/1001_r1003.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1001_r1003mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1001 -1 /data02/merce/Mapping_reads_assemblies/1004_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1004_2.fastq -S /data02/merce/Mapping_reads_assemblies/1001_r1004.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1001_r1004mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1001 -1 /data02/merce/Mapping_reads_assemblies/1005_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1005_2.fastq -S /data02/merce/Mapping_reads_assemblies/1001_r1005.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1001_r1005mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1001 -1 /data02/merce/Mapping_reads_assemblies/1006_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1006_2.fastq -S /data02/merce/Mapping_reads_assemblies/1001_r1006.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1001_r1006mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1001 -1 /data02/merce/Mapping_reads_assemblies/1007_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1007_2.fastq -S /data02/merce/Mapping_reads_assemblies/1001_r1007.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1001_r1007mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1001 -1 /data02/merce/Mapping_reads_assemblies/1008_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1008_2.fastq -S /data02/merce/Mapping_reads_assemblies/1001_r1008.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1001_r1008mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1001 -1 /data02/merce/Mapping_reads_assemblies/1009_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1009_2.fastq -S /data02/merce/Mapping_reads_assemblies/1001_r1009.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1001_r1009mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1001 -1 /data02/merce/Mapping_reads_assemblies/1010_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1010_2.fastq -S /data02/merce/Mapping_reads_assemblies/1001_r1010.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1001_r1010mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1001 -1 /data02/merce/Mapping_reads_assemblies/1011_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1011_2.fastq -S /data02/merce/Mapping_reads_assemblies/1001_r1011.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1001_r1011mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1001 -1 /data02/merce/Mapping_reads_assemblies/1012_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1012_2.fastq -S /data02/merce/Mapping_reads_assemblies/1001_r1012.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1001_r1012mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1001 -1 /data02/merce/Mapping_reads_assemblies/1013_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1013_2.fastq -S /data02/merce/Mapping_reads_assemblies/1001_r1013.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1001_r1013mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1001 -1 /data02/merce/Mapping_reads_assemblies/1014_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1014_2.fastq -S /data02/merce/Mapping_reads_assemblies/1001_r1014.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1001_r1014mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1001 -1 /data02/merce/Mapping_reads_assemblies/1015_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1015_2.fastq -S /data02/merce/Mapping_reads_assemblies/1001_r1015.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1001_r1015mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1001 -1 /data02/merce/Mapping_reads_assemblies/1016_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1016_2.fastq -S /data02/merce/Mapping_reads_assemblies/1001_r1016.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1001_r1016mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1001 -1 /data02/merce/Mapping_reads_assemblies/1019_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1019_2.fastq -S /data02/merce/Mapping_reads_assemblies/1001_r1019.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1001_r1019mapping_log.txt


bowtie2 -x /data02/merce/Mapping_reads_assemblies/1002 -1 /data02/merce/Mapping_reads_assemblies/1001_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1001_2.fastq -S /data02/merce/Mapping_reads_assemblies/1002_r1001.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1002_r1001mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1002 -1 /data02/merce/Mapping_reads_assemblies/1002_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1002_2.fastq -S /data02/merce/Mapping_reads_assemblies/1002_r1002.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1002_r1002mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1002 -1 /data02/merce/Mapping_reads_assemblies/1003_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1003_2.fastq -S /data02/merce/Mapping_reads_assemblies/1002_r1003.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1002_r1003mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1002 -1 /data02/merce/Mapping_reads_assemblies/1004_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1004_2.fastq -S /data02/merce/Mapping_reads_assemblies/1002_r1004.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1002_r1004mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1002 -1 /data02/merce/Mapping_reads_assemblies/1005_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1005_2.fastq -S /data02/merce/Mapping_reads_assemblies/1002_r1005.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1002_r1005mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1002 -1 /data02/merce/Mapping_reads_assemblies/1006_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1006_2.fastq -S /data02/merce/Mapping_reads_assemblies/1002_r1006.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1002_r1006mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1002 -1 /data02/merce/Mapping_reads_assemblies/1007_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1007_2.fastq -S /data02/merce/Mapping_reads_assemblies/1002_r1007.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1002_r1007mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1002 -1 /data02/merce/Mapping_reads_assemblies/1008_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1008_2.fastq -S /data02/merce/Mapping_reads_assemblies/1002_r1008.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1002_r1008mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1002 -1 /data02/merce/Mapping_reads_assemblies/1009_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1009_2.fastq -S /data02/merce/Mapping_reads_assemblies/1002_r1009.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1002_r1009mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1002 -1 /data02/merce/Mapping_reads_assemblies/1010_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1010_2.fastq -S /data02/merce/Mapping_reads_assemblies/1002_r1010.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1002_r1010mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1002 -1 /data02/merce/Mapping_reads_assemblies/1011_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1011_2.fastq -S /data02/merce/Mapping_reads_assemblies/1002_r1011.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1002_r1011mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1002 -1 /data02/merce/Mapping_reads_assemblies/1012_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1012_2.fastq -S /data02/merce/Mapping_reads_assemblies/1002_r1012.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1002_r1012mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1002 -1 /data02/merce/Mapping_reads_assemblies/1013_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1013_2.fastq -S /data02/merce/Mapping_reads_assemblies/1002_r1013.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1002_r1013mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1002 -1 /data02/merce/Mapping_reads_assemblies/1014_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1014_2.fastq -S /data02/merce/Mapping_reads_assemblies/1002_r1014.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1002_r1014mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1002 -1 /data02/merce/Mapping_reads_assemblies/1015_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1015_2.fastq -S /data02/merce/Mapping_reads_assemblies/1002_r1015.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1002_r1015mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1002 -1 /data02/merce/Mapping_reads_assemblies/1016_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1016_2.fastq -S /data02/merce/Mapping_reads_assemblies/1002_r1016.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1002_r1016mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1002 -1 /data02/merce/Mapping_reads_assemblies/1019_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1019_2.fastq -S /data02/merce/Mapping_reads_assemblies/1002_r1019.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1002_r1019mapping_log.txt


bowtie2 -x /data02/merce/Mapping_reads_assemblies/1003 -1 /data02/merce/Mapping_reads_assemblies/1001_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1001_2.fastq -S /data02/merce/Mapping_reads_assemblies/1003_r1001.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1003_r1001mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1003 -1 /data02/merce/Mapping_reads_assemblies/1002_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1002_2.fastq -S /data02/merce/Mapping_reads_assemblies/1003_r1002.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1003_r1002mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1003 -1 /data02/merce/Mapping_reads_assemblies/1003_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1003_2.fastq -S /data02/merce/Mapping_reads_assemblies/1003_r1003.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1003_r1003mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1003 -1 /data02/merce/Mapping_reads_assemblies/1004_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1004_2.fastq -S /data02/merce/Mapping_reads_assemblies/1003_r1004.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1003_r1004mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1003 -1 /data02/merce/Mapping_reads_assemblies/1005_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1005_2.fastq -S /data02/merce/Mapping_reads_assemblies/1003_r1005.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1003_r1005mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1003 -1 /data02/merce/Mapping_reads_assemblies/1006_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1006_2.fastq -S /data02/merce/Mapping_reads_assemblies/1003_r1006.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1003_r1006mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1003 -1 /data02/merce/Mapping_reads_assemblies/1007_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1007_2.fastq -S /data02/merce/Mapping_reads_assemblies/1003_r1007.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1003_r1007mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1003 -1 /data02/merce/Mapping_reads_assemblies/1008_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1008_2.fastq -S /data02/merce/Mapping_reads_assemblies/1003_r1008.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1003_r1008mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1003 -1 /data02/merce/Mapping_reads_assemblies/1009_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1009_2.fastq -S /data02/merce/Mapping_reads_assemblies/1003_r1009.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1003_r1009mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1003 -1 /data02/merce/Mapping_reads_assemblies/1010_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1010_2.fastq -S /data02/merce/Mapping_reads_assemblies/1003_r1010.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1003_r1010mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1003 -1 /data02/merce/Mapping_reads_assemblies/1011_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1011_2.fastq -S /data02/merce/Mapping_reads_assemblies/1003_r1011.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1003_r1011mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1003 -1 /data02/merce/Mapping_reads_assemblies/1012_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1012_2.fastq -S /data02/merce/Mapping_reads_assemblies/1003_r1012.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1003_r1012mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1003 -1 /data02/merce/Mapping_reads_assemblies/1013_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1013_2.fastq -S /data02/merce/Mapping_reads_assemblies/1003_r1013.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1003_r1013mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1003 -1 /data02/merce/Mapping_reads_assemblies/1014_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1014_2.fastq -S /data02/merce/Mapping_reads_assemblies/1003_r1014.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1003_r1014mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1003 -1 /data02/merce/Mapping_reads_assemblies/1015_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1015_2.fastq -S /data02/merce/Mapping_reads_assemblies/1003_r1015.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1003_r1015mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1003 -1 /data02/merce/Mapping_reads_assemblies/1016_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1016_2.fastq -S /data02/merce/Mapping_reads_assemblies/1003_r1016.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1003_r1016mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1003 -1 /data02/merce/Mapping_reads_assemblies/1019_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1019_2.fastq -S /data02/merce/Mapping_reads_assemblies/1003_r1019.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1003_r1019mapping_log.txt


bowtie2 -x /data02/merce/Mapping_reads_assemblies/1004 -1 /data02/merce/Mapping_reads_assemblies/1001_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1001_2.fastq -S /data02/merce/Mapping_reads_assemblies/1004_r1001.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1004_r1001mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1004 -1 /data02/merce/Mapping_reads_assemblies/1002_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1002_2.fastq -S /data02/merce/Mapping_reads_assemblies/1004_r1002.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1004_r1002mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1004 -1 /data02/merce/Mapping_reads_assemblies/1003_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1003_2.fastq -S /data02/merce/Mapping_reads_assemblies/1004_r1003.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1004_r1003mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1004 -1 /data02/merce/Mapping_reads_assemblies/1004_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1004_2.fastq -S /data02/merce/Mapping_reads_assemblies/1004_r1004.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1004_r1004mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1004 -1 /data02/merce/Mapping_reads_assemblies/1005_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1005_2.fastq -S /data02/merce/Mapping_reads_assemblies/1004_r1005.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1004_r1005mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1004 -1 /data02/merce/Mapping_reads_assemblies/1006_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1006_2.fastq -S /data02/merce/Mapping_reads_assemblies/1004_r1006.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1004_r1006mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1004 -1 /data02/merce/Mapping_reads_assemblies/1007_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1007_2.fastq -S /data02/merce/Mapping_reads_assemblies/1004_r1007.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1004_r1007mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1004 -1 /data02/merce/Mapping_reads_assemblies/1008_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1008_2.fastq -S /data02/merce/Mapping_reads_assemblies/1004_r1008.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1004_r1008mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1004 -1 /data02/merce/Mapping_reads_assemblies/1009_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1009_2.fastq -S /data02/merce/Mapping_reads_assemblies/1004_r1009.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1004_r1009mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1004 -1 /data02/merce/Mapping_reads_assemblies/1010_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1010_2.fastq -S /data02/merce/Mapping_reads_assemblies/1004_r1010.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1004_r1010mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1004 -1 /data02/merce/Mapping_reads_assemblies/1011_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1011_2.fastq -S /data02/merce/Mapping_reads_assemblies/1004_r1011.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1004_r1011mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1004 -1 /data02/merce/Mapping_reads_assemblies/1012_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1012_2.fastq -S /data02/merce/Mapping_reads_assemblies/1004_r1012.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1004_r1012mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1004 -1 /data02/merce/Mapping_reads_assemblies/1013_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1013_2.fastq -S /data02/merce/Mapping_reads_assemblies/1004_r1013.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1004_r1013mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1004 -1 /data02/merce/Mapping_reads_assemblies/1014_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1014_2.fastq -S /data02/merce/Mapping_reads_assemblies/1004_r1014.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1004_r1014mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1004 -1 /data02/merce/Mapping_reads_assemblies/1015_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1015_2.fastq -S /data02/merce/Mapping_reads_assemblies/1004_r1015.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1004_r1015mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1004 -1 /data02/merce/Mapping_reads_assemblies/1016_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1016_2.fastq -S /data02/merce/Mapping_reads_assemblies/1004_r1016.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1004_r1016mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1004 -1 /data02/merce/Mapping_reads_assemblies/1019_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1019_2.fastq -S /data02/merce/Mapping_reads_assemblies/1004_r1019.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1004_r1019mapping_log.txt


bowtie2 -x /data02/merce/Mapping_reads_assemblies/1005 -1 /data02/merce/Mapping_reads_assemblies/1001_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1001_2.fastq -S /data02/merce/Mapping_reads_assemblies/1005_r1001.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1005_r1001mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1005 -1 /data02/merce/Mapping_reads_assemblies/1002_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1002_2.fastq -S /data02/merce/Mapping_reads_assemblies/1005_r1002.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1005_r1002mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1005 -1 /data02/merce/Mapping_reads_assemblies/1003_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1003_2.fastq -S /data02/merce/Mapping_reads_assemblies/1005_r1003.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1005_r1003mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1005 -1 /data02/merce/Mapping_reads_assemblies/1004_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1004_2.fastq -S /data02/merce/Mapping_reads_assemblies/1005_r1004.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1005_r1004mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1005 -1 /data02/merce/Mapping_reads_assemblies/1005_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1005_2.fastq -S /data02/merce/Mapping_reads_assemblies/1005_r1005.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1005_r1005mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1005 -1 /data02/merce/Mapping_reads_assemblies/1006_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1006_2.fastq -S /data02/merce/Mapping_reads_assemblies/1005_r1006.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1005_r1006mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1005 -1 /data02/merce/Mapping_reads_assemblies/1007_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1007_2.fastq -S /data02/merce/Mapping_reads_assemblies/1005_r1007.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1005_r1007mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1005 -1 /data02/merce/Mapping_reads_assemblies/1008_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1008_2.fastq -S /data02/merce/Mapping_reads_assemblies/1005_r1008.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1005_r1008mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1005 -1 /data02/merce/Mapping_reads_assemblies/1009_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1009_2.fastq -S /data02/merce/Mapping_reads_assemblies/1005_r1009.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1005_r1009mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1005 -1 /data02/merce/Mapping_reads_assemblies/1010_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1010_2.fastq -S /data02/merce/Mapping_reads_assemblies/1005_r1010.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1005_r1010mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1005 -1 /data02/merce/Mapping_reads_assemblies/1011_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1011_2.fastq -S /data02/merce/Mapping_reads_assemblies/1005_r1011.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1005_r1011mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1005 -1 /data02/merce/Mapping_reads_assemblies/1012_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1012_2.fastq -S /data02/merce/Mapping_reads_assemblies/1005_r1012.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1005_r1012mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1005 -1 /data02/merce/Mapping_reads_assemblies/1013_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1013_2.fastq -S /data02/merce/Mapping_reads_assemblies/1005_r1013.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1005_r1013mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1005 -1 /data02/merce/Mapping_reads_assemblies/1014_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1014_2.fastq -S /data02/merce/Mapping_reads_assemblies/1005_r1014.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1005_r1014mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1005 -1 /data02/merce/Mapping_reads_assemblies/1015_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1015_2.fastq -S /data02/merce/Mapping_reads_assemblies/1005_r1015.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1005_r1015mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1005 -1 /data02/merce/Mapping_reads_assemblies/1016_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1016_2.fastq -S /data02/merce/Mapping_reads_assemblies/1005_r1016.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1005_r1016mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1005 -1 /data02/merce/Mapping_reads_assemblies/1019_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1019_2.fastq -S /data02/merce/Mapping_reads_assemblies/1005_r1019.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1005_r1019mapping_log.txt


bowtie2 -x /data02/merce/Mapping_reads_assemblies/1006 -1 /data02/merce/Mapping_reads_assemblies/1001_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1001_2.fastq -S /data02/merce/Mapping_reads_assemblies/1006_r1001.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1006_r1001mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1006 -1 /data02/merce/Mapping_reads_assemblies/1002_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1002_2.fastq -S /data02/merce/Mapping_reads_assemblies/1006_r1002.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1006_r1002mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1006 -1 /data02/merce/Mapping_reads_assemblies/1003_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1003_2.fastq -S /data02/merce/Mapping_reads_assemblies/1006_r1003.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1006_r1003mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1006 -1 /data02/merce/Mapping_reads_assemblies/1004_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1004_2.fastq -S /data02/merce/Mapping_reads_assemblies/1006_r1004.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1006_r1004mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1006 -1 /data02/merce/Mapping_reads_assemblies/1005_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1005_2.fastq -S /data02/merce/Mapping_reads_assemblies/1006_r1005.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1006_r1005mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1006 -1 /data02/merce/Mapping_reads_assemblies/1006_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1006_2.fastq -S /data02/merce/Mapping_reads_assemblies/1006_r1006.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1006_r1006mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1006 -1 /data02/merce/Mapping_reads_assemblies/1007_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1007_2.fastq -S /data02/merce/Mapping_reads_assemblies/1006_r1007.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1006_r1007mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1006 -1 /data02/merce/Mapping_reads_assemblies/1008_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1008_2.fastq -S /data02/merce/Mapping_reads_assemblies/1006_r1008.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1006_r1008mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1006 -1 /data02/merce/Mapping_reads_assemblies/1009_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1009_2.fastq -S /data02/merce/Mapping_reads_assemblies/1006_r1009.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1006_r1009mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1006 -1 /data02/merce/Mapping_reads_assemblies/1010_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1010_2.fastq -S /data02/merce/Mapping_reads_assemblies/1006_r1010.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1006_r1010mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1006 -1 /data02/merce/Mapping_reads_assemblies/1011_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1011_2.fastq -S /data02/merce/Mapping_reads_assemblies/1006_r1011.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1006_r1011mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1006 -1 /data02/merce/Mapping_reads_assemblies/1012_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1012_2.fastq -S /data02/merce/Mapping_reads_assemblies/1006_r1012.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1006_r1012mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1006 -1 /data02/merce/Mapping_reads_assemblies/1013_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1013_2.fastq -S /data02/merce/Mapping_reads_assemblies/1006_r1013.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1006_r1013mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1006 -1 /data02/merce/Mapping_reads_assemblies/1014_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1014_2.fastq -S /data02/merce/Mapping_reads_assemblies/1006_r1014.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1006_r1014mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1006 -1 /data02/merce/Mapping_reads_assemblies/1015_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1015_2.fastq -S /data02/merce/Mapping_reads_assemblies/1006_r1015.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1006_r1015mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1006 -1 /data02/merce/Mapping_reads_assemblies/1016_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1016_2.fastq -S /data02/merce/Mapping_reads_assemblies/1006_r1016.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1006_r1016mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1006 -1 /data02/merce/Mapping_reads_assemblies/1019_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1019_2.fastq -S /data02/merce/Mapping_reads_assemblies/1006_r1019.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1006_r1019mapping_log.txt


bowtie2 -x /data02/merce/Mapping_reads_assemblies/1007 -1 /data02/merce/Mapping_reads_assemblies/1001_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1001_2.fastq -S /data02/merce/Mapping_reads_assemblies/1007_r1001.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1007_r1001mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1007 -1 /data02/merce/Mapping_reads_assemblies/1002_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1002_2.fastq -S /data02/merce/Mapping_reads_assemblies/1007_r1002.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1007_r1002mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1007 -1 /data02/merce/Mapping_reads_assemblies/1003_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1003_2.fastq -S /data02/merce/Mapping_reads_assemblies/1007_r1003.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1007_r1003mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1007 -1 /data02/merce/Mapping_reads_assemblies/1004_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1004_2.fastq -S /data02/merce/Mapping_reads_assemblies/1007_r1004.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1007_r1004mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1007 -1 /data02/merce/Mapping_reads_assemblies/1005_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1005_2.fastq -S /data02/merce/Mapping_reads_assemblies/1007_r1005.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1007_r1005mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1007 -1 /data02/merce/Mapping_reads_assemblies/1006_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1006_2.fastq -S /data02/merce/Mapping_reads_assemblies/1007_r1006.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1007_r1006mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1007 -1 /data02/merce/Mapping_reads_assemblies/1007_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1007_2.fastq -S /data02/merce/Mapping_reads_assemblies/1007_r1007.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1007_r1007mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1007 -1 /data02/merce/Mapping_reads_assemblies/1008_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1008_2.fastq -S /data02/merce/Mapping_reads_assemblies/1007_r1008.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1007_r1008mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1007 -1 /data02/merce/Mapping_reads_assemblies/1009_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1009_2.fastq -S /data02/merce/Mapping_reads_assemblies/1007_r1009.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1007_r1009mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1007 -1 /data02/merce/Mapping_reads_assemblies/1010_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1010_2.fastq -S /data02/merce/Mapping_reads_assemblies/1007_r1010.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1007_r1010mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1007 -1 /data02/merce/Mapping_reads_assemblies/1011_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1011_2.fastq -S /data02/merce/Mapping_reads_assemblies/1007_r1011.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1007_r1011mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1007 -1 /data02/merce/Mapping_reads_assemblies/1012_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1012_2.fastq -S /data02/merce/Mapping_reads_assemblies/1007_r1012.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1007_r1012mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1007 -1 /data02/merce/Mapping_reads_assemblies/1013_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1013_2.fastq -S /data02/merce/Mapping_reads_assemblies/1007_r1013.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1007_r1013mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1007 -1 /data02/merce/Mapping_reads_assemblies/1014_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1014_2.fastq -S /data02/merce/Mapping_reads_assemblies/1007_r1014.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1007_r1014mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1007 -1 /data02/merce/Mapping_reads_assemblies/1015_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1015_2.fastq -S /data02/merce/Mapping_reads_assemblies/1007_r1015.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1007_r1015mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1007 -1 /data02/merce/Mapping_reads_assemblies/1016_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1016_2.fastq -S /data02/merce/Mapping_reads_assemblies/1007_r1016.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1007_r1016mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1007 -1 /data02/merce/Mapping_reads_assemblies/1019_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1019_2.fastq -S /data02/merce/Mapping_reads_assemblies/1007_r1019.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1007_r1019mapping_log.txt


bowtie2 -x /data02/merce/Mapping_reads_assemblies/1008 -1 /data02/merce/Mapping_reads_assemblies/1001_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1001_2.fastq -S /data02/merce/Mapping_reads_assemblies/1008_r1001.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1008_r1001mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1008 -1 /data02/merce/Mapping_reads_assemblies/1002_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1002_2.fastq -S /data02/merce/Mapping_reads_assemblies/1008_r1002.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1008_r1002mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1008 -1 /data02/merce/Mapping_reads_assemblies/1003_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1003_2.fastq -S /data02/merce/Mapping_reads_assemblies/1008_r1003.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1008_r1003mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1008 -1 /data02/merce/Mapping_reads_assemblies/1004_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1004_2.fastq -S /data02/merce/Mapping_reads_assemblies/1008_r1004.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1008_r1004mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1008 -1 /data02/merce/Mapping_reads_assemblies/1005_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1005_2.fastq -S /data02/merce/Mapping_reads_assemblies/1008_r1005.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1008_r1005mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1008 -1 /data02/merce/Mapping_reads_assemblies/1006_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1006_2.fastq -S /data02/merce/Mapping_reads_assemblies/1008_r1006.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1008_r1006mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1008 -1 /data02/merce/Mapping_reads_assemblies/1007_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1007_2.fastq -S /data02/merce/Mapping_reads_assemblies/1008_r1007.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1008_r1007mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1008 -1 /data02/merce/Mapping_reads_assemblies/1008_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1008_2.fastq -S /data02/merce/Mapping_reads_assemblies/1008_r1008.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1008_r1008mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1008 -1 /data02/merce/Mapping_reads_assemblies/1009_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1009_2.fastq -S /data02/merce/Mapping_reads_assemblies/1008_r1009.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1008_r1009mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1008 -1 /data02/merce/Mapping_reads_assemblies/1010_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1010_2.fastq -S /data02/merce/Mapping_reads_assemblies/1008_r1010.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1008_r1010mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1008 -1 /data02/merce/Mapping_reads_assemblies/1011_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1011_2.fastq -S /data02/merce/Mapping_reads_assemblies/1008_r1011.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1008_r1011mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1008 -1 /data02/merce/Mapping_reads_assemblies/1012_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1012_2.fastq -S /data02/merce/Mapping_reads_assemblies/1008_r1012.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1008_r1012mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1008 -1 /data02/merce/Mapping_reads_assemblies/1013_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1013_2.fastq -S /data02/merce/Mapping_reads_assemblies/1008_r1013.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1008_r1013mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1008 -1 /data02/merce/Mapping_reads_assemblies/1014_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1014_2.fastq -S /data02/merce/Mapping_reads_assemblies/1008_r1014.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1008_r1014mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1008 -1 /data02/merce/Mapping_reads_assemblies/1015_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1015_2.fastq -S /data02/merce/Mapping_reads_assemblies/1008_r1015.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1008_r1015mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1008 -1 /data02/merce/Mapping_reads_assemblies/1016_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1016_2.fastq -S /data02/merce/Mapping_reads_assemblies/1008_r1016.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1008_r1016mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1008 -1 /data02/merce/Mapping_reads_assemblies/1019_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1019_2.fastq -S /data02/merce/Mapping_reads_assemblies/1008_r1019.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1008_r1019mapping_log.txt


bowtie2 -x /data02/merce/Mapping_reads_assemblies/1009 -1 /data02/merce/Mapping_reads_assemblies/1001_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1001_2.fastq -S /data02/merce/Mapping_reads_assemblies/1009_r1001.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1009_r1001mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1009 -1 /data02/merce/Mapping_reads_assemblies/1002_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1002_2.fastq -S /data02/merce/Mapping_reads_assemblies/1009_r1002.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1009_r1002mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1009 -1 /data02/merce/Mapping_reads_assemblies/1003_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1003_2.fastq -S /data02/merce/Mapping_reads_assemblies/1009_r1003.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1009_r1003mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1009 -1 /data02/merce/Mapping_reads_assemblies/1004_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1004_2.fastq -S /data02/merce/Mapping_reads_assemblies/1009_r1004.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1009_r1004mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1009 -1 /data02/merce/Mapping_reads_assemblies/1005_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1005_2.fastq -S /data02/merce/Mapping_reads_assemblies/1009_r1005.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1009_r1005mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1009 -1 /data02/merce/Mapping_reads_assemblies/1006_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1006_2.fastq -S /data02/merce/Mapping_reads_assemblies/1009_r1006.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1009_r1006mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1009 -1 /data02/merce/Mapping_reads_assemblies/1007_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1007_2.fastq -S /data02/merce/Mapping_reads_assemblies/1009_r1007.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1009_r1007mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1009 -1 /data02/merce/Mapping_reads_assemblies/1008_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1008_2.fastq -S /data02/merce/Mapping_reads_assemblies/1009_r1008.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1009_r1008mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1009 -1 /data02/merce/Mapping_reads_assemblies/1009_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1009_2.fastq -S /data02/merce/Mapping_reads_assemblies/1009_r1009.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1009_r1009mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1009 -1 /data02/merce/Mapping_reads_assemblies/1010_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1010_2.fastq -S /data02/merce/Mapping_reads_assemblies/1009_r1010.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1009_r1010mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1009 -1 /data02/merce/Mapping_reads_assemblies/1011_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1011_2.fastq -S /data02/merce/Mapping_reads_assemblies/1009_r1011.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1009_r1011mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1009 -1 /data02/merce/Mapping_reads_assemblies/1012_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1012_2.fastq -S /data02/merce/Mapping_reads_assemblies/1009_r1012.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1009_r1012mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1009 -1 /data02/merce/Mapping_reads_assemblies/1013_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1013_2.fastq -S /data02/merce/Mapping_reads_assemblies/1009_r1013.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1009_r1013mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1009 -1 /data02/merce/Mapping_reads_assemblies/1014_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1014_2.fastq -S /data02/merce/Mapping_reads_assemblies/1009_r1014.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1009_r1014mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1009 -1 /data02/merce/Mapping_reads_assemblies/1015_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1015_2.fastq -S /data02/merce/Mapping_reads_assemblies/1009_r1015.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1009_r1015mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1009 -1 /data02/merce/Mapping_reads_assemblies/1016_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1016_2.fastq -S /data02/merce/Mapping_reads_assemblies/1009_r1016.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1009_r1016mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1009 -1 /data02/merce/Mapping_reads_assemblies/1019_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1019_2.fastq -S /data02/merce/Mapping_reads_assemblies/1009_r1019.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1009_r1019mapping_log.txt


bowtie2 -x /data02/merce/Mapping_reads_assemblies/1010 -1 /data02/merce/Mapping_reads_assemblies/1001_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1001_2.fastq -S /data02/merce/Mapping_reads_assemblies/1010_r1001.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1010_r1001mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1010 -1 /data02/merce/Mapping_reads_assemblies/1002_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1002_2.fastq -S /data02/merce/Mapping_reads_assemblies/1010_r1002.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1010_r1002mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1010 -1 /data02/merce/Mapping_reads_assemblies/1003_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1003_2.fastq -S /data02/merce/Mapping_reads_assemblies/1010_r1003.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1010_r1003mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1010 -1 /data02/merce/Mapping_reads_assemblies/1004_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1004_2.fastq -S /data02/merce/Mapping_reads_assemblies/1010_r1004.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1010_r1004mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1010 -1 /data02/merce/Mapping_reads_assemblies/1005_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1005_2.fastq -S /data02/merce/Mapping_reads_assemblies/1010_r1005.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1010_r1005mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1010 -1 /data02/merce/Mapping_reads_assemblies/1006_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1006_2.fastq -S /data02/merce/Mapping_reads_assemblies/1010_r1006.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1010_r1006mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1010 -1 /data02/merce/Mapping_reads_assemblies/1007_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1007_2.fastq -S /data02/merce/Mapping_reads_assemblies/1010_r1007.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1010_r1007mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1010 -1 /data02/merce/Mapping_reads_assemblies/1008_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1008_2.fastq -S /data02/merce/Mapping_reads_assemblies/1010_r1008.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1010_r1008mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1010 -1 /data02/merce/Mapping_reads_assemblies/1009_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1009_2.fastq -S /data02/merce/Mapping_reads_assemblies/1010_r1009.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1010_r1009mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1010 -1 /data02/merce/Mapping_reads_assemblies/1010_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1010_2.fastq -S /data02/merce/Mapping_reads_assemblies/1010_r1010.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1010_r1010mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1010 -1 /data02/merce/Mapping_reads_assemblies/1011_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1011_2.fastq -S /data02/merce/Mapping_reads_assemblies/1010_r1011.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1010_r1011mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1010 -1 /data02/merce/Mapping_reads_assemblies/1012_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1012_2.fastq -S /data02/merce/Mapping_reads_assemblies/1010_r1012.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1010_r1012mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1010 -1 /data02/merce/Mapping_reads_assemblies/1013_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1013_2.fastq -S /data02/merce/Mapping_reads_assemblies/1010_r1013.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1010_r1013mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1010 -1 /data02/merce/Mapping_reads_assemblies/1014_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1014_2.fastq -S /data02/merce/Mapping_reads_assemblies/1010_r1014.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1010_r1014mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1010 -1 /data02/merce/Mapping_reads_assemblies/1015_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1015_2.fastq -S /data02/merce/Mapping_reads_assemblies/1010_r1015.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1010_r1015mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1010 -1 /data02/merce/Mapping_reads_assemblies/1016_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1016_2.fastq -S /data02/merce/Mapping_reads_assemblies/1010_r1016.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1010_r1016mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1010 -1 /data02/merce/Mapping_reads_assemblies/1019_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1019_2.fastq -S /data02/merce/Mapping_reads_assemblies/1010_r1019.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1010_r1019mapping_log.txt


bowtie2 -x /data02/merce/Mapping_reads_assemblies/1011 -1 /data02/merce/Mapping_reads_assemblies/1001_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1001_2.fastq -S /data02/merce/Mapping_reads_assemblies/1011_r1001.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1011_r1001mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1011 -1 /data02/merce/Mapping_reads_assemblies/1002_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1002_2.fastq -S /data02/merce/Mapping_reads_assemblies/1011_r1002.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1011_r1002mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1011 -1 /data02/merce/Mapping_reads_assemblies/1003_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1003_2.fastq -S /data02/merce/Mapping_reads_assemblies/1011_r1003.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1011_r1003mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1011 -1 /data02/merce/Mapping_reads_assemblies/1004_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1004_2.fastq -S /data02/merce/Mapping_reads_assemblies/1011_r1004.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1011_r1004mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1011 -1 /data02/merce/Mapping_reads_assemblies/1005_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1005_2.fastq -S /data02/merce/Mapping_reads_assemblies/1011_r1005.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1011_r1005mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1011 -1 /data02/merce/Mapping_reads_assemblies/1006_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1006_2.fastq -S /data02/merce/Mapping_reads_assemblies/1011_r1006.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1011_r1006mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1011 -1 /data02/merce/Mapping_reads_assemblies/1007_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1007_2.fastq -S /data02/merce/Mapping_reads_assemblies/1011_r1007.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1011_r1007mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1011 -1 /data02/merce/Mapping_reads_assemblies/1008_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1008_2.fastq -S /data02/merce/Mapping_reads_assemblies/1011_r1008.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1011_r1008mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1011 -1 /data02/merce/Mapping_reads_assemblies/1009_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1009_2.fastq -S /data02/merce/Mapping_reads_assemblies/1011_r1009.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1011_r1009mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1011 -1 /data02/merce/Mapping_reads_assemblies/1010_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1010_2.fastq -S /data02/merce/Mapping_reads_assemblies/1011_r1010.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1011_r1010mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1011 -1 /data02/merce/Mapping_reads_assemblies/1011_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1011_2.fastq -S /data02/merce/Mapping_reads_assemblies/1011_r1011.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1011_r1011mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1011 -1 /data02/merce/Mapping_reads_assemblies/1012_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1012_2.fastq -S /data02/merce/Mapping_reads_assemblies/1011_r1012.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1011_r1012mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1011 -1 /data02/merce/Mapping_reads_assemblies/1013_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1013_2.fastq -S /data02/merce/Mapping_reads_assemblies/1011_r1013.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1011_r1013mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1011 -1 /data02/merce/Mapping_reads_assemblies/1014_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1014_2.fastq -S /data02/merce/Mapping_reads_assemblies/1011_r1014.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1011_r1014mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1011 -1 /data02/merce/Mapping_reads_assemblies/1015_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1015_2.fastq -S /data02/merce/Mapping_reads_assemblies/1011_r1015.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1011_r1015mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1011 -1 /data02/merce/Mapping_reads_assemblies/1016_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1016_2.fastq -S /data02/merce/Mapping_reads_assemblies/1011_r1016.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1011_r1016mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1011 -1 /data02/merce/Mapping_reads_assemblies/1019_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1019_2.fastq -S /data02/merce/Mapping_reads_assemblies/1011_r1019.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1011_r1019mapping_log.txt


bowtie2 -x /data02/merce/Mapping_reads_assemblies/1012 -1 /data02/merce/Mapping_reads_assemblies/1001_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1001_2.fastq -S /data02/merce/Mapping_reads_assemblies/1012_r1001.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1012_r1001mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1012 -1 /data02/merce/Mapping_reads_assemblies/1002_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1002_2.fastq -S /data02/merce/Mapping_reads_assemblies/1012_r1002.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1012_r1002mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1012 -1 /data02/merce/Mapping_reads_assemblies/1003_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1003_2.fastq -S /data02/merce/Mapping_reads_assemblies/1012_r1003.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1012_r1003mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1012 -1 /data02/merce/Mapping_reads_assemblies/1004_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1004_2.fastq -S /data02/merce/Mapping_reads_assemblies/1012_r1004.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1012_r1004mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1012 -1 /data02/merce/Mapping_reads_assemblies/1005_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1005_2.fastq -S /data02/merce/Mapping_reads_assemblies/1012_r1005.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1012_r1005mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1012 -1 /data02/merce/Mapping_reads_assemblies/1006_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1006_2.fastq -S /data02/merce/Mapping_reads_assemblies/1012_r1006.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1012_r1006mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1012 -1 /data02/merce/Mapping_reads_assemblies/1007_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1007_2.fastq -S /data02/merce/Mapping_reads_assemblies/1012_r1007.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1012_r1007mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1012 -1 /data02/merce/Mapping_reads_assemblies/1008_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1008_2.fastq -S /data02/merce/Mapping_reads_assemblies/1012_r1008.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1012_r1008mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1012 -1 /data02/merce/Mapping_reads_assemblies/1009_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1009_2.fastq -S /data02/merce/Mapping_reads_assemblies/1012_r1009.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1012_r1009mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1012 -1 /data02/merce/Mapping_reads_assemblies/1010_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1010_2.fastq -S /data02/merce/Mapping_reads_assemblies/1012_r1010.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1012_r1010mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1012 -1 /data02/merce/Mapping_reads_assemblies/1011_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1011_2.fastq -S /data02/merce/Mapping_reads_assemblies/1012_r1011.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1012_r1011mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1012 -1 /data02/merce/Mapping_reads_assemblies/1012_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1012_2.fastq -S /data02/merce/Mapping_reads_assemblies/1012_r1012.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1012_r1012mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1012 -1 /data02/merce/Mapping_reads_assemblies/1013_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1013_2.fastq -S /data02/merce/Mapping_reads_assemblies/1012_r1013.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1012_r1013mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1012 -1 /data02/merce/Mapping_reads_assemblies/1014_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1014_2.fastq -S /data02/merce/Mapping_reads_assemblies/1012_r1014.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1012_r1014mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1012 -1 /data02/merce/Mapping_reads_assemblies/1015_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1015_2.fastq -S /data02/merce/Mapping_reads_assemblies/1012_r1015.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1012_r1015mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1012 -1 /data02/merce/Mapping_reads_assemblies/1016_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1016_2.fastq -S /data02/merce/Mapping_reads_assemblies/1012_r1016.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1012_r1016mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1012 -1 /data02/merce/Mapping_reads_assemblies/1019_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1019_2.fastq -S /data02/merce/Mapping_reads_assemblies/1012_r1019.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1012_r1019mapping_log.txt


bowtie2 -x /data02/merce/Mapping_reads_assemblies/1013 -1 /data02/merce/Mapping_reads_assemblies/1001_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1001_2.fastq -S /data02/merce/Mapping_reads_assemblies/1013_r1001.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1013_r1001mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1013 -1 /data02/merce/Mapping_reads_assemblies/1002_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1002_2.fastq -S /data02/merce/Mapping_reads_assemblies/1013_r1002.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1013_r1002mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1013 -1 /data02/merce/Mapping_reads_assemblies/1003_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1003_2.fastq -S /data02/merce/Mapping_reads_assemblies/1013_r1003.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1013_r1003mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1013 -1 /data02/merce/Mapping_reads_assemblies/1004_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1004_2.fastq -S /data02/merce/Mapping_reads_assemblies/1013_r1004.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1013_r1004mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1013 -1 /data02/merce/Mapping_reads_assemblies/1005_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1005_2.fastq -S /data02/merce/Mapping_reads_assemblies/1013_r1005.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1013_r1005mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1013 -1 /data02/merce/Mapping_reads_assemblies/1006_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1006_2.fastq -S /data02/merce/Mapping_reads_assemblies/1013_r1006.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1013_r1006mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1013 -1 /data02/merce/Mapping_reads_assemblies/1007_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1007_2.fastq -S /data02/merce/Mapping_reads_assemblies/1013_r1007.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1013_r1007mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1013 -1 /data02/merce/Mapping_reads_assemblies/1008_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1008_2.fastq -S /data02/merce/Mapping_reads_assemblies/1013_r1008.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1013_r1008mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1013 -1 /data02/merce/Mapping_reads_assemblies/1009_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1009_2.fastq -S /data02/merce/Mapping_reads_assemblies/1013_r1009.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1013_r1009mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1013 -1 /data02/merce/Mapping_reads_assemblies/1010_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1010_2.fastq -S /data02/merce/Mapping_reads_assemblies/1013_r1010.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1013_r1010mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1013 -1 /data02/merce/Mapping_reads_assemblies/1011_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1011_2.fastq -S /data02/merce/Mapping_reads_assemblies/1013_r1011.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1013_r1011mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1013 -1 /data02/merce/Mapping_reads_assemblies/1012_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1012_2.fastq -S /data02/merce/Mapping_reads_assemblies/1013_r1012.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1013_r1012mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1013 -1 /data02/merce/Mapping_reads_assemblies/1013_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1013_2.fastq -S /data02/merce/Mapping_reads_assemblies/1013_r1013.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1013_r1013mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1013 -1 /data02/merce/Mapping_reads_assemblies/1014_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1014_2.fastq -S /data02/merce/Mapping_reads_assemblies/1013_r1014.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1013_r1014mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1013 -1 /data02/merce/Mapping_reads_assemblies/1015_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1015_2.fastq -S /data02/merce/Mapping_reads_assemblies/1013_r1015.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1013_r1015mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1013 -1 /data02/merce/Mapping_reads_assemblies/1016_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1016_2.fastq -S /data02/merce/Mapping_reads_assemblies/1013_r1016.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1013_r1016mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1013 -1 /data02/merce/Mapping_reads_assemblies/1019_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1019_2.fastq -S /data02/merce/Mapping_reads_assemblies/1013_r1019.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1013_r1019mapping_log.txt


bowtie2 -x /data02/merce/Mapping_reads_assemblies/1014 -1 /data02/merce/Mapping_reads_assemblies/1001_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1001_2.fastq -S /data02/merce/Mapping_reads_assemblies/1014_r1001.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1014_r1001mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1014 -1 /data02/merce/Mapping_reads_assemblies/1002_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1002_2.fastq -S /data02/merce/Mapping_reads_assemblies/1014_r1002.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1014_r1002mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1014 -1 /data02/merce/Mapping_reads_assemblies/1003_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1003_2.fastq -S /data02/merce/Mapping_reads_assemblies/1014_r1003.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1014_r1003mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1014 -1 /data02/merce/Mapping_reads_assemblies/1004_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1004_2.fastq -S /data02/merce/Mapping_reads_assemblies/1014_r1004.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1014_r1004mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1014 -1 /data02/merce/Mapping_reads_assemblies/1005_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1005_2.fastq -S /data02/merce/Mapping_reads_assemblies/1014_r1005.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1014_r1005mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1014 -1 /data02/merce/Mapping_reads_assemblies/1006_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1006_2.fastq -S /data02/merce/Mapping_reads_assemblies/1014_r1006.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1014_r1006mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1014 -1 /data02/merce/Mapping_reads_assemblies/1007_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1007_2.fastq -S /data02/merce/Mapping_reads_assemblies/1014_r1007.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1014_r1007mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1014 -1 /data02/merce/Mapping_reads_assemblies/1008_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1008_2.fastq -S /data02/merce/Mapping_reads_assemblies/1014_r1008.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1014_r1008mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1014 -1 /data02/merce/Mapping_reads_assemblies/1009_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1009_2.fastq -S /data02/merce/Mapping_reads_assemblies/1014_r1009.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1014_r1009mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1014 -1 /data02/merce/Mapping_reads_assemblies/1010_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1010_2.fastq -S /data02/merce/Mapping_reads_assemblies/1014_r1010.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1014_r1010mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1014 -1 /data02/merce/Mapping_reads_assemblies/1011_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1011_2.fastq -S /data02/merce/Mapping_reads_assemblies/1014_r1011.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1014_r1011mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1014 -1 /data02/merce/Mapping_reads_assemblies/1012_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1012_2.fastq -S /data02/merce/Mapping_reads_assemblies/1014_r1012.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1014_r1012mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1014 -1 /data02/merce/Mapping_reads_assemblies/1013_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1013_2.fastq -S /data02/merce/Mapping_reads_assemblies/1014_r1013.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1014_r1013mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1014 -1 /data02/merce/Mapping_reads_assemblies/1014_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1014_2.fastq -S /data02/merce/Mapping_reads_assemblies/1014_r1014.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1014_r1014mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1014 -1 /data02/merce/Mapping_reads_assemblies/1015_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1015_2.fastq -S /data02/merce/Mapping_reads_assemblies/1014_r1015.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1014_r1015mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1014 -1 /data02/merce/Mapping_reads_assemblies/1016_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1016_2.fastq -S /data02/merce/Mapping_reads_assemblies/1014_r1016.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1014_r1016mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1014 -1 /data02/merce/Mapping_reads_assemblies/1019_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1019_2.fastq -S /data02/merce/Mapping_reads_assemblies/1014_r1019.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1014_r1019mapping_log.txt


bowtie2 -x /data02/merce/Mapping_reads_assemblies/1015 -1 /data02/merce/Mapping_reads_assemblies/1001_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1001_2.fastq -S /data02/merce/Mapping_reads_assemblies/1015_r1001.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1015_r1001mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1015 -1 /data02/merce/Mapping_reads_assemblies/1002_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1002_2.fastq -S /data02/merce/Mapping_reads_assemblies/1015_r1002.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1015_r1002mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1015 -1 /data02/merce/Mapping_reads_assemblies/1003_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1003_2.fastq -S /data02/merce/Mapping_reads_assemblies/1015_r1003.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1015_r1003mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1015 -1 /data02/merce/Mapping_reads_assemblies/1004_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1004_2.fastq -S /data02/merce/Mapping_reads_assemblies/1015_r1004.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1015_r1004mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1015 -1 /data02/merce/Mapping_reads_assemblies/1005_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1005_2.fastq -S /data02/merce/Mapping_reads_assemblies/1015_r1005.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1015_r1005mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1015 -1 /data02/merce/Mapping_reads_assemblies/1006_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1006_2.fastq -S /data02/merce/Mapping_reads_assemblies/1015_r1006.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1015_r1006mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1015 -1 /data02/merce/Mapping_reads_assemblies/1007_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1007_2.fastq -S /data02/merce/Mapping_reads_assemblies/1015_r1007.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1015_r1007mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1015 -1 /data02/merce/Mapping_reads_assemblies/1008_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1008_2.fastq -S /data02/merce/Mapping_reads_assemblies/1015_r1008.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1015_r1008mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1015 -1 /data02/merce/Mapping_reads_assemblies/1009_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1009_2.fastq -S /data02/merce/Mapping_reads_assemblies/1015_r1009.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1015_r1009mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1015 -1 /data02/merce/Mapping_reads_assemblies/1010_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1010_2.fastq -S /data02/merce/Mapping_reads_assemblies/1015_r1010.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1015_r1010mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1015 -1 /data02/merce/Mapping_reads_assemblies/1011_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1011_2.fastq -S /data02/merce/Mapping_reads_assemblies/1015_r1011.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1015_r1011mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1015 -1 /data02/merce/Mapping_reads_assemblies/1012_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1012_2.fastq -S /data02/merce/Mapping_reads_assemblies/1015_r1012.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1015_r1012mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1015 -1 /data02/merce/Mapping_reads_assemblies/1013_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1013_2.fastq -S /data02/merce/Mapping_reads_assemblies/1015_r1013.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1015_r1013mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1015 -1 /data02/merce/Mapping_reads_assemblies/1014_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1014_2.fastq -S /data02/merce/Mapping_reads_assemblies/1015_r1014.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1015_r1014mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1015 -1 /data02/merce/Mapping_reads_assemblies/1015_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1015_2.fastq -S /data02/merce/Mapping_reads_assemblies/1015_r1015.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1015_r1015mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1015 -1 /data02/merce/Mapping_reads_assemblies/1016_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1016_2.fastq -S /data02/merce/Mapping_reads_assemblies/1015_r1016.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1015_r1016mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1015 -1 /data02/merce/Mapping_reads_assemblies/1019_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1019_2.fastq -S /data02/merce/Mapping_reads_assemblies/1015_r1019.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1015_r1019mapping_log.txt


bowtie2 -x /data02/merce/Mapping_reads_assemblies/1016 -1 /data02/merce/Mapping_reads_assemblies/1001_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1001_2.fastq -S /data02/merce/Mapping_reads_assemblies/1016_r1001.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1016_r1001mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1016 -1 /data02/merce/Mapping_reads_assemblies/1002_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1002_2.fastq -S /data02/merce/Mapping_reads_assemblies/1016_r1002.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1016_r1002mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1016 -1 /data02/merce/Mapping_reads_assemblies/1003_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1003_2.fastq -S /data02/merce/Mapping_reads_assemblies/1016_r1003.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1016_r1003mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1016 -1 /data02/merce/Mapping_reads_assemblies/1004_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1004_2.fastq -S /data02/merce/Mapping_reads_assemblies/1016_r1004.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1016_r1004mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1016 -1 /data02/merce/Mapping_reads_assemblies/1005_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1005_2.fastq -S /data02/merce/Mapping_reads_assemblies/1016_r1005.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1016_r1005mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1016 -1 /data02/merce/Mapping_reads_assemblies/1006_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1006_2.fastq -S /data02/merce/Mapping_reads_assemblies/1016_r1006.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1016_r1006mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1016 -1 /data02/merce/Mapping_reads_assemblies/1007_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1007_2.fastq -S /data02/merce/Mapping_reads_assemblies/1016_r1007.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1016_r1007mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1016 -1 /data02/merce/Mapping_reads_assemblies/1008_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1008_2.fastq -S /data02/merce/Mapping_reads_assemblies/1016_r1008.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1016_r1008mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1016 -1 /data02/merce/Mapping_reads_assemblies/1009_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1009_2.fastq -S /data02/merce/Mapping_reads_assemblies/1016_r1009.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1016_r1009mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1016 -1 /data02/merce/Mapping_reads_assemblies/1010_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1010_2.fastq -S /data02/merce/Mapping_reads_assemblies/1016_r1010.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1016_r1010mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1016 -1 /data02/merce/Mapping_reads_assemblies/1011_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1011_2.fastq -S /data02/merce/Mapping_reads_assemblies/1016_r1011.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1016_r1011mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1016 -1 /data02/merce/Mapping_reads_assemblies/1012_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1012_2.fastq -S /data02/merce/Mapping_reads_assemblies/1016_r1012.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1016_r1012mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1016 -1 /data02/merce/Mapping_reads_assemblies/1013_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1013_2.fastq -S /data02/merce/Mapping_reads_assemblies/1016_r1013.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1016_r1013mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1016 -1 /data02/merce/Mapping_reads_assemblies/1014_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1014_2.fastq -S /data02/merce/Mapping_reads_assemblies/1016_r1014.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1016_r1014mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1016 -1 /data02/merce/Mapping_reads_assemblies/1015_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1015_2.fastq -S /data02/merce/Mapping_reads_assemblies/1016_r1015.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1016_r1015mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1016 -1 /data02/merce/Mapping_reads_assemblies/1016_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1016_2.fastq -S /data02/merce/Mapping_reads_assemblies/1016_r1016.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1016_r1016mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1016 -1 /data02/merce/Mapping_reads_assemblies/1019_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1019_2.fastq -S /data02/merce/Mapping_reads_assemblies/1016_r1019.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1016_r1019mapping_log.txt


bowtie2 -x /data02/merce/Mapping_reads_assemblies/1019 -1 /data02/merce/Mapping_reads_assemblies/1001_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1001_2.fastq -S /data02/merce/Mapping_reads_assemblies/1019_r1001.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1019_r1001mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1019 -1 /data02/merce/Mapping_reads_assemblies/1002_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1002_2.fastq -S /data02/merce/Mapping_reads_assemblies/1019_r1002.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1019_r1002mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1019 -1 /data02/merce/Mapping_reads_assemblies/1003_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1003_2.fastq -S /data02/merce/Mapping_reads_assemblies/1019_r1003.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1019_r1003mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1019 -1 /data02/merce/Mapping_reads_assemblies/1004_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1004_2.fastq -S /data02/merce/Mapping_reads_assemblies/1019_r1004.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1019_r1004mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1019 -1 /data02/merce/Mapping_reads_assemblies/1005_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1005_2.fastq -S /data02/merce/Mapping_reads_assemblies/1019_r1005.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1019_r1005mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1019 -1 /data02/merce/Mapping_reads_assemblies/1006_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1006_2.fastq -S /data02/merce/Mapping_reads_assemblies/1019_r1006.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1019_r1006mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1019 -1 /data02/merce/Mapping_reads_assemblies/1007_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1007_2.fastq -S /data02/merce/Mapping_reads_assemblies/1019_r1007.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1019_r1007mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1019 -1 /data02/merce/Mapping_reads_assemblies/1008_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1008_2.fastq -S /data02/merce/Mapping_reads_assemblies/1019_r1008.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1019_r1008mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1019 -1 /data02/merce/Mapping_reads_assemblies/1009_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1009_2.fastq -S /data02/merce/Mapping_reads_assemblies/1019_r1009.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1019_r1009mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1019 -1 /data02/merce/Mapping_reads_assemblies/1010_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1010_2.fastq -S /data02/merce/Mapping_reads_assemblies/1019_r1010.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1019_r1010mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1019 -1 /data02/merce/Mapping_reads_assemblies/1011_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1011_2.fastq -S /data02/merce/Mapping_reads_assemblies/1019_r1011.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1019_r1011mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1019 -1 /data02/merce/Mapping_reads_assemblies/1012_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1012_2.fastq -S /data02/merce/Mapping_reads_assemblies/1019_r1012.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1019_r1012mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1019 -1 /data02/merce/Mapping_reads_assemblies/1013_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1013_2.fastq -S /data02/merce/Mapping_reads_assemblies/1019_r1013.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1019_r1013mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1019 -1 /data02/merce/Mapping_reads_assemblies/1014_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1014_2.fastq -S /data02/merce/Mapping_reads_assemblies/1019_r1014.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1019_r1014mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1019 -1 /data02/merce/Mapping_reads_assemblies/1015_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1015_2.fastq -S /data02/merce/Mapping_reads_assemblies/1019_r1015.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1019_r1015mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1019 -1 /data02/merce/Mapping_reads_assemblies/1016_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1016_2.fastq -S /data02/merce/Mapping_reads_assemblies/1019_r1016.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1019_r1016mapping_log.txt

bowtie2 -x /data02/merce/Mapping_reads_assemblies/1019 -1 /data02/merce/Mapping_reads_assemblies/1019_1.fastq -2 /data02/merce/Mapping_reads_assemblies/1019_2.fastq -S /data02/merce/Mapping_reads_assemblies/1019_r1019.sam 2>&1 | tee -i /data02/merce/Mapping_reads_assemblies/Bowtie2_logs/1019_r1019mapping_log.txt





































