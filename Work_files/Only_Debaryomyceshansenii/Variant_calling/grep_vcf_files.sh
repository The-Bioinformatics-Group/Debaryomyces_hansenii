#!/usr/bin/env bash

#Usage
#
#    ./grep_vcf_files.sh filename.vcf
#

#Variables

filename=${1%.*}
filenamefull=$1

echo "Variants of" ${filename}

#Count number of total variants:

#Count snps:

echo "SNPs"

grep -e"TYPE=snp" -c $filenamefull

#Count indels:

echo "Indels"

grep -e"TYPE=del" -e"TYPE=ins" -c $filenamefull

#Count complex:

echo "Complex variants:"

grep -e"TYPE=complex" -c $filenamefull

#Create new files for just protein coding:

grep -e"protein_coding" $filenamefull > ${filename}_proteincoding.vcf

#SNPs:

echo "SNPs on protein coding regions:"

grep -e"TYPE=snp" -c ${filename}_proteincoding.vcf 

echo "Indels on protein coding regions:"

grep -e"TYPE=del" -e"TYPE=ins" -c ${filename}_proteincoding.vcf

#Missense:

grep -e"missense_variant" ${filename}_proteincoding.vcf > ${filename}_protcod_missense.vcf

echo "Missense variants on protein coding regions:"

wc -l ${filename}_protcod_missense.vcf

echo "Of which come from SNPs:"

grep -e"TYPE=snp" -c ${filename}_protcod_missense.vcf

echo "Of which come from Indels:"

grep -e"TYPE=del" -e"TYPE=ins" -c ${filename}_protcod_missense.vcf

echo "Of which come from complex variants:"

grep -e"TYPE=complex" -c ${filename}_protcod_missense.vcf

#Synonymous:

grep -e"synonymous_variant" ${filename}_proteincoding.vcf > ${filename}_protcod_synonymous.vcf

echo "Synonymous variants on protein coding regions:"

wc -l ${filename}_protcod_synonymous.vcf

echo "Of which come from SNPs:"

grep -e"TYPE=snp" -c ${filename}_protcod_synonymous.vcf

echo "Of which come from Indels:"

grep -e"TYPE=del" -e"TYPE=ins" -c ${filename}_protcod_synonymous.vcf

echo "Of which come from complex variants:"

grep -e"TYPE=complex" -c ${filename}_protcod_synonymous.vcf

#Frame-shift mutation:

#Indels:

#Missense:

#Synonymous:

#Total:

#Complex:


