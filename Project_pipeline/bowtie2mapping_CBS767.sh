#!/usr/bin/env bash

#To be used inside DNA server.

#Create new folder where files will be saved:

mkdir ~/Bowtie2

mkdir ~/Bowtie2/screen_outputs_bowtie2

#Index database for CBS767:

bowtie2-build /home/merce/CBS767/GCA_000006445.2_ASM644v2_genomic.fna ~/Bowtie2/Reference_index_Deha

#Map reads to reference:

#Output NUMBERofStrain_Deha(AH or BC for different libraries, that comes from the codes: AH9BY4ADXX and BC47HDACXX).

#Output from the screen output from bowtie2 saved on the folder screen_outputs_bowtie2.

bowtie2 -x ~/Bowtie2/Reference_index_Deha -1 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1001_1.fastq -2 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1001_2.fastq -S ~/Bowtie2/1001_DehaAH.sam 2>&1 | tee -i ~/Bowtie2/screen_outputs_bowtie2/1001AHmapping_log.txt

bowtie2 -x ~/Bowtie2/Reference_index_Deha -1 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1002_1.fastq -2 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1002_2.fastq -S ~/Bowtie2/1002_DehaAH.sam 2>&1 | tee -i ~/Bowtie2/screen_outputs_bowtie2/1002AHmapping_log.txt

bowtie2 -x ~/Bowtie2/Reference_index_Deha -1 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1003_1.fastq -2 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1003_2.fastq -S ~/Bowtie2/1003_DehaAH.sam 2>&1 | tee -i ~/Bowtie2/screen_outputs_bowtie2/1003AHmapping_log.txt

bowtie2 -x ~/Bowtie2/Reference_index_Deha -1 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1004_1.fastq -2 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1004_2.fastq -S ~/Bowtie2/1004_DehaAH.sam 2>&1 | tee -i ~/Bowtie2/screen_outputs_bowtie2/1004AHmapping_log.txt

bowtie2 -x ~/Bowtie2/Reference_index_Deha -1 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1005_1.fastq -2 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1005_2.fastq -S ~/Bowtie2/1005_DehaAH.sam 2>&1 | tee -i ~/Bowtie2/screen_outputs_bowtie2/1005AHmapping_log.txt

bowtie2 -x ~/Bowtie2/Reference_index_Deha -1 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1006_1.fastq -2 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1006_2.fastq -S ~/Bowtie2/1006_DehaAH.sam 2>&1 | tee -i ~/Bowtie2/screen_outputs_bowtie2/1006AHmapping_log.txt

bowtie2 -x ~/Bowtie2/Reference_index_Deha -1 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1007_1.fastq -2 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1007_2.fastq -S ~/Bowtie2/1007_DehaAH.sam 2>&1 | tee -i ~/Bowtie2/screen_outputs_bowtie2/1007AHmapping_log.txt

bowtie2 -x ~/Bowtie2/Reference_index_Deha -1 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1008_1.fastq -2 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1008_2.fastq -S ~/Bowtie2/1008_DehaAH.sam 2>&1 | tee -i ~/Bowtie2/screen_outputs_bowtie2/1008AHmapping_log.txt

bowtie2 -x ~/Bowtie2/Reference_index_Deha -1 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1009_1.fastq -2 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1009_2.fastq -S ~/Bowtie2/1009_DehaAH.sam 2>&1 | tee -i ~/Bowtie2/screen_outputs_bowtie2/1009AHmapping_log.txt

bowtie2 -x ~/Bowtie2/Reference_index_Deha -1 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1010_1.fastq -2 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1010_2.fastq -S ~/Bowtie2/1010_DehaAH.sam 2>&1 | tee -i ~/Bowtie2/screen_outputs_bowtie2/1010AHmapping_log.txt

bowtie2 -x ~/Bowtie2/Reference_index_Deha -1 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1011_1.fastq -2 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1011_2.fastq -S ~/Bowtie2/1011_DehaAH.sam 2>&1 | tee -i ~/Bowtie2/screen_outputs_bowtie2/1011AHmapping_log.txt

bowtie2 -x ~/Bowtie2/Reference_index_Deha -1 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1012_1.fastq -2 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1012_2.fastq -S ~/Bowtie2/1012_DehaAH.sam 2>&1 | tee -i ~/Bowtie2/screen_outputs_bowtie2/1012AHmapping_log.txt

