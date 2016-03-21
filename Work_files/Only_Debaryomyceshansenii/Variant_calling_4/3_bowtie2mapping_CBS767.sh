#!/usr/bin/env bash

#To be used inside DNA server.

#Create new folder where files will be saved:

mkdir /data02/merce/deha_vcalling/Bowtie2

mkdir /data02/merce/deha_vcalling/Bowtie2/screen_outputs_bowtie2

#Index database for CBS767:

bowtie2-build /home/merce/CBS767/GCA_000006445.2_ASM644v2_genomic.fna /data02/merce/deha_vcalling/Bowtie2/Reference_index_Deha

#Map reads to reference:

#Output NUMBERofStrain_Deha(AH or BC for different libraries, that comes from the codes: AH9BY4ADXX and BC47HDACXX).

#Output from the screen output from bowtie2 saved on the folder screen_outputs_bowtie2.

bowtie2 -x /data02/merce/deha_vcalling/Bowtie2/Reference_index_Deha -1 /data02/merce/deha_vcalling/fastq_uniq/1001_1.fastq -2 /data02/merce/deha_vcalling/fastq_uniq/1001_2.fastq -S /data02/merce/deha_vcalling/Bowtie2/1001.sam 2>&1 | tee -i /data02/merce/deha_vcalling/Bowtie2/screen_outputs_bowtie2/1001AHmapping_log.txt

bowtie2 -x /data02/merce/deha_vcalling/Bowtie2/Reference_index_Deha -1 /data02/merce/deha_vcalling/fastq_uniq/1002_1.fastq -2 /data02/merce/deha_vcalling/fastq_uniq/1002_2.fastq -S /data02/merce/deha_vcalling/Bowtie2/1002.sam 2>&1 | tee -i /data02/merce/deha_vcalling/Bowtie2/screen_outputs_bowtie2/1002AHmapping_log.txt

bowtie2 -x /data02/merce/deha_vcalling/Bowtie2/Reference_index_Deha -1 /data02/merce/deha_vcalling/fastq_uniq/1003_1.fastq -2 /data02/merce/deha_vcalling/fastq_uniq/1003_2.fastq -S /data02/merce/deha_vcalling/Bowtie2/1003.sam 2>&1 | tee -i /data02/merce/deha_vcalling/Bowtie2/screen_outputs_bowtie2/1003AHmapping_log.txt

bowtie2 -x /data02/merce/deha_vcalling/Bowtie2/Reference_index_Deha -1 /data02/merce/deha_vcalling/fastq_uniq/1004_1.fastq -2 /data02/merce/deha_vcalling/fastq_uniq/1004_2.fastq -S /data02/merce/deha_vcalling/Bowtie2/1004.sam 2>&1 | tee -i /data02/merce/deha_vcalling/Bowtie2/screen_outputs_bowtie2/1004AHmapping_log.txt

bowtie2 -x /data02/merce/deha_vcalling/Bowtie2/Reference_index_Deha -1 /data02/merce/deha_vcalling/fastq_uniq/1005_1.fastq -2 /data02/merce/deha_vcalling/fastq_uniq/1005_2.fastq -S /data02/merce/deha_vcalling/Bowtie2/1005.sam 2>&1 | tee -i /data02/merce/deha_vcalling/Bowtie2/screen_outputs_bowtie2/1005AHmapping_log.txt

bowtie2 -x /data02/merce/deha_vcalling/Bowtie2/Reference_index_Deha -1 /data02/merce/deha_vcalling/fastq_uniq/1007_1.fastq -2 /data02/merce/deha_vcalling/fastq_uniq/1007_2.fastq -S /data02/merce/deha_vcalling/Bowtie2/1007.sam 2>&1 | tee -i /data02/merce/deha_vcalling/Bowtie2/screen_outputs_bowtie2/1007AHmapping_log.txt

bowtie2 -x /data02/merce/deha_vcalling/Bowtie2/Reference_index_Deha -1 /data02/merce/deha_vcalling/fastq_uniq/1008_1.fastq -2 /data02/merce/deha_vcalling/fastq_uniq/1008_2.fastq -S /data02/merce/deha_vcalling/Bowtie2/1008.sam 2>&1 | tee -i /data02/merce/deha_vcalling/Bowtie2/screen_outputs_bowtie2/1008AHmapping_log.txt

