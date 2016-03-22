#!/usr/bin/env bash

#Chromosome names:

#In Freebayes cohort:

sed -e 's/CR382133.2/CR382133/g' -e 's/CR382134.2/B/g' -e 's/CR382135.2/C/g' -e 's/CR382136.2/CR382136/g' -e 's/CR382137.2/E/g' -e 's/CR382138.2/F/g' -e 's/CR382139.2/G/g' \
/data02/merce/deha_vcalling/FB_cohort/12Deha_FBc.vcf \
> /data02/merce/deha_vcalling/FB_cohort/12Deha_FBc_ch.vcf

#In Freebayes cohort -noindels:

sed -e 's/CR382133.2/CR382133/g' -e 's/CR382134.2/B/g' -e 's/CR382135.2/C/g' -e 's/CR382136.2/CR382136/g' -e 's/CR382137.2/E/g' -e 's/CR382138.2/F/g' -e 's/CR382139.2/G/g' \
/data02/merce/deha_vcalling/FB_cohort/no-indels/12Deha_FBc.vcf \
> /data02/merce/deha_vcalling/FB_cohort/no-indels/12Deha_FBc_ch.vcf

#In Freebayes individual:

sed -e 's/CR382133.2/CR382133/g' -e 's/CR382134.2/B/g' -e 's/CR382135.2/C/g' -e 's/CR382136.2/CR382136/g' -e 's/CR382137.2/E/g' -e 's/CR382138.2/F/g' -e 's/CR382139.2/G/g' \
/data02/merce/deha_vcalling/FB_individual/1001Deha_FBi.vcf \
> /data02/merce/deha_vcalling/FB_individual/1001Deha_FBi_ch.vcf

sed -e 's/CR382133.2/CR382133/g' -e 's/CR382134.2/B/g' -e 's/CR382135.2/C/g' -e 's/CR382136.2/CR382136/g' -e 's/CR382137.2/E/g' -e 's/CR382138.2/F/g' -e 's/CR382139.2/G/g' \
/data02/merce/deha_vcalling/FB_individual/1002Deha_FBi.vcf \
> /data02/merce/deha_vcalling/FB_individual/1002Deha_FBi_ch.vcf

sed -e 's/CR382133.2/CR382133/g' -e 's/CR382134.2/B/g' -e 's/CR382135.2/C/g' -e 's/CR382136.2/CR382136/g' -e 's/CR382137.2/E/g' -e 's/CR382138.2/F/g' -e 's/CR382139.2/G/g' \
/data02/merce/deha_vcalling/FB_individual/1003Deha_FBi.vcf \
> /data02/merce/deha_vcalling/FB_individual/1003Deha_FBi_ch.vcf

sed -e 's/CR382133.2/CR382133/g' -e 's/CR382134.2/B/g' -e 's/CR382135.2/C/g' -e 's/CR382136.2/CR382136/g' -e 's/CR382137.2/E/g' -e 's/CR382138.2/F/g' -e 's/CR382139.2/G/g' \
/data02/merce/deha_vcalling/FB_individual/1004Deha_FBi.vcf \
> /data02/merce/deha_vcalling/FB_individual/1004Deha_FBi_ch.vcf

sed -e 's/CR382133.2/CR382133/g' -e 's/CR382134.2/B/g' -e 's/CR382135.2/C/g' -e 's/CR382136.2/CR382136/g' -e 's/CR382137.2/E/g' -e 's/CR382138.2/F/g' -e 's/CR382139.2/G/g' \
/data02/merce/deha_vcalling/FB_individual/1005Deha_FBi.vcf \
> /data02/merce/deha_vcalling/FB_individual/1005Deha_FBi_ch.vcf

sed -e 's/CR382133.2/CR382133/g' -e 's/CR382134.2/B/g' -e 's/CR382135.2/C/g' -e 's/CR382136.2/CR382136/g' -e 's/CR382137.2/E/g' -e 's/CR382138.2/F/g' -e 's/CR382139.2/G/g' \
/data02/merce/deha_vcalling/FB_individual/1007Deha_FBi.vcf \
> /data02/merce/deha_vcalling/FB_individual/1007Deha_FBi_ch.vcf