bowtie2 -x ~/Bowtie2/Reference_index_Deha -1 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1013_1.fastq -2 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1013_2.fastq -S ~/Bowtie2/1013_DehaAH.sam 2>&1 | tee -i ~/Bowtie2/screen_outputs_bowtie2/1013AHmapping_log.txt

bowtie2 -x ~/Bowtie2/Reference_index_Deha -1 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1014_1.fastq -2 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1014_2.fastq -S ~/Bowtie2/1014_DehaAH.sam 2>&1 | tee -i ~/Bowtie2/screen_outputs_bowtie2/1014AHmapping_log.txt

bowtie2 -x ~/Bowtie2/Reference_index_Deha -1 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1015_1.fastq -2 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1015_2.fastq -S ~/Bowtie2/1015_DehaAH.sam 2>&1 | tee -i ~/Bowtie2/screen_outputs_bowtie2/1015AHmapping_log.txt

bowtie2 -x ~/Bowtie2/Reference_index_Deha -1 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1016_1.fastq -2 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1016_2.fastq -S ~/Bowtie2/1016_DehaAH.sam 2>&1 | tee -i ~/Bowtie2/screen_outputs_bowtie2/1016AHmapping_log.txt

bowtie2 -x ~/Bowtie2/Reference_index_Deha -1 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1017_1.fastq -2 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1017_2.fastq -S ~/Bowtie2/1017_DehaAH.sam 2>&1 | tee -i ~/Bowtie2/screen_outputs_bowtie2/1017AHmapping_log.txt

bowtie2 -x ~/Bowtie2/Reference_index_Deha -1 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1018_1.fastq -2 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1018_2.fastq -S ~/Bowtie2/1018_DehaAH.sam 2>&1 | tee -i ~/Bowtie2/screen_outputs_bowtie2/1018AHmapping_log.txt

bowtie2 -x ~/Bowtie2/Reference_index_Deha -1 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1019_1.fastq -2 /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1019_2.fastq -S ~/Bowtie2/1019_DehaAH.sam 2>&1 | tee -i ~/Bowtie2/screen_outputs_bowtie2/1019AHmapping_log.txt

bowtie2 -x ~/Bowtie2/Reference_index_Deha -1 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1001_1.fastq -2 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1001_2.fastq -S ~/Bowtie2/1001_DehaBC.sam 2>&1 | tee -i ~/Bowtie2/screen_outputs_bowtie2/1001BCmapping_log.txt

bowtie2 -x ~/Bowtie2/Reference_index_Deha -1 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1002_1.fastq -2 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1002_2.fastq -S ~/Bowtie2/1002_DehaBC.sam 2>&1 | tee -i ~/Bowtie2/screen_outputs_bowtie2/1002BCmapping_log.txt

bowtie2 -x ~/Bowtie2/Reference_index_Deha -1 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1003_1.fastq -2 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1003_2.fastq -S ~/Bowtie2/1003_DehaBC.sam 2>&1 | tee -i ~/Bowtie2/screen_outputs_bowtie2/1003BCmapping_log.txt

bowtie2 -x ~/Bowtie2/Reference_index_Deha -1 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1004_1.fastq -2 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1004_2.fastq -S ~/Bowtie2/1004_DehaBC.sam 2>&1 | tee -i ~/Bowtie2/screen_outputs_bowtie2/1004BCmapping_log.txt

bowtie2 -x ~/Bowtie2/Reference_index_Deha -1 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1005_1.fastq -2 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1005_2.fastq -S ~/Bowtie2/1005_DehaBC.sam 2>&1 | tee -i ~/Bowtie2/screen_outputs_bowtie2/1005BCmapping_log.txt

bowtie2 -x ~/Bowtie2/Reference_index_Deha -1 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1006_1.fastq -2 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1006_2.fastq -S ~/Bowtie2/1006_DehaBC.sam 2>&1 | tee -i ~/Bowtie2/screen_outputs_bowtie2/1006BCmapping_log.txt

bowtie2 -x ~/Bowtie2/Reference_index_Deha -1 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1007_1.fastq -2 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1007_2.fastq -S ~/Bowtie2/1007_DehaBC.sam 2>&1 | tee -i ~/Bowtie2/screen_outputs_bowtie2/1007BCmapping_log.txt