bowtie2 -x /data02/merce/deha_vcalling/Bowtie2/Reference_index_Deha -1 /data02/merce/deha_vcalling/fastq_uniq/1013_1.fastq -2 /data02/merce/deha_vcalling/fastq_uniq/1013_2.fastq -S /data02/merce/deha_vcalling/Bowtie2/1013.sam 2>&1 | tee -i /data02/merce/deha_vcalling/Bowtie2/screen_outputs_bowtie2/1013AHmapping_log.txt

bowtie2 -x /data02/merce/deha_vcalling/Bowtie2/Reference_index_Deha -1 /data02/merce/deha_vcalling/fastq_uniq/1014_1.fastq -2 /data02/merce/deha_vcalling/fastq_uniq/1014_2.fastq -S /data02/merce/deha_vcalling/Bowtie2/1014.sam 2>&1 | tee -i /data02/merce/deha_vcalling/Bowtie2/screen_outputs_bowtie2/1014AHmapping_log.txt

bowtie2 -x /data02/merce/deha_vcalling/Bowtie2/Reference_index_Deha -1 /data02/merce/deha_vcalling/fastq_uniq/1015_1.fastq -2 /data02/merce/deha_vcalling/fastq_uniq/1015_2.fastq -S /data02/merce/deha_vcalling/Bowtie2/1015.sam 2>&1 | tee -i /data02/merce/deha_vcalling/Bowtie2/screen_outputs_bowtie2/1015AHmapping_log.txt

bowtie2 -x /data02/merce/deha_vcalling/Bowtie2/Reference_index_Deha -1 /data02/merce/deha_vcalling/fastq_uniq/1016_1.fastq -2 /data02/merce/deha_vcalling/fastq_uniq/1016_2.fastq -S /data02/merce/deha_vcalling/Bowtie2/1016.sam 2>&1 | tee -i /data02/merce/deha_vcalling/Bowtie2/screen_outputs_bowtie2/1016AHmapping_log.txt

bowtie2 -x /data02/merce/deha_vcalling/Bowtie2/Reference_index_Deha -1 /data02/merce/deha_vcalling/fastq_uniq/1019_1.fastq -2 /data02/merce/deha_vcalling/fastq_uniq/1019_2.fastq -S /data02/merce/deha_vcalling/Bowtie2/1019.sam 2>&1 | tee -i /data02/merce/deha_vcalling/Bowtie2/screen_outputs_bowtie2/1019AHmapping_log.txt

#Create a folder for files with the stdout and stderr from the commands:

mkdir /data02/merce/deha_vcalling/Bowtie2/logs

#Samtools to convert sam to bam and sort:

samtools view -Sb /data02/merce/deha_vcalling/Bowtie2/1001.sam | samtools sort - /data02/merce/deha_vcalling/Bowtie2/1001_sorted > /data02/merce/deha_vcalling/Bowtie2/logs/1001AHsamtools.log 2>&1

samtools view -Sb /data02/merce/deha_vcalling/Bowtie2/1002.sam | samtools sort - /data02/merce/deha_vcalling/Bowtie2/1002_sorted > /data02/merce/deha_vcalling/Bowtie2/logs/1002AHsamtools.log 2>&1

samtools view -Sb /data02/merce/deha_vcalling/Bowtie2/1003.sam | samtools sort - /data02/merce/deha_vcalling/Bowtie2/1003_sorted > /data02/merce/deha_vcalling/Bowtie2/logs/1003AHsamtools.log 2>&1

samtools view -Sb /data02/merce/deha_vcalling/Bowtie2/1004.sam | samtools sort - /data02/merce/deha_vcalling/Bowtie2/1004_sorted > /data02/merce/deha_vcalling/Bowtie2/logs/1004AHsamtools.log 2>&1

samtools view -Sb /data02/merce/deha_vcalling/Bowtie2/1005.sam | samtools sort - /data02/merce/deha_vcalling/Bowtie2/1005_sorted > /data02/merce/deha_vcalling/Bowtie2/logs/1005AHsamtools.log 2>&1