sed -e 's/CR382133.2/CR382133/g' -e 's/CR382134.2/B/g' -e 's/CR382135.2/C/g' -e 's/CR382136.2/CR382136/g' -e 's/CR382137.2/E/g' -e 's/CR382138.2/F/g' -e 's/CR382139.2/G/g' \
/data02/merce/deha_vcalling/FB_individual/1008Deha_FBi.vcf \
> /data02/merce/deha_vcalling/FB_individual/1008Deha_FBi_ch.vcf

sed -e 's/CR382133.2/CR382133/g' -e 's/CR382134.2/B/g' -e 's/CR382135.2/C/g' -e 's/CR382136.2/CR382136/g' -e 's/CR382137.2/E/g' -e 's/CR382138.2/F/g' -e 's/CR382139.2/G/g' \
/data02/merce/deha_vcalling/FB_individual/1013Deha_FBi.vcf \
> /data02/merce/deha_vcalling/FB_individual/1013Deha_FBi_ch.vcf

sed -e 's/CR382133.2/CR382133/g' -e 's/CR382134.2/B/g' -e 's/CR382135.2/C/g' -e 's/CR382136.2/CR382136/g' -e 's/CR382137.2/E/g' -e 's/CR382138.2/F/g' -e 's/CR382139.2/G/g' \
/data02/merce/deha_vcalling/FB_individual/1014Deha_FBi.vcf \
> /data02/merce/deha_vcalling/FB_individual/1014Deha_FBi_ch.vcf

sed -e 's/CR382133.2/CR382133/g' -e 's/CR382134.2/B/g' -e 's/CR382135.2/C/g' -e 's/CR382136.2/CR382136/g' -e 's/CR382137.2/E/g' -e 's/CR382138.2/F/g' -e 's/CR382139.2/G/g' \
/data02/merce/deha_vcalling/FB_individual/1015Deha_FBi.vcf \
> /data02/merce/deha_vcalling/FB_individual/1015Deha_FBi_ch.vcf

sed -e 's/CR382133.2/CR382133/g' -e 's/CR382134.2/B/g' -e 's/CR382135.2/C/g' -e 's/CR382136.2/CR382136/g' -e 's/CR382137.2/E/g' -e 's/CR382138.2/F/g' -e 's/CR382139.2/G/g' \
/data02/merce/deha_vcalling/FB_individual/1016Deha_FBi.vcf \
> /data02/merce/deha_vcalling/FB_individual/1016Deha_FBi_ch.vcf

sed -e 's/CR382133.2/CR382133/g' -e 's/CR382134.2/B/g' -e 's/CR382135.2/C/g' -e 's/CR382136.2/CR382136/g' -e 's/CR382137.2/E/g' -e 's/CR382138.2/F/g' -e 's/CR382139.2/G/g' \
/data02/merce/deha_vcalling/FB_individual/1019Deha_FBi.vcf \
> /data02/merce/deha_vcalling/FB_individual/1019Deha_FBi_ch.vcf


#In Freebayes Individual -noindels:

sed -e 's/CR382133.2/CR382133/g' -e 's/CR382134.2/B/g' -e 's/CR382135.2/C/g' -e 's/CR382136.2/CR382136/g' -e 's/CR382137.2/E/g' -e 's/CR382138.2/F/g' -e 's/CR382139.2/G/g' \
/data02/merce/deha_vcalling/FB_individual/no-indels/1001Deha_FBi.vcf \
> /data02/merce/deha_vcalling/FB_individual/no-indels/1001Deha_FBi_ch.vcf

sed -e 's/CR382133.2/CR382133/g' -e 's/CR382134.2/B/g' -e 's/CR382135.2/C/g' -e 's/CR382136.2/CR382136/g' -e 's/CR382137.2/E/g' -e 's/CR382138.2/F/g' -e 's/CR382139.2/G/g' \
/data02/merce/deha_vcalling/FB_individual/no-indels/1002Deha_FBi.vcf \
> /data02/merce/deha_vcalling/FB_individual/no-indels/1002Deha_FBi_ch.vcf

sed -e 's/CR382133.2/CR382133/g' -e 's/CR382134.2/B/g' -e 's/CR382135.2/C/g' -e 's/CR382136.2/CR382136/g' -e 's/CR382137.2/E/g' -e 's/CR382138.2/F/g' -e 's/CR382139.2/G/g' \
/data02/merce/deha_vcalling/FB_individual/no-indels/1003Deha_FBi.vcf \
> /data02/merce/deha_vcalling/FB_individual/no-indels/1003Deha_FBi_ch.vcf

sed -e 's/CR382133.2/CR382133/g' -e 's/CR382134.2/B/g' -e 's/CR382135.2/C/g' -e 's/CR382136.2/CR382136/g' -e 's/CR382137.2/E/g' -e 's/CR382138.2/F/g' -e 's/CR382139.2/G/g' \
/data02/merce/deha_vcalling/FB_individual/no-indels/1004Deha_FBi.vcf \
> /data02/merce/deha_vcalling/FB_individual/no-indels/1004Deha_FBi_ch.vcf

sed -e 's/CR382133.2/CR382133/g' -e 's/CR382134.2/B/g' -e 's/CR382135.2/C/g' -e 's/CR382136.2/CR382136/g' -e 's/CR382137.2/E/g' -e 's/CR382138.2/F/g' -e 's/CR382139.2/G/g' \
/data02/merce/deha_vcalling/FB_individual/no-indels/1005Deha_FBi.vcf \
> /data02/merce/deha_vcalling/FB_individual/no-indels/1005Deha_FBi_ch.vcf

sed -e 's/CR382133.2/CR382133/g' -e 's/CR382134.2/B/g' -e 's/CR382135.2/C/g' -e 's/CR382136.2/CR382136/g' -e 's/CR382137.2/E/g' -e 's/CR382138.2/F/g' -e 's/CR382139.2/G/g' \
/data02/merce/deha_vcalling/FB_individual/no-indels/1007Deha_FBi.vcf \
> /data02/merce/deha_vcalling/FB_individual/no-indels/1007Deha_FBi_ch.vcf

sed -e 's/CR382133.2/CR382133/g' -e 's/CR382134.2/B/g' -e 's/CR382135.2/C/g' -e 's/CR382136.2/CR382136/g' -e 's/CR382137.2/E/g' -e 's/CR382138.2/F/g' -e 's/CR382139.2/G/g' \
/data02/merce/deha_vcalling/FB_individual/no-indels/1008Deha_FBi.vcf \
> /data02/merce/deha_vcalling/FB_individual/no-indels/1008Deha_FBi_ch.vcf

sed -e 's/CR382133.2/CR382133/g' -e 's/CR382134.2/B/g' -e 's/CR382135.2/C/g' -e 's/CR382136.2/CR382136/g' -e 's/CR382137.2/E/g' -e 's/CR382138.2/F/g' -e 's/CR382139.2/G/g' \
/data02/merce/deha_vcalling/FB_individual/no-indels/1013Deha_FBi.vcf \
> /data02/merce/deha_vcalling/FB_individual/no-indels/1013Deha_FBi_ch.vcf

sed -e 's/CR382133.2/CR382133/g' -e 's/CR382134.2/B/g' -e 's/CR382135.2/C/g' -e 's/CR382136.2/CR382136/g' -e 's/CR382137.2/E/g' -e 's/CR382138.2/F/g' -e 's/CR382139.2/G/g' \
/data02/merce/deha_vcalling/FB_individual/no-indels/1014Deha_FBi.vcf \
> /data02/merce/deha_vcalling/FB_individual/no-indels/1014Deha_FBi_ch.vcf

sed -e 's/CR382133.2/CR382133/g' -e 's/CR382134.2/B/g' -e 's/CR382135.2/C/g' -e 's/CR382136.2/CR382136/g' -e 's/CR382137.2/E/g' -e 's/CR382138.2/F/g' -e 's/CR382139.2/G/g' \
/data02/merce/deha_vcalling/FB_individual/no-indels/1015Deha_FBi.vcf \
> /data02/merce/deha_vcalling/FB_individual/no-indels/1015Deha_FBi_ch.vcf

