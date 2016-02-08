#!/usr/bin/env bash

#New folder for outputs:

mkdir outputs

#Control:

bowtie2 -x /data02/merce/mapping_debaryomycesfabryi/Reference_DebFab -1 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1001_1.fastq -2 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1001_2.fastq -S 1001_DehaAH.sam 2>&1 | tee -i /data02/merce/mapping_debaryomycesfabryi/outputs/1001AHmapping_log.txt

bowtie2 -x /data02/merce/mapping_debaryomycesfabryi/Reference_DebFab -1 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1002_1.fastq -2 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1002_2.fastq -S 1002_DehaAH.sam 2>&1 | tee -i /data02/merce/mapping_debaryomycesfabryi/outputs/1002AHmapping_log.txt

bowtie2 -x /data02/merce/mapping_debaryomycesfabryi/Reference_DebFab -1 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1001_1.fastq -2 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1001_2.fastq -S 1001_DehaBC.sam 2>&1 | tee -i /data02/merce/mapping_debaryomycesfabryi/outputs/1001BCmapping_log.txt

bowtie2 -x /data02/merce/mapping_debaryomycesfabryi/Reference_DebFab -1 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1002_1.fastq -2 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1002_2.fastq -S 1002_DehaBC.sam 2>&1 | tee -i /data02/merce/mapping_debaryomycesfabryi/outputs/1002BCmapping_log.txt

#Different species:

bowtie2 -x /data02/merce/mapping_debaryomycesfabryi/Reference_DebFab -1 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1006_1.fastq -2 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1006_2.fastq -S 1006_DehaAH.sam 2>&1 | tee -i /data02/merce/mapping_debaryomycesfabryi/outputs/1006AHmapping_log.txt

bowtie2 -x /data02/merce/mapping_debaryomycesfabryi/Reference_DebFab -1 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1006_1.fastq -2 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1006_2.fastq -S 1006_DehaBC.sam 2>&1 | tee -i /data02/merce/mapping_debaryomycesfabryi/outputs/1006BCmapping_log.txt

bowtie2 -x /data02/merce/mapping_debaryomycesfabryi/Reference_DebFab -1 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1010_1.fastq -2 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1010_2.fastq -S 1010_DehaAH.sam 2>&1 | tee -i /data02/merce/mapping_debaryomycesfabryi/outputs/1010AHmapping_log.txt

bowtie2 -x /data02/merce/mapping_debaryomycesfabryi/Reference_DebFab -1 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1010_1.fastq -2 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1010_2.fastq -S 1010_DehaBC.sam 2>&1 | tee -i /data02/merce/mapping_debaryomycesfabryi/outputs/1010BCmapping_log.txt

bowtie2 -x /data02/merce/mapping_debaryomycesfabryi/Reference_DebFab -1 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1012_1.fastq -2 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1012_2.fastq -S 1012_DehaAH.sam 2>&1 | tee -i /data02/merce/mapping_debaryomycesfabryi/outputs/1012AHmapping_log.txt

bowtie2 -x /data02/merce/mapping_debaryomycesfabryi/Reference_DebFab -1 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1012_1.fastq -2 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1012_2.fastq -S 1012_DehaBC.sam 2>&1 | tee -i /data02/merce/mapping_debaryomycesfabryi/outputs/1012BCmapping_log.txt

#Hybrid strains:

bowtie2 -x /data02/merce/mapping_debaryomycesfabryi/Reference_DebFab -1 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1009_1.fastq -2 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1009_2.fastq -S 1009_DehaAH.sam 2>&1 | tee -i /data02/merce/mapping_debaryomycesfabryi/outputs/1009AHmapping_log.txt

bowtie2 -x /data02/merce/mapping_debaryomycesfabryi/Reference_DebFab -1 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1009_1.fastq -2 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1009_2.fastq -S 1009_DehaBC.sam 2>&1 | tee -i /data02/merce/mapping_debaryomycesfabryi/outputs/1009BCmapping_log.txt

bowtie2 -x /data02/merce/mapping_debaryomycesfabryi/Reference_DebFab -1 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1011_1.fastq -2 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1011_2.fastq -S 1011_DehaAH.sam 2>&1 | tee -i /data02/merce/mapping_debaryomycesfabryi/outputs/1011AHmapping_log.txt

bowtie2 -x /data02/merce/mapping_debaryomycesfabryi/Reference_DebFab -1 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1011_1.fastq -2 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1011_2.fastq -S 1011_DehaBC.sam 2>&1 | tee -i /data02/merce/mapping_debaryomycesfabryi/outputs/1011BCmapping_log.txt
