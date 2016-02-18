#!/usr/bin/env bash

#
#Jellyfish 1 needed:
#
#Before running the script, Add this line in your .profile
#
#ls -la
#
#export PATH="/home/tomasl/bin/jellyfish-1.1.11/bin/:$PATH"
#
#Then, open a new terminal for it to be changed.
#

mkdir ~/kraken

mkdir ~/kraken/kraken_db

now=$(date +"%Y%m%d")

mkdir ~/kraken/kraken_db/standard_db_$now

mkdir ~/kraken/kraken_db/custom_db_$now

#Build standard database:

#It will only contain bacteria and virus refseq

kraken-build --standard --threads 24 --db ~/kraken/kraken_db/standard_db_$now

#Build custom database:

#We will add bacteria, viruses, human, plasmids and all fungi

#This will download the GI number to taxon map, as well as the taxonomic name and tree information from NCBI:

kraken-build --download-taxonomy --db ~/kraken/kraken_db/custom_db_$now

#Download and install libraries with kraken command:

kraken-build --download-library bacteria --db ~/kraken/kraken_db/custom_db_$now

kraken-build --download-library viruses --db ~/kraken/kraken_db/custom_db_$now

kraken-build --download-library plasmids --db ~/kraken/kraken_db/custom_db_$now

#It should be one for Human, but it seems to not be working properly, so it will be download and added apart, same as all fungi genomes:

mkdir ~/kraken/kraken_db/all_fungi_$now

mkdir ~/kraken/kraken_db/human_$now

wget ftp://ftp.ncbi.nlm.nih.gov/refseq/release/fungi/*genomic*fna* -P ~/kraken/kraken_db/all_fungi_$now

wget ftp://ftp.ncbi.nlm.nih.gov/refseq/H_sapiens/RefSeqGene/*genomic*fna* -P ~/kraken/kraken_db/human_$now

#gunzip