sed -e 's/CR382133.2/CR382133/g' -e 's/CR382134.2/B/g' -e 's/CR382135.2/C/g' -e 's/CR382136.2/CR382136/g' -e 's/CR382137.2/E/g' -e 's/CR382138.2/F/g' -e 's/CR382139.2/G/g' \
/data02/merce/deha_vcalling/FB_individual/no-indels/1016Deha_FBi.vcf \
> /data02/merce/deha_vcalling/FB_individual/no-indels/1016Deha_FBi_ch.vcf

sed -e 's/CR382133.2/CR382133/g' -e 's/CR382134.2/B/g' -e 's/CR382135.2/C/g' -e 's/CR382136.2/CR382136/g' -e 's/CR382137.2/E/g' -e 's/CR382138.2/F/g' -e 's/CR382139.2/G/g' \
/data02/merce/deha_vcalling/FB_individual/no-indels/1019Deha_FBi.vcf \
> /data02/merce/deha_vcalling/FB_individual/no-indels/1019Deha_FBi_ch.vcf

#In VarScan Indels:

sed -e 's/CR382133.2/CR382133/g' -e 's/CR382134.2/B/g' -e 's/CR382135.2/C/g' -e 's/CR382136.2/CR382136/g' -e 's/CR382137.2/E/g' -e 's/CR382138.2/F/g' -e 's/CR382139.2/G/g' \
/data02/merce/deha_vcalling/VarScan/indels/12Deha_indels_VS.vcf \
> /data02/merce/deha_vcalling/VarScan/indels/12Deha_indels_VS_ch.vcf

#In VarScan SNPs:

sed -e 's/CR382133.2/CR382133/g' -e 's/CR382134.2/B/g' -e 's/CR382135.2/C/g' -e 's/CR382136.2/CR382136/g' -e 's/CR382137.2/E/g' -e 's/CR382138.2/F/g' -e 's/CR382139.2/G/g' \
/data02/merce/deha_vcalling/VarScan/snp/12Deha_snp_VS.vcf \
> /data02/merce/deha_vcalling/VarScan/snp/12Deha_snp_VS_ch.vcf


#####################################################

## SnpEff

#Freebayes cohort

java -jar ~/snpEff/snpEff.jar \
-v GCA_000006445.2.29 \
-no-downstream -no-intergenic -no-intron -no-upstream -no-utr \
-stats /data02/merce/deha_vcalling/FB_cohort/12Deha_FBc_stats.html \
/data02/merce/deha_vcalling/FB_cohort/12Deha_FBc_ch.vcf \
> /data02/merce/deha_vcalling/FB_cohort/12Deha_FBc_snpEff.vcf

#Freebayes cohort -noindels

java -jar ~/snpEff/snpEff.jar \
-v GCA_000006445.2.29 \
-no-downstream -no-intergenic -no-intron -no-upstream -no-utr \
-stats /data02/merce/deha_vcalling/FB_cohort/no-indels/12Deha_FBc_stats.html \ 
/data02/merce/deha_vcalling/FB_cohort/no-indels/12Deha_FBc_ch.vcf \
> /data02/merce/deha_vcalling/FB_cohort/no-indels/12Deha_FBc_snpEff.vcf

#Freebayes individual

java -jar ~/snpEff/snpEff.jar \
-v GCA_000006445.2.29 \
-no-downstream -no-intergenic -no-intron -no-upstream -no-utr \
-stats /data02/merce/deha_vcalling/FB_individual/1001_FBi_stats.html \ 
/data02/merce/deha_vcalling/FB_individual/1001Deha_FBi_ch.vcf \
> /data02/merce/deha_vcalling/FB_individual/1001Deha_FBi_snpEff.vcf