bowtie2 -x ~/Bowtie2/Reference_index_Deha -1 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1008_1.fastq -2 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1008_2.fastq -S ~/Bowtie2/1008_DehaBC.sam 2>&1 | tee -i ~/Bowtie2/screen_outputs_bowtie2/1008BCmapping_log.txt

bowtie2 -x ~/Bowtie2/Reference_index_Deha -1 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1009_1.fastq -2 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1009_2.fastq -S ~/Bowtie2/1009_DehaBC.sam 2>&1 | tee -i ~/Bowtie2/screen_outputs_bowtie2/1009BCmapping_log.txt

bowtie2 -x ~/Bowtie2/Reference_index_Deha -1 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1010_1.fastq -2 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1010_2.fastq -S ~/Bowtie2/1010_DehaBC.sam 2>&1 | tee -i ~/Bowtie2/screen_outputs_bowtie2/1010BCmapping_log.txt

bowtie2 -x ~/Bowtie2/Reference_index_Deha -1 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1011_1.fastq -2 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1011_2.fastq -S ~/Bowtie2/1011_DehaBC.sam 2>&1 | tee -i ~/Bowtie2/screen_outputs_bowtie2/1011BCmapping_log.txt

bowtie2 -x ~/Bowtie2/Reference_index_Deha -1 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1012_1.fastq -2 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1012_2.fastq -S ~/Bowtie2/1012_DehaBC.sam 2>&1 | tee -i ~/Bowtie2/screen_outputs_bowtie2/1012BCmapping_log.txt

bowtie2 -x ~/Bowtie2/Reference_index_Deha -1 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1013_1.fastq -2 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1013_2.fastq -S ~/Bowtie2/1013_DehaBC.sam 2>&1 | tee -i ~/Bowtie2/screen_outputs_bowtie2/1013BCmapping_log.txt

bowtie2 -x ~/Bowtie2/Reference_index_Deha -1 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1014_1.fastq -2 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1014_2.fastq -S ~/Bowtie2/1014_DehaBC.sam 2>&1 | tee -i ~/Bowtie2/screen_outputs_bowtie2/1014BCmapping_log.txt

bowtie2 -x ~/Bowtie2/Reference_index_Deha -1 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1015_1.fastq -2 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1015_2.fastq -S ~/Bowtie2/1015_DehaBC.sam 2>&1 | tee -i ~/Bowtie2/screen_outputs_bowtie2/1015BCmapping_log.txt

bowtie2 -x ~/Bowtie2/Reference_index_Deha -1 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1016_1.fastq -2 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1016_2.fastq -S ~/Bowtie2/1016_DehaBC.sam 2>&1 | tee -i ~/Bowtie2/screen_outputs_bowtie2/1016BCmapping_log.txt

bowtie2 -x ~/Bowtie2/Reference_index_Deha -1 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1017_1.fastq -2 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1017_2.fastq -S ~/Bowtie2/1017_DehaBC.sam 2>&1 | tee -i ~/Bowtie2/screen_outputs_bowtie2/1017BCmapping_log.txt

bowtie2 -x ~/Bowtie2/Reference_index_Deha -1 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1018_1.fastq -2 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1018_2.fastq -S ~/Bowtie2/1018_DehaBC.sam 2>&1 | tee -i ~/Bowtie2/screen_outputs_bowtie2/1018BCmapping_log.txt

bowtie2 -x ~/Bowtie2/Reference_index_Deha -1 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1019_1.fastq -2 /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1019_2.fastq -S ~/Bowtie2/1019_DehaBC.sam 2>&1 | tee -i ~/Bowtie2/screen_outputs_bowtie2/1019BCmapping_log.txt

#Create a folder for files with the stdout and stderr from the commands:

mkdir ~/Bowtie2/logs

#Samtools to convert sam to bam and sort:

samtools view -Sb ~/Bowtie2/1001_DehaAH.sam | samtools sort - ~/Bowtie2/1001_DehaAH_sorted > ~/Bowtie2/logs/1001AHsamtools.log 2>&1

samtools view -Sb ~/Bowtie2/1002_DehaAH.sam | samtools sort - ~/Bowtie2/1002_DehaAH_sorted > ~/Bowtie2/logs/1002AHsamtools.log 2>&1

samtools view -Sb ~/Bowtie2/1003_DehaAH.sam | samtools sort - ~/Bowtie2/1003_DehaAH_sorted > ~/Bowtie2/logs/1003AHsamtools.log 2>&1

