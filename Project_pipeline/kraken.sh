#!/usr/bin/env bash

#Before running the script, Add this line in your .profile
#
#ls -la
#
#export PATH="/home/tomasl/bin/jellyfish-1.1.11/bin/:$PATH"
#
#Then, open a new terminal for it to be changed.
#

mkdir ~/kraken

mkdir ~/kraken_db

now=$(date +"%Y%m%d")

mkdir ~/kraken_db/standard_db_$now

mkdir ~/kraken_db/custom_db_$now

#Build standard database:

#It will only contain bacteria and virus refseq

kraken-build --standard --threads 24 --db ~/kraken_db/standard_db_$now

#Build custom database:

#We will add bacteria, viruses, human, plasmids and all fungi

#This will download the GI number to taxon map, as well as the taxonomic name and tree information from NCBI:

kraken-build --download-taxonomy --db ~/kraken_db/custom_db_$now

#Download and install libraries with kraken command:

kraken-build --download-library bacteria --db ~/kraken_db/custom_db_$now

kraken-build --download-library viruses --db ~/kraken_db/custom_db_$now

kraken-build --download-library plasmids --db ~/kraken_db/custom_db_$now

#It should be one for Human, but it seems to not be working properly, so it will be download and added apart, same as all fungi genomes:

mkdir ~/kraken_db/all_fungi_$now

mkdir ~/kraken_db/human_$now

wget ftp://ftp.ncbi.nlm.nih.gov/refseq/release/fungi/*genomic*fna* -P ~/kraken_db/all_fungi_$now

wget ftp://ftp.ncbi.nlm.nih.gov/refseq/H_sapiens/RefSeqGene/*genomic*fna* -P ~/kraken_db/human_$now

#gunzip

guzip ~/kraken_db/all_fungi_$now/*.gz

gunzip ~/kraken_db/human_$now/*.gz

#build library with downloaded fna files:

find ~/kraken_db/all_fungi_$now/ -name '*.fna' -print0 | \
        xargs -0 -I{} -n1 kraken-build --add-to-library {} --db ~/kraken_db/custom_db_$now

find ~/kraken_db/human_$now/ -name '*.fna' -print0 | \
        xargs -0 -I{} -n1 kraken-build --add-to-library {} --db ~/kraken_db/custom_db_$now

#Build database:

kraken-build --build --threads 24 --db ~/kraken_db/custom_db_$now

#Note: Jellyfish 1 needed.