java -jar ~/snpEff/snpEff.jar \
-v GCA_000006445.2.29 \
-no-downstream -no-intergenic -no-intron -no-upstream -no-utr \
-stats /data02/merce/deha_vcalling/FB_individual/1002_FBi_stats.html \ 
/data02/merce/deha_vcalling/FB_individual/1002Deha_FBi_ch.vcf \
> /data02/merce/deha_vcalling/FB_individual/1002Deha_FBi_snpEff.vcf

java -jar ~/snpEff/snpEff.jar \
-v GCA_000006445.2.29 \
-no-downstream -no-intergenic -no-intron -no-upstream -no-utr \
-stats /data02/merce/deha_vcalling/FB_individual/1003_FBi_stats.html \ 
/data02/merce/deha_vcalling/FB_individual/1003Deha_FBi_ch.vcf \
> /data02/merce/deha_vcalling/FB_individual/1003Deha_FBi_snpEff.vcf

java -jar ~/snpEff/snpEff.jar \
-v GCA_000006445.2.29 \
-no-downstream -no-intergenic -no-intron -no-upstream -no-utr \
-stats /data02/merce/deha_vcalling/FB_individual/1004_FBi_stats.html \ 
/data02/merce/deha_vcalling/FB_individual/1004Deha_FBi_ch.vcf \
> /data02/merce/deha_vcalling/FB_individual/1004Deha_FBi_snpEff.vcf

java -jar ~/snpEff/snpEff.jar \
-v GCA_000006445.2.29 \
-no-downstream -no-intergenic -no-intron -no-upstream -no-utr \
-stats /data02/merce/deha_vcalling/FB_individual/1005_FBi_stats.html \ 
/data02/merce/deha_vcalling/FB_individual/1005Deha_FBi_ch.vcf \
> /data02/merce/deha_vcalling/FB_individual/1005Deha_FBi_snpEff.vcf

java -jar ~/snpEff/snpEff.jar \
-v GCA_000006445.2.29 \
-no-downstream -no-intergenic -no-intron -no-upstream -no-utr \
-stats /data02/merce/deha_vcalling/FB_individual/1007_FBi_stats.html \ 
/data02/merce/deha_vcalling/FB_individual/1007Deha_FBi_ch.vcf \
> /data02/merce/deha_vcalling/FB_individual/1007Deha_FBi_snpEff.vcf

java -jar ~/snpEff/snpEff.jar \
-v GCA_000006445.2.29 \
-no-downstream -no-intergenic -no-intron -no-upstream -no-utr \
-stats /data02/merce/deha_vcalling/FB_individual/1008_FBi_stats.html \ 
/data02/merce/deha_vcalling/FB_individual/1008Deha_FBi_ch.vcf \
> /data02/merce/deha_vcalling/FB_individual/1008Deha_FBi_snpEff.vcf

java -jar ~/snpEff/snpEff.jar \
-v GCA_000006445.2.29 \
-no-downstream -no-intergenic -no-intron -no-upstream -no-utr \
-stats /data02/merce/deha_vcalling/FB_individual/1013_FBi_stats.html \ 
/data02/merce/deha_vcalling/FB_individual/1013Deha_FBi_ch.vcf \
> /data02/merce/deha_vcalling/FB_individual/1013Deha_FBi_snpEff.vcf

java -jar ~/snpEff/snpEff.jar \
-v GCA_000006445.2.29 \
-no-downstream -no-intergenic -no-intron -no-upstream -no-utr \
-stats /data02/merce/deha_vcalling/FB_individual/1014_FBi_stats.html \ 
/data02/merce/deha_vcalling/FB_individual/1014Deha_FBi_ch.vcf \
> /data02/merce/deha_vcalling/FB_individual/1014Deha_FBi_snpEff.vcf

java -jar ~/snpEff/snpEff.jar \
-v GCA_000006445.2.29 \
-no-downstream -no-intergenic -no-intron -no-upstream -no-utr \
-stats /data02/merce/deha_vcalling/FB_individual/1015_FBi_stats.html \ 
/data02/merce/deha_vcalling/FB_individual/1015Deha_FBi_ch.vcf \
> /data02/merce/deha_vcalling/FB_individual/1015Deha_FBi_snpEff.vcf