samtools view -Sb ~/Bowtie2/1004_DehaAH.sam | samtools sort - ~/Bowtie2/1004_DehaAH_sorted > ~/Bowtie2/logs/1004AHsamtools.log 2>&1

samtools view -Sb ~/Bowtie2/1005_DehaAH.sam | samtools sort - ~/Bowtie2/1005_DehaAH_sorted > ~/Bowtie2/logs/1005AHsamtools.log 2>&1

samtools view -Sb ~/Bowtie2/1006_DehaAH.sam | samtools sort - ~/Bowtie2/1006_DehaAH_sorted > ~/Bowtie2/logs/1006AHsamtools.log 2>&1

samtools view -Sb ~/Bowtie2/1007_DehaAH.sam | samtools sort - ~/Bowtie2/1007_DehaAH_sorted > ~/Bowtie2/logs/1007AHsamtools.log 2>&1

samtools view -Sb ~/Bowtie2/1008_DehaAH.sam | samtools sort - ~/Bowtie2/1008_DehaAH_sorted > ~/Bowtie2/logs/1008AHsamtools.log 2>&1

samtools view -Sb ~/Bowtie2/1009_DehaAH.sam | samtools sort - ~/Bowtie2/1009_DehaAH_sorted > ~/Bowtie2/logs/1009AHsamtools.log 2>&1

samtools view -Sb ~/Bowtie2/1010_DehaAH.sam | samtools sort - ~/Bowtie2/1010_DehaAH_sorted > ~/Bowtie2/logs/1010AHsamtools.log 2>&1

samtools view -Sb ~/Bowtie2/1011_DehaAH.sam | samtools sort - ~/Bowtie2/1011_DehaAH_sorted > ~/Bowtie2/logs/1011AHsamtools.log 2>&1

samtools view -Sb ~/Bowtie2/1012_DehaAH.sam | samtools sort - ~/Bowtie2/1012_DehaAH_sorted > ~/Bowtie2/logs/1012AHsamtools.log 2>&1

samtools view -Sb ~/Bowtie2/1013_DehaAH.sam | samtools sort - ~/Bowtie2/1013_DehaAH_sorted > ~/Bowtie2/logs/1013AHsamtools.log 2>&1

samtools view -Sb ~/Bowtie2/1014_DehaAH.sam | samtools sort - ~/Bowtie2/1014_DehaAH_sorted > ~/Bowtie2/logs/1014AHsamtools.log 2>&1

samtools view -Sb ~/Bowtie2/1015_DehaAH.sam | samtools sort - ~/Bowtie2/1015_DehaAH_sorted > ~/Bowtie2/logs/1015AHsamtools.log 2>&1

samtools view -Sb ~/Bowtie2/1016_DehaAH.sam | samtools sort - ~/Bowtie2/1016_DehaAH_sorted > ~/Bowtie2/logs/1016AHsamtools.log 2>&1

samtools view -Sb ~/Bowtie2/1017_DehaAH.sam | samtools sort - ~/Bowtie2/1017_DehaAH_sorted > ~/Bowtie2/logs/1017AHsamtools.log 2>&1

samtools view -Sb ~/Bowtie2/1018_DehaAH.sam | samtools sort - ~/Bowtie2/1018_DehaAH_sorted > ~/Bowtie2/logs/1018AHsamtools.log 2>&1

samtools view -Sb ~/Bowtie2/1019_DehaAH.sam | samtools sort - ~/Bowtie2/1019_DehaAH_sorted > ~/Bowtie2/logs/1019AHsamtools.log 2>&1

samtools view -Sb ~/Bowtie2/1001_DehaBC.sam | samtools sort - ~/Bowtie2/1001_DehaBC_sorted > ~/Bowtie2/logs/1001BCsamtools.log 2>&1

samtools view -Sb ~/Bowtie2/1002_DehaBC.sam | samtools sort - ~/Bowtie2/1002_DehaBC_sorted > ~/Bowtie2/logs/1002BCsamtools.log 2>&1

samtools view -Sb ~/Bowtie2/1003_DehaBC.sam | samtools sort - ~/Bowtie2/1003_DehaBC_sorted > ~/Bowtie2/logs/1003BCsamtools.log 2>&1

samtools view -Sb ~/Bowtie2/1004_DehaBC.sam | samtools sort - ~/Bowtie2/1004_DehaBC_sorted > ~/Bowtie2/logs/1004BCsamtools.log 2>&1