gunzip ~/kraken/kraken_db/all_fungi_$now/*.gz

gunzip ~/kraken/kraken_db/human_$now/*.gz

#build library with downloaded fna files:

find ~/kraken/kraken_db/all_fungi_$now/ -name '*.fna' -print0 | \
        xargs -0 -I{} -n1 kraken-build --add-to-library {} --db ~/kraken/kraken_db/custom_db_$now

find ~/kraken/kraken_db/human_$now/ -name '*.fna' -print0 | \
        xargs -0 -I{} -n1 kraken-build --add-to-library {} --db ~/kraken/kraken_db/custom_db_$now

#Build database:

kraken-build --build --threads 24 --db ~/kraken/kraken_db/custom_db_$now

#Note: Jellyfish 1 needed!!

#Prepare for standard kraken analysis of contamination on the assemblies:

mkdir ~/kraken/kraken_standard$now

mkdir ~/kraken/kraken_standard$now/assemblies/

mkdir ~/kraken/kraken_standard$now/assemblies/results

mkdir ~/kraken/kraken_standard$now/assemblies/log_files

#Standard kraken on assemblies

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fasta-input /home/merce/Assemblies/P1260_1001_preliminary_assembly.fasta \
1> ~/kraken/kraken_standard$now/assemblies/results/1001_stdkraken.kraken 2> ~/kraken/kraken_standard$now/assemblies/log_files/1001kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fasta-input /home/merce/Assemblies/P1260_1002_preliminary_assembly.fasta \
1> ~/kraken/kraken_standard$now/assemblies/results/1002_stdkraken.kraken 2> ~/kraken/kraken_standard$now/assemblies/log_files/1002kraken.log 

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fasta-input /home/merce/Assemblies/P1260_1003_preliminary_assembly.fasta \
1> ~/kraken/kraken_standard$now/assemblies/results/1003_stdkraken.kraken 2> ~/kraken/kraken_standard$now/assemblies/log_files/1003kraken.log 

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fasta-input /home/merce/Assemblies/P1260_1004_preliminary_assembly.fasta \
1> ~/kraken/kraken_standard$now/assemblies/results/1004_stdkraken.kraken 2> ~/kraken/kraken_standard$now/assemblies/log_files/1004kraken.log 

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fasta-input /home/merce/Assemblies/P1260_1005_preliminary_assembly.fasta \
1> ~/kraken/kraken_standard$now/assemblies/results/1005_stdkraken.kraken 2> ~/kraken/kraken_standard$now/assemblies/log_files/1005kraken.log 

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fasta-input /home/merce/Assemblies/P1260_1006_preliminary_assembly.fasta \
1> ~/kraken/kraken_standard$now/assemblies/results/1006_stdkraken.kraken 2> ~/kraken/kraken_standard$now/assemblies/log_files/1006kraken.log 

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fasta-input /home/merce/Assemblies/P1260_1007_preliminary_assembly.fasta \
1> ~/kraken/kraken_standard$now/assemblies/results/1007_stdkraken.kraken 2> ~/kraken/kraken_standard$now/assemblies/log_files/1007kraken.log 

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fasta-input /home/merce/Assemblies/P1260_1008_preliminary_assembly.fasta \
1> ~/kraken/kraken_standard$now/assemblies/results/1008_stdkraken.kraken 2> ~/kraken/kraken_standard$now/assemblies/log_files/1008kraken.log 

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fasta-input /home/merce/Assemblies/P1260_1009_preliminary_assembly.fasta \
1> ~/kraken/kraken_standard$now/assemblies/results/1009_stdkraken.kraken 2> ~/kraken/kraken_standard$now/assemblies/log_files/1009kraken.log 

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fasta-input /home/merce/Assemblies/P1260_1010_preliminary_assembly.fasta \
1> ~/kraken/kraken_standard$now/assemblies/results/1010_stdkraken.kraken 2> ~/kraken/kraken_standard$now/assemblies/log_files/1010kraken.log 

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fasta-input /home/merce/Assemblies/P1260_1011_preliminary_assembly.fasta \
1> ~/kraken/kraken_standard$now/assemblies/results/1011_stdkraken.kraken 2> ~/kraken/kraken_standard$now/assemblies/log_files/1011kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fasta-input /home/merce/Assemblies/P1260_1012_preliminary_assembly.fasta \
1> ~/kraken/kraken_standard$now/assemblies/results/1012_stdkraken.kraken 2> ~/kraken/kraken_standard$now/assemblies/log_files/1012kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fasta-input /home/merce/Assemblies/P1260_1013_preliminary_assembly.fasta \
1> ~/kraken/kraken_standard$now/assemblies/results/1013_stdkraken.kraken 2> ~/kraken/kraken_standard$now/assemblies/log_files/1013kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fasta-input /home/merce/Assemblies/P1260_1014_preliminary_assembly.fasta \
1> ~/kraken/kraken_standard$now/assemblies/results/1014_stdkraken.kraken 2> ~/kraken/kraken_standard$now/assemblies/log_files/1014kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fasta-input /home/merce/Assemblies/P1260_1015_preliminary_assembly.fasta \
1> ~/kraken/kraken_standard$now/assemblies/results/1015_stdkraken.kraken 2> ~/kraken/kraken_standard$now/assemblies/log_files/1015kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fasta-input /home/merce/Assemblies/P1260_1016_preliminary_assembly.fasta \
1> ~/kraken/kraken_standard$now/assemblies/results/1016_stdkraken.kraken 2> ~/kraken/kraken_standard$now/assemblies/log_files/1016kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fasta-input /home/merce/Assemblies/P1260_1017_preliminary_assembly.fasta \
1> ~/kraken/kraken_standard$now/assemblies/results/1017_stdkraken.kraken 2> ~/kraken/kraken_standard$now/assemblies/log_files/1017kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fasta-input /home/merce/Assemblies/P1260_1018_preliminary_assembly.fasta \
1> ~/kraken/kraken_standard$now/assemblies/results/1018_stdkraken.kraken 2> ~/kraken/kraken_standard$now/assemblies/log_files/1018kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fasta-input /home/merce/Assemblies/P1260_1019_preliminary_assembly.fasta \
1> ~/kraken/kraken_standard$now/assemblies/results/1019_stdkraken.kraken 2> ~/kraken/kraken_standard$now/assemblies/log_files/1019kraken.log


#Prepare for standard kraken analysis of contamination on the raw_reads:

mkdir ~/kraken/kraken_standard$now

mkdir ~/kraken/kraken_standard$now/raw_reads/

mkdir ~/kraken/kraken_standard$now/raw_reads/results

mkdir ~/kraken/kraken_standard$now/raw_reads/log_files

#Standard kraken on raw reads

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1001_1.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1001AH1_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1001AH1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1001_2.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1001AH2_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1001AH2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1002_1.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1002AH1_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1002AH1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1002_2.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1002AH2_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1002AH2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1003_1.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1003AH1_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1003AH1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1003_2.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1003AH2_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1003AH2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1004_1.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1004AH1_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1004AH1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1004_2.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1004AH2_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1004AH2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1005_1.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1005AH1_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1005AH1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1005_2.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1005AH2_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1005AH2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1006_1.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1006AH1_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1006AH1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1006_2.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1006AH2_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1006AH2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1007_1.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1007AH1_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1007AH1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1007_2.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1007AH2_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1007AH2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1008_1.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1008AH1_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1008AH1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1008_2.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1008AH2_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1008AH2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1009_1.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1009AH1_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1009AH1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1009_2.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1009AH2_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1009AH2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1010_1.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1010AH1_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1010AH1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1010_2.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1010AH2_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1010AH2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1011_1.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1011AH1_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1011AH1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1011_2.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1011AH2_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1011AH2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1012_1.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1012AH1_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1012AH1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1012_2.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1012AH2_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1012AH2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1013_1.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1013AH1_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1013AH1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1013_2.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1013AH2_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1013AH2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1014_1.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1014AH1_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1014AH1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1014_2.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1014AH2_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1014AH2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1015_1.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1015AH1_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1015AH1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1015_2.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1015AH2_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1015AH2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1016_1.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1016AH1_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1016AH1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1016_2.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1016AH2_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1016AH2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1017_1.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1017AH1_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1017AH1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1017_2.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1017AH2_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1017AH2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1018_1.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1018AH1_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1018AH1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1018_2.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1018AH2_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1018AH2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1019_1.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1019AH1_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1019AH1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1019_2.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1019AH2_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1019AH2kraken.log


kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1001_1.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1001BC1_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1001BC1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1001_2.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1001BC2_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1001BC2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1002_1.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1002BC1_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1002BC1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1002_2.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1002BC2_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1002BC2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1003_1.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1003BC1_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1003BC1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1003_2.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1003BC2_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1003BC2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1004_1.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1004BC1_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1004BC1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1004_2.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1004BC2_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1004BC2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1005_1.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1005BC1_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1005BC1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1005_2.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1005BC2_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1005BC2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1006_1.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1006BC1_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1006BC1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1006_2.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1006BC2_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1006BC2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1007_1.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1007BC1_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1007BC1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1007_2.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1007BC2_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1007BC2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1008_1.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1008BC1_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1008BC1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1008_2.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1008BC2_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1008BC2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1009_1.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1009BC1_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1009BC1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1009_2.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1009BC2_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1009BC2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1010_1.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1010BC1_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1010BC1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1010_2.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1010BC2_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1010BC2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1011_1.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1011BC1_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1011BC1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1011_2.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1011BC2_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1011BC2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1012_1.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1012BC1_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1012BC1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1012_2.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1012BC2_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1012BC2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1013_1.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1013BC1_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1013BC1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1013_2.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1013BC2_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1013BC2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1014_1.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1014BC1_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1014BC1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1014_2.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1014BC2_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1014BC2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1015_1.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1015BC1_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1015BC1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1015_2.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1015BC2_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1015BC2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1016_1.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1016BC1_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1016BC1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1016_2.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1016BC2_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1016BC2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1017_1.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1017BC1_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1017BC1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1017_2.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1017BC2_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1017BC2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1018_1.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1018BC1_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1018BC1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1018_2.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1018BC2_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1018BC2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1019_1.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1019BC1_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1019BC1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/standard_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1019_2.fastq \
1> ~/kraken/kraken_standard$now/raw_reads/results/1019BC2_stdkraken.kraken 2> ~/kraken/kraken_standard$now/raw_reads/log_files/1019BC2kraken.log

#
#Description of kraken first output:
#Each sequence classified by Kraken results in a single line of output. Output lines contain five tab-delimited fields; from left to right, they are:
#
#    "C"/"U": one letter code indicating that the sequence was either classified or unclassified.
#    The sequence ID, obtained from the FASTA/FASTQ header.
#    The taxonomy ID Kraken used to label the sequence; this is 0 if the sequence is unclassified.
#    The length of the sequence in bp.
#    A space-delimited list indicating the LCA mapping of each k-mer in the sequence. For example, "562:13 561:4 A:31 0:1 562:3" would indicate that:
#        the first 13 k-mers mapped to taxonomy ID #562
#        the next 4 k-mers mapped to taxonomy ID #561
#        the next 31 k-mers contained an ambiguous nucleotide
#        the next k-mer was not in the database
#        the last 3 k-mers mapped to taxonomy ID #562
#

#Output translation

#kraken translate on assemblies:

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/assemblies/results/1001_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/assemblies/results/1001_stdkraken.labels 2>> ~/kraken/kraken_standard$now/assemblies/log_files/1001kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/assemblies/results/1002_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/assemblies/results/1002_stdkraken.labels 2>> ~/kraken/kraken_standard$now/assemblies/log_files/1002kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/assemblies/results/1003_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/assemblies/results/1003_stdkraken.labels 2>> ~/kraken/kraken_standard$now/assemblies/log_files/1003kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/assemblies/results/1004_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/assemblies/results/1004_stdkraken.labels 2>> ~/kraken/kraken_standard$now/assemblies/log_files/1004kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/assemblies/results/1005_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/assemblies/results/1005_stdkraken.labels 2>> ~/kraken/kraken_standard$now/assemblies/log_files/1005kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/assemblies/results/1006_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/assemblies/results/1006_stdkraken.labels 2>> ~/kraken/kraken_standard$now/assemblies/log_files/1006kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/assemblies/results/1007_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/assemblies/results/1007_stdkraken.labels 2>> ~/kraken/kraken_standard$now/assemblies/log_files/1007kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/assemblies/results/1008_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/assemblies/results/1008_stdkraken.labels 2>> ~/kraken/kraken_standard$now/assemblies/log_files/1008kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/assemblies/results/1009_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/assemblies/results/1009_stdkraken.labels 2>> ~/kraken/kraken_standard$now/assemblies/log_files/1009kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/assemblies/results/1010_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/assemblies/results/1010_stdkraken.labels 2>> ~/kraken/kraken_standard$now/assemblies/log_files/1010kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/assemblies/results/1011_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/assemblies/results/1011_stdkraken.labels 2>> ~/kraken/kraken_standard$now/assemblies/log_files/1011kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/assemblies/results/1012_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/assemblies/results/1012_stdkraken.labels 2>> ~/kraken/kraken_standard$now/assemblies/log_files/1012kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/assemblies/results/1013_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/assemblies/results/1013_stdkraken.labels 2>> ~/kraken/kraken_standard$now/assemblies/log_files/1013kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/assemblies/results/1014_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/assemblies/results/1014_stdkraken.labels 2>> ~/kraken/kraken_standard$now/assemblies/log_files/1014kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/assemblies/results/1015_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/assemblies/results/1015_stdkraken.labels 2>> ~/kraken/kraken_standard$now/assemblies/log_files/1015kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/assemblies/results/1016_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/assemblies/results/1016_stdkraken.labels 2>> ~/kraken/kraken_standard$now/assemblies/log_files/1016kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/assemblies/results/1017_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/assemblies/results/1017_stdkraken.labels 2>> ~/kraken/kraken_standard$now/assemblies/log_files/1017kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/assemblies/results/1018_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/assemblies/results/1018_stdkraken.labels 2>> ~/kraken/kraken_standard$now/assemblies/log_files/1018kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/assemblies/results/1019_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/assemblies/results/1019_stdkraken.labels 2>> ~/kraken/kraken_standard$now/assemblies/log_files/1019kraken.log


#Kraken translate on raw reads:

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1001AH1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1001AH1_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1001AH1kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1001AH2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1001AH2_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1001AH2kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1001BC1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1001BC1_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1001BC1kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1001BC2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1001BC2_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1001BC2kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1002AH1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1002AH1_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1002AH1kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1002AH2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1002AH2_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1002AH2kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1002BC1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1002BC1_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1002BC1kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1002BC2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1002BC2_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1002BC2kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1003AH1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1003AH1_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1003AH1kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1003AH2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1003AH2_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1003AH2kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1003BC1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1003BC1_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1003BC1kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1003BC2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1003BC2_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1003BC2kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1004AH1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1004AH1_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1004AH1kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1004AH2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1004AH2_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1004AH2kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1004BC1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1004BC1_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1004BC1kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1004BC2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1004BC2_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1004BC2kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1005AH1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1005AH1_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1005AH1kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1005AH2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1005AH2_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1005AH2kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1005BC1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1005BC1_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1005BC1kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1005BC2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1005BC2_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1005BC2kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1006AH1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1006AH1_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1006AH1kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1006AH2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1006AH2_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1006AH2kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1006BC1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1006BC1_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1006BC1kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1006BC2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1006BC2_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1006BC2kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1007AH1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1007AH1_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1007AH1kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1007AH2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1007AH2_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1007AH2kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1007BC1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1007BC1_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1007BC1kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1007BC2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1007BC2_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1007BC2kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1008AH1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1008AH1_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1008AH1kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1008AH2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1008AH2_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1008AH2kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1008BC1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1008BC1_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1008BC1kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1008BC2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1008BC2_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1008BC2kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1009AH1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1009AH1_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1009AH1kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1009AH2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1009AH2_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1009AH2kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1009BC1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1009BC1_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1009BC1kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1009BC2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1009BC2_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1009BC2kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1010AH1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1010AH1_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1010AH1kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1010AH2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1010AH2_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1010AH2kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1010BC1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1010BC1_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1010BC1kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1010BC2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1010BC2_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1010BC2kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1011AH1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1011AH1_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1011AH1kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1011AH2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1011AH2_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1011AH2kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1011BC1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1011BC1_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1011BC1kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1011BC2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1011BC2_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1011BC2kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1012AH1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1012AH1_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1012AH1kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1012AH2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1012AH2_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1012AH2kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1012BC1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1012BC1_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1012BC1kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1012BC2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1012BC2_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1012BC2kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1013AH1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1013AH1_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1013AH1kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1013AH2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1013AH2_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1013AH2kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1013BC1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1013BC1_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1013BC1kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1013BC2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1013BC2_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1013BC2kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1014AH1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1014AH1_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1014AH1kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1014AH2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1014AH2_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1014AH2kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1014BC1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1014BC1_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1014BC1kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1014BC2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1014BC2_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1014BC2kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1015AH1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1015AH1_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1015AH1kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1015AH2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1015AH2_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1015AH2kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1015BC1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1015BC1_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1015BC1kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1015BC2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1015BC2_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1015BC2kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1016AH1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1016AH1_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1016AH1kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1016AH2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1016AH2_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1016AH2kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1016BC1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1016BC1_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1016BC1kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1016BC2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1016BC2_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1016BC2kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1017AH1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1017AH1_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1017AH1kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1017AH2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1017AH2_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1017AH2kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1017BC1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1017BC1_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1017BC1kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1017BC2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1017BC2_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1017BC2kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1018AH1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1018AH1_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1018AH1kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1018AH2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1018AH2_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1018AH2kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1018BC1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1018BC1_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1018BC1kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1018BC2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1018BC2_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1018BC2kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1019AH1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1019AH1_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1019AH1kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1019AH2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1019AH2_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1019AH2kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1019BC1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1019BC1_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1019BC1kraken.log

kraken-translate --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1019BC2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1019BC2_stdkraken.labels 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1019BC2kraken.log

#
#Description of kraken translate output:
#
#It only reports classified sequences, the output format generated is a text file with two tab-delimited columns and one line for each sequence.
#The first column is the sequence ID of the classified sequences, and the second column contains the taxonomy of the sequence. 
#Example: SEQ1 root;cellular organisms;Bacteria;Proteobacteria;Gammaproteobacteria;Enterobacteriales;Enterobacteriaceae;Escherichia;Escherichia coli
#


#Kraken report

#kraken report on assemblies:

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/assemblies/results/1001_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/assemblies/results/1001_stdkraken.report 2>> ~/kraken/kraken_standard$now/assemblies/log_files/1001kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/assemblies/results/1002_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/assemblies/results/1002_stdkraken.report 2>> ~/kraken/kraken_standard$now/assemblies/log_files/1002kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/assemblies/results/1003_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/assemblies/results/1003_stdkraken.report 2>> ~/kraken/kraken_standard$now/assemblies/log_files/1003kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/assemblies/results/1004_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/assemblies/results/1004_stdkraken.report 2>> ~/kraken/kraken_standard$now/assemblies/log_files/1004kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/assemblies/results/1005_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/assemblies/results/1005_stdkraken.report 2>> ~/kraken/kraken_standard$now/assemblies/log_files/1005kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/assemblies/results/1006_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/assemblies/results/1006_stdkraken.report 2>> ~/kraken/kraken_standard$now/assemblies/log_files/1006kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/assemblies/results/1007_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/assemblies/results/1007_stdkraken.report 2>> ~/kraken/kraken_standard$now/assemblies/log_files/1007kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/assemblies/results/1008_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/assemblies/results/1008_stdkraken.report 2>> ~/kraken/kraken_standard$now/assemblies/log_files/1008kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/assemblies/results/1009_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/assemblies/results/1009_stdkraken.report 2>> ~/kraken/kraken_standard$now/assemblies/log_files/1009kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/assemblies/results/1010_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/assemblies/results/1010_stdkraken.report 2>> ~/kraken/kraken_standard$now/assemblies/log_files/1010kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/assemblies/results/1011_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/assemblies/results/1011_stdkraken.report 2>> ~/kraken/kraken_standard$now/assemblies/log_files/1011kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/assemblies/results/1012_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/assemblies/results/1012_stdkraken.report 2>> ~/kraken/kraken_standard$now/assemblies/log_files/1012kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/assemblies/results/1013_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/assemblies/results/1013_stdkraken.report 2>> ~/kraken/kraken_standard$now/assemblies/log_files/1013kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/assemblies/results/1014_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/assemblies/results/1014_stdkraken.report 2>> ~/kraken/kraken_standard$now/assemblies/log_files/1014kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/assemblies/results/1015_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/assemblies/results/1015_stdkraken.report 2>> ~/kraken/kraken_standard$now/assemblies/log_files/1015kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/assemblies/results/1016_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/assemblies/results/1016_stdkraken.report 2>> ~/kraken/kraken_standard$now/assemblies/log_files/1016kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/assemblies/results/1017_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/assemblies/results/1017_stdkraken.report 2>> ~/kraken/kraken_standard$now/assemblies/log_files/1017kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/assemblies/results/1018_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/assemblies/results/1018_stdkraken.report 2>> ~/kraken/kraken_standard$now/assemblies/log_files/1018kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/assemblies/results/1019_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/assemblies/results/1019_stdkraken.report 2>> ~/kraken/kraken_standard$now/assemblies/log_files/1019kraken.log


#Kraken report on raw reads:

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1001AH1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1001AH1_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1001AH1kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1001AH2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1001AH2_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1001AH2kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1001BC1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1001BC1_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1001BC1kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1001BC2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1001BC2_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1001BC2kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1002AH1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1002AH1_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1002AH1kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1002AH2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1002AH2_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1002AH2kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1002BC1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1002BC1_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1002BC1kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1002BC2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1002BC2_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1002BC2kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1003AH1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1003AH1_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1003AH1kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1003AH2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1003AH2_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1003AH2kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1003BC1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1003BC1_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1003BC1kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1003BC2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1003BC2_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1003BC2kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1004AH1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1004AH1_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1004AH1kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1004AH2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1004AH2_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1004AH2kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1004BC1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1004BC1_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1004BC1kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1004BC2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1004BC2_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1004BC2kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1005AH1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1005AH1_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1005AH1kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1005AH2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1005AH2_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1005AH2kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1005BC1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1005BC1_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1005BC1kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1005BC2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1005BC2_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1005BC2kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1006AH1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1006AH1_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1006AH1kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1006AH2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1006AH2_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1006AH2kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1006BC1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1006BC1_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1006BC1kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1006BC2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1006BC2_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1006BC2kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1007AH1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1007AH1_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1007AH1kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1007AH2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1007AH2_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1007AH2kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1007BC1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1007BC1_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1007BC1kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1007BC2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1007BC2_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1007BC2kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1008AH1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1008AH1_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1008AH1kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1008AH2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1008AH2_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1008AH2kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1008BC1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1008BC1_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1008BC1kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1008BC2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1008BC2_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1008BC2kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1009AH1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1009AH1_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1009AH1kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1009AH2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1009AH2_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1009AH2kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1009BC1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1009BC1_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1009BC1kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1009BC2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1009BC2_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1009BC2kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1010AH1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1010AH1_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1010AH1kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1010AH2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1010AH2_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1010AH2kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1010BC1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1010BC1_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1010BC1kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1010BC2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1010BC2_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1010BC2kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1011AH1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1011AH1_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1011AH1kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1011AH2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1011AH2_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1011AH2kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1011BC1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1011BC1_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1011BC1kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1011BC2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1011BC2_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1011BC2kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1012AH1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1012AH1_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1012AH1kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1012AH2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1012AH2_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1012AH2kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1012BC1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1012BC1_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1012BC1kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1012BC2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1012BC2_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1012BC2kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1013AH1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1013AH1_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1013AH1kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1013AH2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1013AH2_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1013AH2kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1013BC1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1013BC1_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1013BC1kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1013BC2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1013BC2_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1013BC2kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1014AH1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1014AH1_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1014AH1kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1014AH2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1014AH2_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1014AH2kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1014BC1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1014BC1_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1014BC1kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1014BC2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1014BC2_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1014BC2kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1015AH1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1015AH1_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1015AH1kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1015AH2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1015AH2_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1015AH2kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1015BC1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1015BC1_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1015BC1kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1015BC2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1015BC2_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1015BC2kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1016AH1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1016AH1_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1016AH1kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1016AH2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1016AH2_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1016AH2kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1016BC1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1016BC1_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1016BC1kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1016BC2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1016BC2_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1016BC2kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1017AH1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1017AH1_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1017AH1kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1017AH2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1017AH2_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1017AH2kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1017BC1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1017BC1_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1017BC1kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1017BC2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1017BC2_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1017BC2kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1018AH1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1018AH1_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1018AH1kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1018AH2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1018AH2_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1018AH2kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1018BC1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1018BC1_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1018BC1kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1018BC2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1018BC2_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1018BC2kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1019AH1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1019AH1_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1019AH1kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1019AH2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1019AH2_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1019AH2kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1019BC1_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1019BC1_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1019BC1kraken.log

kraken-report --db ~/kraken/kraken_db/standard_db_$now ~/kraken/kraken_standard$now/raw_reads/results/1019BC2_stdkraken.kraken \
1> ~/kraken/kraken_standard$now/raw_reads/results/1019BC2_stdkraken.report 2>> ~/kraken/kraken_standard$now/raw_reads/log_files/1019BC2kraken.log

#
#Description of kraken reports:
#Used to get an idea of the kraken's results across the entire sample.
#
#The output is tab delimites, with one line per taxon. Fields:
#
#    Percentage of reads covered by the clade rooted at this taxon
#    Number of reads covered by the clade rooted at this taxon
#    Number of reads assigned directly to this taxon
#    A rank code, indicating (U)nclassified, (D)omain, (K)ingdom, (P)hylum, (C)lass, (O)rder, (F)amily, (G)enus, or (S)pecies. All other ranks are simply '-'.
#    NCBI taxonomy ID
#    indented scientific name
#
#The scientific names are indented using spaces, according to the tree structure specified by the taxonomy.
#


#Prepare for custom kraken analysis of contamination on the assemblies:

mkdir ~/kraken/kraken_custom$now

mkdir ~/kraken/kraken_custom$now/assemblies/

mkdir ~/kraken/kraken_custom$now/assemblies/results

mkdir ~/kraken/kraken_custom$now/assemblies/log_files

#Custom kraken on assemblies

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fasta-input /home/merce/Assemblies/P1260_1001_preliminary_assembly.fasta \
1> ~/kraken/kraken_custom$now/assemblies/results/1001_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/assemblies/log_files/1001kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fasta-input /home/merce/Assemblies/P1260_1002_preliminary_assembly.fasta \
1> ~/kraken/kraken_custom$now/assemblies/results/1002_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/assemblies/log_files/1002kraken.log 

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fasta-input /home/merce/Assemblies/P1260_1003_preliminary_assembly.fasta \
1> ~/kraken/kraken_custom$now/assemblies/results/1003_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/assemblies/log_files/1003kraken.log 

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fasta-input /home/merce/Assemblies/P1260_1004_preliminary_assembly.fasta \
1> ~/kraken/kraken_custom$now/assemblies/results/1004_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/assemblies/log_files/1004kraken.log 

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fasta-input /home/merce/Assemblies/P1260_1005_preliminary_assembly.fasta \
1> ~/kraken/kraken_custom$now/assemblies/results/1005_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/assemblies/log_files/1005kraken.log 

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fasta-input /home/merce/Assemblies/P1260_1006_preliminary_assembly.fasta \
1> ~/kraken/kraken_custom$now/assemblies/results/1006_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/assemblies/log_files/1006kraken.log 

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fasta-input /home/merce/Assemblies/P1260_1007_preliminary_assembly.fasta \
1> ~/kraken/kraken_custom$now/assemblies/results/1007_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/assemblies/log_files/1007kraken.log 

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fasta-input /home/merce/Assemblies/P1260_1008_preliminary_assembly.fasta \
1> ~/kraken/kraken_custom$now/assemblies/results/1008_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/assemblies/log_files/1008kraken.log 

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fasta-input /home/merce/Assemblies/P1260_1009_preliminary_assembly.fasta \
1> ~/kraken/kraken_custom$now/assemblies/results/1009_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/assemblies/log_files/1009kraken.log 

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fasta-input /home/merce/Assemblies/P1260_1010_preliminary_assembly.fasta \
1> ~/kraken/kraken_custom$now/assemblies/results/1010_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/assemblies/log_files/1010kraken.log 

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fasta-input /home/merce/Assemblies/P1260_1011_preliminary_assembly.fasta \
1> ~/kraken/kraken_custom$now/assemblies/results/1011_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/assemblies/log_files/1011kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fasta-input /home/merce/Assemblies/P1260_1012_preliminary_assembly.fasta \
1> ~/kraken/kraken_custom$now/assemblies/results/1012_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/assemblies/log_files/1012kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fasta-input /home/merce/Assemblies/P1260_1013_preliminary_assembly.fasta \
1> ~/kraken/kraken_custom$now/assemblies/results/1013_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/assemblies/log_files/1013kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fasta-input /home/merce/Assemblies/P1260_1014_preliminary_assembly.fasta \
1> ~/kraken/kraken_custom$now/assemblies/results/1014_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/assemblies/log_files/1014kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fasta-input /home/merce/Assemblies/P1260_1015_preliminary_assembly.fasta \
1> ~/kraken/kraken_custom$now/assemblies/results/1015_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/assemblies/log_files/1015kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fasta-input /home/merce/Assemblies/P1260_1016_preliminary_assembly.fasta \
1> ~/kraken/kraken_custom$now/assemblies/results/1016_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/assemblies/log_files/1016kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fasta-input /home/merce/Assemblies/P1260_1017_preliminary_assembly.fasta \
1> ~/kraken/kraken_custom$now/assemblies/results/1017_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/assemblies/log_files/1017kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fasta-input /home/merce/Assemblies/P1260_1018_preliminary_assembly.fasta \
1> ~/kraken/kraken_custom$now/assemblies/results/1018_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/assemblies/log_files/1018kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fasta-input /home/merce/Assemblies/P1260_1019_preliminary_assembly.fasta \
1> ~/kraken/kraken_custom$now/assemblies/results/1019_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/assemblies/log_files/1019kraken.log


#Prepare for custom kraken analysis of contamination on the raw_reads:

mkdir ~/kraken/kraken_custom$now

mkdir ~/kraken/kraken_custom$now/raw_reads/

mkdir ~/kraken/kraken_custom$now/raw_reads/results

mkdir ~/kraken/kraken_custom$now/raw_reads/log_files

#Custom kraken on raw reads

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1001_1.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1001AH1_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1001AH1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1001_2.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1001AH2_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1001AH2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1002_1.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1002AH1_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1002AH1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1002_2.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1002AH2_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1002AH2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1003_1.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1003AH1_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1003AH1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1003_2.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1003AH2_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1003AH2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1004_1.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1004AH1_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1004AH1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1004_2.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1004AH2_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1004AH2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1005_1.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1005AH1_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1005AH1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1005_2.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1005AH2_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1005AH2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1006_1.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1006AH1_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1006AH1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1006_2.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1006AH2_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1006AH2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1007_1.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1007AH1_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1007AH1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1007_2.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1007AH2_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1007AH2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1008_1.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1008AH1_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1008AH1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1008_2.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1008AH2_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1008AH2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1009_1.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1009AH1_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1009AH1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1009_2.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1009AH2_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1009AH2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1010_1.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1010AH1_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1010AH1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1010_2.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1010AH2_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1010AH2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1011_1.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1011AH1_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1011AH1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1011_2.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1011AH2_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1011AH2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1012_1.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1012AH1_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1012AH1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1012_2.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1012AH2_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1012AH2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1013_1.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1013AH1_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1013AH1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1013_2.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1013AH2_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1013AH2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1014_1.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1014AH1_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1014AH1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1014_2.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1014AH2_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1014AH2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1015_1.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1015AH1_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1015AH1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1015_2.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1015AH2_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1015AH2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1016_1.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1016AH1_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1016AH1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1016_2.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1016AH2_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1016AH2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1017_1.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1017AH1_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1017AH1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1017_2.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1017AH2_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1017AH2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1018_1.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1018AH1_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1018AH1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1018_2.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1018AH2_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1018AH2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1019_1.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1019AH1_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1019AH1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/1_140716_AH9BY4ADXX_P1260_1019_2.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1019AH2_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1019AH2kraken.log


kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1001_1.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1001BC1_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1001BC1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1001_2.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1001BC2_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1001BC2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1002_1.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1002BC1_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1002BC1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1002_2.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1002BC2_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1002BC2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1003_1.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1003BC1_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1003BC1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1003_2.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1003BC2_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1003BC2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1004_1.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1004BC1_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1004BC1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1004_2.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1004BC2_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1004BC2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1005_1.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1005BC1_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1005BC1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1005_2.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1005BC2_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1005BC2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1006_1.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1006BC1_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1006BC1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1006_2.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1006BC2_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1006BC2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1007_1.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1007BC1_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1007BC1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1007_2.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1007BC2_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1007BC2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1008_1.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1008BC1_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1008BC1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1008_2.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1008BC2_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1008BC2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1009_1.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1009BC1_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1009BC1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1009_2.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1009BC2_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1009BC2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1010_1.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1010BC1_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1010BC1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1010_2.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1010BC2_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1010BC2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1011_1.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1011BC1_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1011BC1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1011_2.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1011BC2_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1011BC2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1012_1.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1012BC1_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1012BC1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1012_2.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1012BC2_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1012BC2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1013_1.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1013BC1_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1013BC1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1013_2.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1013BC2_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1013BC2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1014_1.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1014BC1_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1014BC1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1014_2.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1014BC2_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1014BC2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1015_1.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1015BC1_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1015BC1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1015_2.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1015BC2_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1015BC2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1016_1.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1016BC1_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1016BC1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1016_2.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1016BC2_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1016BC2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1017_1.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1017BC1_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1017BC1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1017_2.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1017BC2_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1017BC2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1018_1.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1018BC1_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1018BC1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1018_2.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1018BC2_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1018BC2kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1019_1.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1019BC1_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1019BC1kraken.log

kraken --threads 24 --db ~/kraken/kraken_db/custom_db_$now --fastq-input /home/merce/raw_reads/8_140619_BC47HDACXX_P1260_1019_2.fastq \
1> ~/kraken/kraken_custom$now/raw_reads/results/1019BC2_cstmkraken.kraken 2> ~/kraken/kraken_custom$now/raw_reads/log_files/1019BC2kraken.log

#
#Description of kraken first output:
#Each sequence classified by Kraken results in a single line of output. Output lines contain five tab-delimited fields; from left to right, they are:
#
#    "C"/"U": one letter code indicating that the sequence was either classified or unclassified.
#    The sequence ID, obtained from the FASTA/FASTQ header.
#    The taxonomy ID Kraken used to label the sequence; this is 0 if the sequence is unclassified.
#    The length of the sequence in bp.
#    A space-delimited list indicating the LCA mapping of each k-mer in the sequence. For example, "562:13 561:4 A:31 0:1 562:3" would indicate that:
#        the first 13 k-mers mapped to taxonomy ID #562
#        the next 4 k-mers mapped to taxonomy ID #561
#        the next 31 k-mers contained an ambiguous nucleotide
#        the next k-mer was not in the database
#        the last 3 k-mers mapped to taxonomy ID #562
#

#Output translation

#kraken translate on assemblies:

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/assemblies/results/1001_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/assemblies/results/1001_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/assemblies/log_files/1001kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/assemblies/results/1002_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/assemblies/results/1002_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/assemblies/log_files/1002kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/assemblies/results/1003_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/assemblies/results/1003_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/assemblies/log_files/1003kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/assemblies/results/1004_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/assemblies/results/1004_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/assemblies/log_files/1004kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/assemblies/results/1005_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/assemblies/results/1005_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/assemblies/log_files/1005kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/assemblies/results/1006_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/assemblies/results/1006_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/assemblies/log_files/1006kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/assemblies/results/1007_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/assemblies/results/1007_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/assemblies/log_files/1007kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/assemblies/results/1008_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/assemblies/results/1008_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/assemblies/log_files/1008kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/assemblies/results/1009_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/assemblies/results/1009_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/assemblies/log_files/1009kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/assemblies/results/1010_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/assemblies/results/1010_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/assemblies/log_files/1010kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/assemblies/results/1011_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/assemblies/results/1011_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/assemblies/log_files/1011kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/assemblies/results/1012_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/assemblies/results/1012_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/assemblies/log_files/1012kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/assemblies/results/1013_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/assemblies/results/1013_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/assemblies/log_files/1013kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/assemblies/results/1014_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/assemblies/results/1014_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/assemblies/log_files/1014kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/assemblies/results/1015_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/assemblies/results/1015_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/assemblies/log_files/1015kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/assemblies/results/1016_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/assemblies/results/1016_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/assemblies/log_files/1016kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/assemblies/results/1017_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/assemblies/results/1017_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/assemblies/log_files/1017kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/assemblies/results/1018_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/assemblies/results/1018_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/assemblies/log_files/1018kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/assemblies/results/1019_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/assemblies/results/1019_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/assemblies/log_files/1019kraken.log


#Kraken translate on raw reads:

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1001AH1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1001AH1_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1001AH1kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1001AH2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1001AH2_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1001AH2kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1001BC1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1001BC1_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1001BC1kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1001BC2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1001BC2_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1001BC2kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1002AH1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1002AH1_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1002AH1kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1002AH2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1002AH2_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1002AH2kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1002BC1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1002BC1_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1002BC1kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1002BC2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1002BC2_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1002BC2kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1003AH1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1003AH1_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1003AH1kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1003AH2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1003AH2_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1003AH2kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1003BC1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1003BC1_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1003BC1kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1003BC2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1003BC2_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1003BC2kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1004AH1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1004AH1_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1004AH1kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1004AH2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1004AH2_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1004AH2kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1004BC1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1004BC1_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1004BC1kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1004BC2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1004BC2_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1004BC2kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1005AH1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1005AH1_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1005AH1kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1005AH2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1005AH2_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1005AH2kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1005BC1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1005BC1_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1005BC1kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1005BC2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1005BC2_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1005BC2kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1006AH1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1006AH1_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1006AH1kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1006AH2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1006AH2_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1006AH2kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1006BC1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1006BC1_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1006BC1kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1006BC2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1006BC2_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1006BC2kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1007AH1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1007AH1_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1007AH1kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1007AH2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1007AH2_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1007AH2kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1007BC1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1007BC1_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1007BC1kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1007BC2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1007BC2_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1007BC2kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1008AH1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1008AH1_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1008AH1kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1008AH2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1008AH2_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1008AH2kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1008BC1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1008BC1_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1008BC1kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1008BC2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1008BC2_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1008BC2kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1009AH1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1009AH1_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1009AH1kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1009AH2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1009AH2_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1009AH2kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1009BC1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1009BC1_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1009BC1kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1009BC2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1009BC2_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1009BC2kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1010AH1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1010AH1_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1010AH1kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1010AH2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1010AH2_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1010AH2kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1010BC1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1010BC1_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1010BC1kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1010BC2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1010BC2_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1010BC2kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1011AH1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1011AH1_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1011AH1kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1011AH2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1011AH2_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1011AH2kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1011BC1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1011BC1_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1011BC1kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1011BC2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1011BC2_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1011BC2kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1012AH1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1012AH1_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1012AH1kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1012AH2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1012AH2_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1012AH2kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1012BC1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1012BC1_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1012BC1kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1012BC2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1012BC2_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1012BC2kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1013AH1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1013AH1_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1013AH1kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1013AH2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1013AH2_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1013AH2kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1013BC1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1013BC1_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1013BC1kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1013BC2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1013BC2_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1013BC2kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1014AH1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1014AH1_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1014AH1kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1014AH2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1014AH2_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1014AH2kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1014BC1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1014BC1_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1014BC1kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1014BC2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1014BC2_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1014BC2kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1015AH1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1015AH1_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1015AH1kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1015AH2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1015AH2_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1015AH2kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1015BC1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1015BC1_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1015BC1kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1015BC2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1015BC2_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1015BC2kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1016AH1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1016AH1_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1016AH1kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1016AH2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1016AH2_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1016AH2kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1016BC1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1016BC1_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1016BC1kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1016BC2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1016BC2_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1016BC2kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1017AH1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1017AH1_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1017AH1kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1017AH2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1017AH2_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1017AH2kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1017BC1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1017BC1_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1017BC1kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1017BC2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1017BC2_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1017BC2kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1018AH1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1018AH1_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1018AH1kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1018AH2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1018AH2_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1018AH2kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1018BC1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1018BC1_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1018BC1kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1018BC2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1018BC2_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1018BC2kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1019AH1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1019AH1_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1019AH1kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1019AH2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1019AH2_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1019AH2kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1019BC1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1019BC1_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1019BC1kraken.log

kraken-translate --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1019BC2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1019BC2_cstmkraken.labels 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1019BC2kraken.log

#
#Description of kraken translate output:
#
#It only reports classified sequences, the output format generated is a text file with two tab-delimited columns and one line for each sequence.
#The first column is the sequence ID of the classified sequences, and the second column contains the taxonomy of the sequence. 
#Example: SEQ1 root;cellular organisms;Bacteria;Proteobacteria;Gammaproteobacteria;Enterobacteriales;Enterobacteriaceae;Escherichia;Escherichia coli
#


#Kraken report

#kraken report on assemblies:

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/assemblies/results/1001_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/assemblies/results/1001_cstmkraken.report 2>> ~/kraken/kraken_custom$now/assemblies/log_files/1001kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/assemblies/results/1002_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/assemblies/results/1002_cstmkraken.report 2>> ~/kraken/kraken_custom$now/assemblies/log_files/1002kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/assemblies/results/1003_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/assemblies/results/1003_cstmkraken.report 2>> ~/kraken/kraken_custom$now/assemblies/log_files/1003kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/assemblies/results/1004_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/assemblies/results/1004_cstmkraken.report 2>> ~/kraken/kraken_custom$now/assemblies/log_files/1004kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/assemblies/results/1005_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/assemblies/results/1005_cstmkraken.report 2>> ~/kraken/kraken_custom$now/assemblies/log_files/1005kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/assemblies/results/1006_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/assemblies/results/1006_cstmkraken.report 2>> ~/kraken/kraken_custom$now/assemblies/log_files/1006kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/assemblies/results/1007_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/assemblies/results/1007_cstmkraken.report 2>> ~/kraken/kraken_custom$now/assemblies/log_files/1007kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/assemblies/results/1008_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/assemblies/results/1008_cstmkraken.report 2>> ~/kraken/kraken_custom$now/assemblies/log_files/1008kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/assemblies/results/1009_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/assemblies/results/1009_cstmkraken.report 2>> ~/kraken/kraken_custom$now/assemblies/log_files/1009kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/assemblies/results/1010_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/assemblies/results/1010_cstmkraken.report 2>> ~/kraken/kraken_custom$now/assemblies/log_files/1010kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/assemblies/results/1011_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/assemblies/results/1011_cstmkraken.report 2>> ~/kraken/kraken_custom$now/assemblies/log_files/1011kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/assemblies/results/1012_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/assemblies/results/1012_cstmkraken.report 2>> ~/kraken/kraken_custom$now/assemblies/log_files/1012kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/assemblies/results/1013_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/assemblies/results/1013_cstmkraken.report 2>> ~/kraken/kraken_custom$now/assemblies/log_files/1013kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/assemblies/results/1014_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/assemblies/results/1014_cstmkraken.report 2>> ~/kraken/kraken_custom$now/assemblies/log_files/1014kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/assemblies/results/1015_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/assemblies/results/1015_cstmkraken.report 2>> ~/kraken/kraken_custom$now/assemblies/log_files/1015kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/assemblies/results/1016_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/assemblies/results/1016_cstmkraken.report 2>> ~/kraken/kraken_custom$now/assemblies/log_files/1016kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/assemblies/results/1017_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/assemblies/results/1017_cstmkraken.report 2>> ~/kraken/kraken_custom$now/assemblies/log_files/1017kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/assemblies/results/1018_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/assemblies/results/1018_cstmkraken.report 2>> ~/kraken/kraken_custom$now/assemblies/log_files/1018kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/assemblies/results/1019_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/assemblies/results/1019_cstmkraken.report 2>> ~/kraken/kraken_custom$now/assemblies/log_files/1019kraken.log


#Kraken report on raw reads:

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1001AH1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1001AH1_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1001AH1kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1001AH2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1001AH2_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1001AH2kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1001BC1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1001BC1_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1001BC1kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1001BC2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1001BC2_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1001BC2kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1002AH1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1002AH1_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1002AH1kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1002AH2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1002AH2_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1002AH2kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1002BC1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1002BC1_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1002BC1kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1002BC2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1002BC2_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1002BC2kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1003AH1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1003AH1_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1003AH1kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1003AH2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1003AH2_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1003AH2kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1003BC1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1003BC1_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1003BC1kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1003BC2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1003BC2_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1003BC2kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1004AH1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1004AH1_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1004AH1kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1004AH2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1004AH2_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1004AH2kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1004BC1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1004BC1_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1004BC1kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1004BC2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1004BC2_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1004BC2kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1005AH1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1005AH1_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1005AH1kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1005AH2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1005AH2_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1005AH2kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1005BC1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1005BC1_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1005BC1kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1005BC2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1005BC2_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1005BC2kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1006AH1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1006AH1_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1006AH1kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1006AH2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1006AH2_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1006AH2kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1006BC1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1006BC1_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1006BC1kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1006BC2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1006BC2_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1006BC2kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1007AH1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1007AH1_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1007AH1kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1007AH2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1007AH2_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1007AH2kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1007BC1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1007BC1_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1007BC1kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1007BC2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1007BC2_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1007BC2kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1008AH1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1008AH1_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1008AH1kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1008AH2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1008AH2_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1008AH2kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1008BC1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1008BC1_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1008BC1kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1008BC2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1008BC2_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1008BC2kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1009AH1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1009AH1_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1009AH1kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1009AH2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1009AH2_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1009AH2kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1009BC1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1009BC1_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1009BC1kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1009BC2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1009BC2_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1009BC2kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1010AH1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1010AH1_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1010AH1kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1010AH2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1010AH2_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1010AH2kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1010BC1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1010BC1_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1010BC1kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1010BC2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1010BC2_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1010BC2kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1011AH1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1011AH1_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1011AH1kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1011AH2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1011AH2_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1011AH2kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1011BC1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1011BC1_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1011BC1kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1011BC2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1011BC2_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1011BC2kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1012AH1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1012AH1_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1012AH1kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1012AH2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1012AH2_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1012AH2kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1012BC1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1012BC1_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1012BC1kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1012BC2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1012BC2_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1012BC2kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1013AH1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1013AH1_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1013AH1kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1013AH2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1013AH2_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1013AH2kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1013BC1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1013BC1_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1013BC1kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1013BC2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1013BC2_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1013BC2kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1014AH1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1014AH1_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1014AH1kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1014AH2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1014AH2_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1014AH2kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1014BC1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1014BC1_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1014BC1kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1014BC2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1014BC2_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1014BC2kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1015AH1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1015AH1_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1015AH1kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1015AH2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1015AH2_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1015AH2kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1015BC1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1015BC1_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1015BC1kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1015BC2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1015BC2_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1015BC2kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1016AH1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1016AH1_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1016AH1kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1016AH2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1016AH2_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1016AH2kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1016BC1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1016BC1_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1016BC1kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1016BC2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1016BC2_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1016BC2kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1017AH1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1017AH1_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1017AH1kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1017AH2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1017AH2_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1017AH2kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1017BC1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1017BC1_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1017BC1kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1017BC2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1017BC2_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1017BC2kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1018AH1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1018AH1_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1018AH1kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1018AH2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1018AH2_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1018AH2kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1018BC1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1018BC1_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1018BC1kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1018BC2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1018BC2_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1018BC2kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1019AH1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1019AH1_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1019AH1kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1019AH2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1019AH2_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1019AH2kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1019BC1_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1019BC1_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1019BC1kraken.log

kraken-report --db ~/kraken/kraken_db/custom_db_$now ~/kraken/kraken_custom$now/raw_reads/results/1019BC2_cstmkraken.kraken \
1> ~/kraken/kraken_custom$now/raw_reads/results/1019BC2_cstmkraken.report 2>> ~/kraken/kraken_custom$now/raw_reads/log_files/1019BC2kraken.log

#
#Description of kraken reports:
#Used to get an idea of the kraken's results across the entire sample.
#
#The output is tab delimites, with one line per taxon. Fields:
#
#    Percentage of reads covered by the clade rooted at this taxon
#    Number of reads covered by the clade rooted at this taxon
#    Number of reads assigned directly to this taxon
#    A rank code, indicating (U)nclassified, (D)omain, (K)ingdom, (P)hylum, (C)lass, (O)rder, (F)amily, (G)enus, or (S)pecies. All other ranks are simply '-'.
#    NCBI taxonomy ID
#    indented scientific name
#
#The scientific names are indented using spaces, according to the tree structure specified by the taxonomy.
#
