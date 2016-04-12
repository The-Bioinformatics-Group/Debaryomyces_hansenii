#!/usr/bin/env bash

mkdir /data02/merce/mapping_meyerozymaguillermondii/

mkdir /data02/merce/mapping_meyerozymaguillermondii/Bowtie2_logs

bowtie2-build /home/merce/other_references_data/GCA_000149425.1_ASM14942v1_genomic.fna Reference_Megui

bowtie2 -x /home/merce/other_references_data/Reference_Megui -1 /home/merce/raw_reads/fastq_uniq/1001_1.fastq -2 /home/merce/raw_reads/fastq_uniq/1001_2.fastq -S /data02/merce/mapping_meyerozymaguillermondii/Megui_r1001.sam 2>&1 | tee -i /data02/merce/mapping_meyerozymaguillermondii/Bowtie2_logs/Megui_r1001mapping_log.txt

bowtie2 -x /home/merce/other_references_data/Reference_Megui -1 /home/merce/raw_reads/fastq_uniq/1002_1.fastq -2 /home/merce/raw_reads/fastq_uniq/1002_2.fastq -S /data02/merce/mapping_meyerozymaguillermondii/Megui_r1002.sam 2>&1 | tee -i /data02/merce/mapping_meyerozymaguillermondii/Bowtie2_logs/Megui_r1002mapping_log.txt

bowtie2 -x /home/merce/other_references_data/Reference_Megui -1 /home/merce/raw_reads/fastq_uniq/1003_1.fastq -2 /home/merce/raw_reads/fastq_uniq/1003_2.fastq -S /data02/merce/mapping_meyerozymaguillermondii/Megui_r1003.sam 2>&1 | tee -i /data02/merce/mapping_meyerozymaguillermondii/Bowtie2_logs/Megui_r1003mapping_log.txt

bowtie2 -x /home/merce/other_references_data/Reference_Megui -1 /home/merce/raw_reads/fastq_uniq/1004_1.fastq -2 /home/merce/raw_reads/fastq_uniq/1004_2.fastq -S /data02/merce/mapping_meyerozymaguillermondii/Megui_r1004.sam 2>&1 | tee -i /data02/merce/mapping_meyerozymaguillermondii/Bowtie2_logs/Megui_r1004mapping_log.txt

bowtie2 -x /home/merce/other_references_data/Reference_Megui -1 /home/merce/raw_reads/fastq_uniq/1005_1.fastq -2 /home/merce/raw_reads/fastq_uniq/1005_2.fastq -S /data02/merce/mapping_meyerozymaguillermondii/Megui_r1005.sam 2>&1 | tee -i /data02/merce/mapping_meyerozymaguillermondii/Bowtie2_logs/Megui_r1005mapping_log.txt

bowtie2 -x /home/merce/other_references_data/Reference_Megui -1 /home/merce/raw_reads/fastq_uniq/1006_1.fastq -2 /home/merce/raw_reads/fastq_uniq/1006_2.fastq -S /data02/merce/mapping_meyerozymaguillermondii/Megui_r1006.sam 2>&1 | tee -i /data02/merce/mapping_meyerozymaguillermondii/Bowtie2_logs/Megui_r1006mapping_log.txt

bowtie2 -x /home/merce/other_references_data/Reference_Megui -1 /home/merce/raw_reads/fastq_uniq/1007_1.fastq -2 /home/merce/raw_reads/fastq_uniq/1007_2.fastq -S /data02/merce/mapping_meyerozymaguillermondii/Megui_r1007.sam 2>&1 | tee -i /data02/merce/mapping_meyerozymaguillermondii/Bowtie2_logs/Megui_r1007mapping_log.txt

bowtie2 -x /home/merce/other_references_data/Reference_Megui -1 /home/merce/raw_reads/fastq_uniq/1008_1.fastq -2 /home/merce/raw_reads/fastq_uniq/1008_2.fastq -S /data02/merce/mapping_meyerozymaguillermondii/Megui_r1008.sam 2>&1 | tee -i /data02/merce/mapping_meyerozymaguillermondii/Bowtie2_logs/Megui_r1008mapping_log.txt