java -jar ~/snpEff/snpEff.jar \
-v GCA_000006445.2.29 \
-no-downstream -no-intergenic -no-intron -no-upstream -no-utr \
-stats /data02/merce/deha_vcalling/FB_individual/1016_FBi_stats.html \ 
/data02/merce/deha_vcalling/FB_individual/1016Deha_FBi_ch.vcf \
> /data02/merce/deha_vcalling/FB_individual/1016Deha_FBi_snpEff.vcf

java -jar ~/snpEff/snpEff.jar \
-v GCA_000006445.2.29 \
-no-downstream -no-intergenic -no-intron -no-upstream -no-utr \
-stats /data02/merce/deha_vcalling/FB_individual/1019_FBi_stats.html \ 
/data02/merce/deha_vcalling/FB_individual/1019Deha_FBi_ch.vcf \
> /data02/merce/deha_vcalling/FB_individual/1019Deha_FBi_snpEff.vcf

#Freebayes individual no-indels

java -jar ~/snpEff/snpEff.jar \
-v GCA_000006445.2.29 \
-no-downstream -no-intergenic -no-intron -no-upstream -no-utr \
-stats /data02/merce/deha_vcalling/FB_individual/no-indels/1001_FBi_stats.html \ 
/data02/merce/deha_vcalling/FB_individual/no-indels/1001Deha_FBi_ch.vcf \
> /data02/merce/deha_vcalling/FB_individual/no-indels/1001Deha_FBi_snpEff.vcf

java -jar ~/snpEff/snpEff.jar \
-v GCA_000006445.2.29 \
-no-downstream -no-intergenic -no-intron -no-upstream -no-utr \
-stats /data02/merce/deha_vcalling/FB_individual/no-indels/1002_FBi_stats.html \ 
/data02/merce/deha_vcalling/FB_individual/no-indels/1002Deha_FBi_ch.vcf \
> /data02/merce/deha_vcalling/FB_individual/no-indels/1002Deha_FBi_snpEff.vcf

java -jar ~/snpEff/snpEff.jar \
-v GCA_000006445.2.29 \
-no-downstream -no-intergenic -no-intron -no-upstream -no-utr \
-stats /data02/merce/deha_vcalling/FB_individual/no-indels/1003_FBi_stats.html \ 
/data02/merce/deha_vcalling/FB_individual/no-indels/1003Deha_FBi_ch.vcf \
> /data02/merce/deha_vcalling/FB_individual/no-indels/1003Deha_FBi_snpEff.vcf

java -jar ~/snpEff/snpEff.jar \
-v GCA_000006445.2.29 \
-no-downstream -no-intergenic -no-intron -no-upstream -no-utr \
-stats /data02/merce/deha_vcalling/FB_individual/no-indels/1004_FBi_stats.html \ 
/data02/merce/deha_vcalling/FB_individual/no-indels/1004Deha_FBi_ch.vcf \
> /data02/merce/deha_vcalling/FB_individual/no-indels/1004Deha_FBi_snpEff.vcf

java -jar ~/snpEff/snpEff.jar \
-v GCA_000006445.2.29 \
-no-downstream -no-intergenic -no-intron -no-upstream -no-utr \
-stats /data02/merce/deha_vcalling/FB_individual/no-indels/1005_FBi_stats.html \ 
/data02/merce/deha_vcalling/FB_individual/no-indels/1005Deha_FBi_ch.vcf \
> /data02/merce/deha_vcalling/FB_individual/no-indels/1005Deha_FBi_snpEff.vcf

java -jar ~/snpEff/snpEff.jar \
-v GCA_000006445.2.29 \
-no-downstream -no-intergenic -no-intron -no-upstream -no-utr \
-stats /data02/merce/deha_vcalling/FB_individual/no-indels/1007_FBi_stats.html \ 
/data02/merce/deha_vcalling/FB_individual/no-indels/1007Deha_FBi_ch.vcf \
> /data02/merce/deha_vcalling/FB_individual/no-indels/1007Deha_FBi_snpEff.vcf