samtools view -Sb ~/Bowtie2/1005_DehaBC.sam | samtools sort - ~/Bowtie2/1005_DehaBC_sorted > ~/Bowtie2/logs/1005BCsamtools.log 2>&1

samtools view -Sb ~/Bowtie2/1006_DehaBC.sam | samtools sort - ~/Bowtie2/1006_DehaBC_sorted > ~/Bowtie2/logs/1006BCsamtools.log 2>&1

samtools view -Sb ~/Bowtie2/1007_DehaBC.sam | samtools sort - ~/Bowtie2/1007_DehaBC_sorted > ~/Bowtie2/logs/1007BCsamtools.log 2>&1

samtools view -Sb ~/Bowtie2/1008_DehaBC.sam | samtools sort - ~/Bowtie2/1008_DehaBC_sorted > ~/Bowtie2/logs/1008BCsamtools.log 2>&1

samtools view -Sb ~/Bowtie2/1009_DehaBC.sam | samtools sort - ~/Bowtie2/1009_DehaBC_sorted > ~/Bowtie2/logs/1009BCsamtools.log 2>&1

samtools view -Sb ~/Bowtie2/1010_DehaBC.sam | samtools sort - ~/Bowtie2/1010_DehaBC_sorted > ~/Bowtie2/logs/1010BCsamtools.log 2>&1

samtools view -Sb ~/Bowtie2/1011_DehaBC.sam | samtools sort - ~/Bowtie2/1011_DehaBC_sorted > ~/Bowtie2/logs/1011BCsamtools.log 2>&1

samtools view -Sb ~/Bowtie2/1012_DehaBC.sam | samtools sort - ~/Bowtie2/1012_DehaBC_sorted > ~/Bowtie2/logs/1012BCsamtools.log 2>&1

samtools view -Sb ~/Bowtie2/1013_DehaBC.sam | samtools sort - ~/Bowtie2/1013_DehaBC_sorted > ~/Bowtie2/logs/1013BCsamtools.log 2>&1

samtools view -Sb ~/Bowtie2/1014_DehaBC.sam | samtools sort - ~/Bowtie2/1014_DehaBC_sorted > ~/Bowtie2/logs/1014BCsamtools.log 2>&1

samtools view -Sb ~/Bowtie2/1015_DehaBC.sam | samtools sort - ~/Bowtie2/1015_DehaBC_sorted > ~/Bowtie2/logs/1015BCsamtools.log 2>&1

samtools view -Sb ~/Bowtie2/1016_DehaBC.sam | samtools sort - ~/Bowtie2/1016_DehaBC_sorted > ~/Bowtie2/logs/1016BCsamtools.log 2>&1

samtools view -Sb ~/Bowtie2/1017_DehaBC.sam | samtools sort - ~/Bowtie2/1017_DehaBC_sorted > ~/Bowtie2/logs/1017BCsamtools.log 2>&1

samtools view -Sb ~/Bowtie2/1018_DehaBC.sam | samtools sort - ~/Bowtie2/1018_DehaBC_sorted > ~/Bowtie2/logs/1018BCsamtools.log 2>&1

samtools view -Sb ~/Bowtie2/1019_DehaBC.sam | samtools sort - ~/Bowtie2/1019_DehaBC_sorted > ~/Bowtie2/logs/1019BCsamtools.log 2>&1

#Index bam files:

samtools index ~/Bowtie2/1001_DehaAH_sorted.bam ~/Bowtie2/1001_DehaAH_sorted.bai

samtools index ~/Bowtie2/1002_DehaAH_sorted.bam ~/Bowtie2/1002_DehaAH_sorted.bai

samtools index ~/Bowtie2/1003_DehaAH_sorted.bam ~/Bowtie2/1003_DehaAH_sorted.bai

samtools index ~/Bowtie2/1004_DehaAH_sorted.bam ~/Bowtie2/1004_DehaAH_sorted.bai

samtools index ~/Bowtie2/1005_DehaAH_sorted.bam ~/Bowtie2/1005_DehaAH_sorted.bai

samtools index ~/Bowtie2/1006_DehaAH_sorted.bam ~/Bowtie2/1006_DehaAH_sorted.bai

samtools index ~/Bowtie2/1007_DehaAH_sorted.bam ~/Bowtie2/1007_DehaAH_sorted.bai