bowtie2 -x /home/merce/other_references_data/Reference_Megui -1 /home/merce/raw_reads/fastq_uniq/1009_1.fastq -2 /home/merce/raw_reads/fastq_uniq/1009_2.fastq -S /data02/merce/mapping_meyerozymaguillermondii/Megui_r1009.sam 2>&1 | tee -i /data02/merce/mapping_meyerozymaguillermondii/Bowtie2_logs/Megui_r1009mapping_log.txt

bowtie2 -x /home/merce/other_references_data/Reference_Megui -1 /home/merce/raw_reads/fastq_uniq/1010_1.fastq -2 /home/merce/raw_reads/fastq_uniq/1010_2.fastq -S /data02/merce/mapping_meyerozymaguillermondii/Megui_r1010.sam 2>&1 | tee -i /data02/merce/mapping_meyerozymaguillermondii/Bowtie2_logs/Megui_r1010mapping_log.txt

bowtie2 -x /home/merce/other_references_data/Reference_Megui -1 /home/merce/raw_reads/fastq_uniq/1011_1.fastq -2 /home/merce/raw_reads/fastq_uniq/1011_2.fastq -S /data02/merce/mapping_meyerozymaguillermondii/Megui_r1011.sam 2>&1 | tee -i /data02/merce/mapping_meyerozymaguillermondii/Bowtie2_logs/Megui_r1011mapping_log.txt

bowtie2 -x /home/merce/other_references_data/Reference_Megui -1 /home/merce/raw_reads/fastq_uniq/1012_1.fastq -2 /home/merce/raw_reads/fastq_uniq/1012_2.fastq -S /data02/merce/mapping_meyerozymaguillermondii/Megui_r1012.sam 2>&1 | tee -i /data02/merce/mapping_meyerozymaguillermondii/Bowtie2_logs/Megui_r1012mapping_log.txt

bowtie2 -x /home/merce/other_references_data/Reference_Megui -1 /home/merce/raw_reads/fastq_uniq/1013_1.fastq -2 /home/merce/raw_reads/fastq_uniq/1013_2.fastq -S /data02/merce/mapping_meyerozymaguillermondii/Megui_r1013.sam 2>&1 | tee -i /data02/merce/mapping_meyerozymaguillermondii/Bowtie2_logs/Megui_r1013mapping_log.txt

bowtie2 -x /home/merce/other_references_data/Reference_Megui -1 /home/merce/raw_reads/fastq_uniq/1014_1.fastq -2 /home/merce/raw_reads/fastq_uniq/1014_2.fastq -S /data02/merce/mapping_meyerozymaguillermondii/Megui_r1014.sam 2>&1 | tee -i /data02/merce/mapping_meyerozymaguillermondii/Bowtie2_logs/Megui_r1014mapping_log.txt

bowtie2 -x /home/merce/other_references_data/Reference_Megui -1 /home/merce/raw_reads/fastq_uniq/1015_1.fastq -2 /home/merce/raw_reads/fastq_uniq/1015_2.fastq -S /data02/merce/mapping_meyerozymaguillermondii/Megui_r1015.sam 2>&1 | tee -i /data02/merce/mapping_meyerozymaguillermondii/Bowtie2_logs/Megui_r1015mapping_log.txt

bowtie2 -x /home/merce/other_references_data/Reference_Megui -1 /home/merce/raw_reads/fastq_uniq/1016_1.fastq -2 /home/merce/raw_reads/fastq_uniq/1016_2.fastq -S /data02/merce/mapping_meyerozymaguillermondii/Megui_r1016.sam 2>&1 | tee -i /data02/merce/mapping_meyerozymaguillermondii/Bowtie2_logs/Megui_r1016mapping_log.txt

bowtie2 -x /home/merce/other_references_data/Reference_Megui -1 /home/merce/raw_reads/fastq_uniq/1019_1.fastq -2 /home/merce/raw_reads/fastq_uniq/1019_2.fastq -S /data02/merce/mapping_meyerozymaguillermondii/Megui_r1019.sam 2>&1 | tee -i /data02/merce/mapping_meyerozymaguillermondii/Bowtie2_logs/Megui_r1019mapping_log.txt