java -jar ~/snpEff/snpEff.jar \
-v GCA_000006445.2.29 \
-no-downstream -no-intergenic -no-intron -no-upstream -no-utr \
-stats /data02/merce/deha_vcalling/FB_individual/no-indels/1008_FBi_stats.html \ 
/data02/merce/deha_vcalling/FB_individual/no-indels/1008Deha_FBi_ch.vcf \
> /data02/merce/deha_vcalling/FB_individual/no-indels/1008Deha_FBi_snpEff.vcf

java -jar ~/snpEff/snpEff.jar \
-v GCA_000006445.2.29 \
-no-downstream -no-intergenic -no-intron -no-upstream -no-utr \
-stats /data02/merce/deha_vcalling/FB_individual/no-indels/1013_FBi_stats.html \ 
/data02/merce/deha_vcalling/FB_individual/no-indels/1013Deha_FBi_ch.vcf \
> /data02/merce/deha_vcalling/FB_individual/no-indels/1013Deha_FBi_snpEff.vcf

java -jar ~/snpEff/snpEff.jar \
-v GCA_000006445.2.29 \
-no-downstream -no-intergenic -no-intron -no-upstream -no-utr \
-stats /data02/merce/deha_vcalling/FB_individual/no-indels/1014_FBi_stats.html \ 
/data02/merce/deha_vcalling/FB_individual/no-indels/1014Deha_FBi_ch.vcf \
> /data02/merce/deha_vcalling/FB_individual/no-indels/1014Deha_FBi_snpEff.vcf

java -jar ~/snpEff/snpEff.jar \
-v GCA_000006445.2.29 \
-no-downstream -no-intergenic -no-intron -no-upstream -no-utr \
-stats /data02/merce/deha_vcalling/FB_individual/no-indels/1015_FBi_stats.html \ 
/data02/merce/deha_vcalling/FB_individual/no-indels/1015Deha_FBi_ch.vcf \
> /data02/merce/deha_vcalling/FB_individual/no-indels/1015Deha_FBi_snpEff.vcf

java -jar ~/snpEff/snpEff.jar \
-v GCA_000006445.2.29 \
-no-downstream -no-intergenic -no-intron -no-upstream -no-utr \
-stats /data02/merce/deha_vcalling/FB_individual/no-indels/1016_FBi_stats.html \ 
/data02/merce/deha_vcalling/FB_individual/no-indels/1016Deha_FBi_ch.vcf \
> /data02/merce/deha_vcalling/FB_individual/no-indels/1016Deha_FBi_snpEff.vcf

java -jar ~/snpEff/snpEff.jar \
-v GCA_000006445.2.29 \
-no-downstream -no-intergenic -no-intron -no-upstream -no-utr \
-stats /data02/merce/deha_vcalling/FB_individual/no-indels/1019_FBi_stats.html \ 
/data02/merce/deha_vcalling/FB_individual/no-indels/1019Deha_FBi_ch.vcf \
> /data02/merce/deha_vcalling/FB_individual/no-indels/1019Deha_FBi_snpEff.vcf

#VarScan Indels
java -jar ~/snpEff/snpEff.jar \
-v GCA_000006445.2.29 \
-no-downstream -no-intergenic -no-intron -no-upstream -no-utr \
-stats /data02/merce/deha_vcalling/VarScan/indels/12_Deha_indels_VS_stats.html \
/data02/merce/deha_vcalling/VarScan/indels/12Deha_indels_VS_ch.vcf \
> /data02/merce/deha_vcalling/VarScan/indels/12Deha_indels_VS_snpEff.vcf

#VarScan SNPs

java -jar ~/snpEff/snpEff.jar \
-v GCA_000006445.2.29 \
-no-downstream -no-intergenic -no-intron -no-upstream -no-utr \
-stats /data02/merce/deha_vcalling/VarScan/snp/12_Deha_snp_VS_stats.html \
/data02/merce/deha_vcalling/VarScan/snp/12Deha_snp_VS_ch.vcf \
> /data02/merce/deha_vcalling/VarScan/snp/12Deha_snp_VS_snpEff.vcf