samtools view -Sb /data02/merce/deha_vcalling/Bowtie2/1007.sam | samtools sort - /data02/merce/deha_vcalling/Bowtie2/1007_sorted > /data02/merce/deha_vcalling/Bowtie2/logs/1007AHsamtools.log 2>&1

samtools view -Sb /data02/merce/deha_vcalling/Bowtie2/1008.sam | samtools sort - /data02/merce/deha_vcalling/Bowtie2/1008_sorted > /data02/merce/deha_vcalling/Bowtie2/logs/1008AHsamtools.log 2>&1

samtools view -Sb /data02/merce/deha_vcalling/Bowtie2/1013.sam | samtools sort - /data02/merce/deha_vcalling/Bowtie2/1013_sorted > /data02/merce/deha_vcalling/Bowtie2/logs/1013AHsamtools.log 2>&1

samtools view -Sb /data02/merce/deha_vcalling/Bowtie2/1014.sam | samtools sort - /data02/merce/deha_vcalling/Bowtie2/1014_sorted > /data02/merce/deha_vcalling/Bowtie2/logs/1014AHsamtools.log 2>&1

samtools view -Sb /data02/merce/deha_vcalling/Bowtie2/1015.sam | samtools sort - /data02/merce/deha_vcalling/Bowtie2/1015_sorted > /data02/merce/deha_vcalling/Bowtie2/logs/1015AHsamtools.log 2>&1

samtools view -Sb /data02/merce/deha_vcalling/Bowtie2/1016.sam | samtools sort - /data02/merce/deha_vcalling/Bowtie2/1016_sorted > /data02/merce/deha_vcalling/Bowtie2/logs/1016AHsamtools.log 2>&1

samtools view -Sb /data02/merce/deha_vcalling/Bowtie2/1019.sam | samtools sort - /data02/merce/deha_vcalling/Bowtie2/1019_sorted > /data02/merce/deha_vcalling/Bowtie2/logs/1019AHsamtools.log 2>&1

#Index bam files:

samtools index /data02/merce/deha_vcalling/Bowtie2/1001_sorted.bam /data02/merce/deha_vcalling/Bowtie2/1001_sorted.bai

samtools index /data02/merce/deha_vcalling/Bowtie2/1002_sorted.bam /data02/merce/deha_vcalling/Bowtie2/1002_sorted.bai

samtools index /data02/merce/deha_vcalling/Bowtie2/1003_sorted.bam /data02/merce/deha_vcalling/Bowtie2/1003_sorted.bai

samtools index /data02/merce/deha_vcalling/Bowtie2/1004_sorted.bam /data02/merce/deha_vcalling/Bowtie2/1004_sorted.bai

samtools index /data02/merce/deha_vcalling/Bowtie2/1005_sorted.bam /data02/merce/deha_vcalling/Bowtie2/1005_sorted.bai

samtools index /data02/merce/deha_vcalling/Bowtie2/1007_sorted.bam /data02/merce/deha_vcalling/Bowtie2/1007_sorted.bai

samtools index /data02/merce/deha_vcalling/Bowtie2/1008_sorted.bam /data02/merce/deha_vcalling/Bowtie2/1008_sorted.bai

samtools index /data02/merce/deha_vcalling/Bowtie2/1013_sorted.bam /data02/merce/deha_vcalling/Bowtie2/1013_sorted.bai

samtools index /data02/merce/deha_vcalling/Bowtie2/1014_sorted.bam /data02/merce/deha_vcalling/Bowtie2/1014_sorted.bai

samtools index /data02/merce/deha_vcalling/Bowtie2/1015_sorted.bam /data02/merce/deha_vcalling/Bowtie2/1015_sorted.bai

samtools index /data02/merce/deha_vcalling/Bowtie2/1016_sorted.bam /data02/merce/deha_vcalling/Bowtie2/1016_sorted.bai

samtools index /data02/merce/deha_vcalling/Bowtie2/1019_sorted.bam /data02/merce/deha_vcalling/Bowtie2/1019_sorted.bai