samtools index ~/Bowtie2/1008_DehaAH_sorted.bam ~/Bowtie2/1008_DehaAH_sorted.bai

samtools index ~/Bowtie2/1009_DehaAH_sorted.bam ~/Bowtie2/1009_DehaAH_sorted.bai

samtools index ~/Bowtie2/1010_DehaAH_sorted.bam ~/Bowtie2/1010_DehaAH_sorted.bai

samtools index ~/Bowtie2/1011_DehaAH_sorted.bam ~/Bowtie2/1011_DehaAH_sorted.bai

samtools index ~/Bowtie2/1012_DehaAH_sorted.bam ~/Bowtie2/1012_DehaAH_sorted.bai

samtools index ~/Bowtie2/1013_DehaAH_sorted.bam ~/Bowtie2/1013_DehaAH_sorted.bai

samtools index ~/Bowtie2/1014_DehaAH_sorted.bam ~/Bowtie2/1014_DehaAH_sorted.bai

samtools index ~/Bowtie2/1015_DehaAH_sorted.bam ~/Bowtie2/1015_DehaAH_sorted.bai

samtools index ~/Bowtie2/1016_DehaAH_sorted.bam ~/Bowtie2/1016_DehaAH_sorted.bai

samtools index ~/Bowtie2/1017_DehaAH_sorted.bam ~/Bowtie2/1017_DehaAH_sorted.bai

samtools index ~/Bowtie2/1018_DehaAH_sorted.bam ~/Bowtie2/1018_DehaAH_sorted.bai

samtools index ~/Bowtie2/1019_DehaAH_sorted.bam ~/Bowtie2/1019_DehaAH_sorted.bai

samtools index ~/Bowtie2/1001_DehaBC_sorted.bam ~/Bowtie2/1001_DehaBC_sorted.bai

samtools index ~/Bowtie2/1002_DehaBC_sorted.bam ~/Bowtie2/1002_DehaBC_sorted.bai

samtools index ~/Bowtie2/1003_DehaBC_sorted.bam ~/Bowtie2/1003_DehaBC_sorted.bai

samtools index ~/Bowtie2/1004_DehaBC_sorted.bam ~/Bowtie2/1004_DehaBC_sorted.bai

samtools index ~/Bowtie2/1005_DehaBC_sorted.bam ~/Bowtie2/1005_DehaBC_sorted.bai

samtools index ~/Bowtie2/1006_DehaBC_sorted.bam ~/Bowtie2/1006_DehaBC_sorted.bai

samtools index ~/Bowtie2/1007_DehaBC_sorted.bam ~/Bowtie2/1007_DehaBC_sorted.bai

samtools index ~/Bowtie2/1008_DehaBC_sorted.bam ~/Bowtie2/1008_DehaBC_sorted.bai

samtools index ~/Bowtie2/1009_DehaBC_sorted.bam ~/Bowtie2/1009_DehaBC_sorted.bai

samtools index ~/Bowtie2/1010_DehaBC_sorted.bam ~/Bowtie2/1010_DehaBC_sorted.bai

samtools index ~/Bowtie2/1011_DehaBC_sorted.bam ~/Bowtie2/1011_DehaBC_sorted.bai

samtools index ~/Bowtie2/1012_DehaBC_sorted.bam ~/Bowtie2/1012_DehaBC_sorted.bai

samtools index ~/Bowtie2/1013_DehaBC_sorted.bam ~/Bowtie2/1013_DehaBC_sorted.bai

samtools index ~/Bowtie2/1014_DehaBC_sorted.bam ~/Bowtie2/1014_DehaBC_sorted.bai

samtools index ~/Bowtie2/1015_DehaBC_sorted.bam ~/Bowtie2/1015_DehaBC_sorted.bai

samtools index ~/Bowtie2/1016_DehaBC_sorted.bam ~/Bowtie2/1016_DehaBC_sorted.bai

samtools index ~/Bowtie2/1017_DehaBC_sorted.bam ~/Bowtie2/1017_DehaBC_sorted.bai

samtools index ~/Bowtie2/1018_DehaBC_sorted.bam ~/Bowtie2/1018_DehaBC_sorted.bai

samtools index ~/Bowtie2/1019_DehaBC_sorted.bam ~/Bowtie2/1019_DehaBC_sorted.bai

