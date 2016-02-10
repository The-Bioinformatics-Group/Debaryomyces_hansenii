#!/usr/bin/env bash

#vcffilter:

~/vcflib/bin/vcffilter -g "DP > 10" -g "QR > 10" 1001_AH_finalvcf.vcf > 1001_AH_10DPQRg.vcf

~/vcflib/bin/vcffilter -g "DP > 10" -g "QR > 10" 1001_BC_finalvcf.vcf > 1001_BC_10DPQRg.vcf

~/vcflib/bin/vcffilter -g "DP > 10" -g "QR > 10" 1002_AH_finalvcf.vcf > 1002_AH_10DPQRg.vcf

~/vcflib/bin/vcffilter -g "DP > 10" -g "QR > 10" 1002_BC_finalvcf.vcf > 1002_BC_10DPQRg.vcf

~/vcflib/bin/vcffilter -g "DP > 10" -g "QR > 10" 1003_AH_finalvcf.vcf > 1003_AH_10DPQRg.vcf

~/vcflib/bin/vcffilter -g "DP > 10" -g "QR > 10" 1003_BC_finalvcf.vcf > 1003_BC_10DPQRg.vcf

~/vcflib/bin/vcffilter -g "DP > 10" -g "QR > 10" 1004_AH_finalvcf.vcf > 1004_AH_10DPQRg.vcf

~/vcflib/bin/vcffilter -g "DP > 10" -g "QR > 10" 1004_BC_finalvcf.vcf > 1004_BC_10DPQRg.vcf

~/vcflib/bin/vcffilter -g "DP > 10" -g "QR > 10" 1005_AH_finalvcf.vcf > 1005_AH_10DPQRg.vcf

~/vcflib/bin/vcffilter -g "DP > 10" -g "QR > 10" 1005_BC_finalvcf.vcf > 1005_BC_10DPQRg.vcf

~/vcflib/bin/vcffilter -g "DP > 10" -g "QR > 10" 1007_AH_finalvcf.vcf > 1007_AH_10DPQRg.vcf

~/vcflib/bin/vcffilter -g "DP > 10" -g "QR > 10" 1007_BC_finalvcf.vcf > 1007_BC_10DPQRg.vcf

~/vcflib/bin/vcffilter -g "DP > 10" -g "QR > 10" 1008_AH_finalvcf.vcf > 1008_AH_10DPQRg.vcf

~/vcflib/bin/vcffilter -g "DP > 10" -g "QR > 10" 1008_BC_finalvcf.vcf > 1008_BC_10DPQRg.vcf

~/vcflib/bin/vcffilter -g "DP > 10" -g "QR > 10" 1013_AH_finalvcf.vcf > 1013_AH_10DPQRg.vcf

~/vcflib/bin/vcffilter -g "DP > 10" -g "QR > 10" 1013_BC_finalvcf.vcf > 1013_BC_10DPQRg.vcf

~/vcflib/bin/vcffilter -g "DP > 10" -g "QR > 10" 1014_AH_finalvcf.vcf > 1014_AH_10DPQRg.vcf

~/vcflib/bin/vcffilter -g "DP > 10" -g "QR > 10" 1014_BC_finalvcf.vcf > 1014_BC_10DPQRg.vcf

~/vcflib/bin/vcffilter -g "DP > 10" -g "QR > 10" 1015_AH_finalvcf.vcf > 1015_AH_10DPQRg.vcf

~/vcflib/bin/vcffilter -g "DP > 10" -g "QR > 10" 1015_BC_finalvcf.vcf > 1015_BC_10DPQRg.vcf

~/vcflib/bin/vcffilter -g "DP > 10" -g "QR > 10" 1016_AH_finalvcf.vcf > 1016_AH_10DPQRg.vcf

~/vcflib/bin/vcffilter -g "DP > 10" -g "QR > 10" 1016_BC_finalvcf.vcf > 1016_BC_10DPQRg.vcf

~/vcflib/bin/vcffilter -g "DP > 10" -g "QR > 10" 1019_AH_finalvcf.vcf > 1019_AH_10DPQRg.vcf

~/vcflib/bin/vcffilter -g "DP > 10" -g "QR > 10" 1019_BC_finalvcf.vcf > 1019_BC_10DPQRg.vcf

#snpEff:

java -jar ~/snpEff/snpEff.jar -v GCA_000006445.2.29 -no-downstream -no-intergenic -no-intron -no-upstream -no-utr 1001_AH_10DPQRg.vcf > 1001AH_freebayes_individual_filtered_snpEff.vcf

java -jar ~/snpEff/snpEff.jar -v GCA_000006445.2.29 -no-downstream -no-intergenic -no-intron -no-upstream -no-utr 1001_BC_10DPQRg.vcf > 1001BC_freebayes_individual_filtered_snpEff.vcf

java -jar ~/snpEff/snpEff.jar -v GCA_000006445.2.29 -no-downstream -no-intergenic -no-intron -no-upstream -no-utr 1002_AH_10DPQRg.vcf > 1002AH_freebayes_individual_filtered_snpEff.vcf

java -jar ~/snpEff/snpEff.jar -v GCA_000006445.2.29 -no-downstream -no-intergenic -no-intron -no-upstream -no-utr 1002_BC_10DPQRg.vcf > 1002BC_freebayes_individual_filtered_snpEff.vcf

java -jar ~/snpEff/snpEff.jar -v GCA_000006445.2.29 -no-downstream -no-intergenic -no-intron -no-upstream -no-utr 1003_AH_10DPQRg.vcf > 1003AH_freebayes_individual_filtered_snpEff.vcf

java -jar ~/snpEff/snpEff.jar -v GCA_000006445.2.29 -no-downstream -no-intergenic -no-intron -no-upstream -no-utr 1003_BC_10DPQRg.vcf > 1003BC_freebayes_individual_filtered_snpEff.vcf

java -jar ~/snpEff/snpEff.jar -v GCA_000006445.2.29 -no-downstream -no-intergenic -no-intron -no-upstream -no-utr 1004_AH_10DPQRg.vcf > 1004AH_freebayes_individual_filtered_snpEff.vcf

java -jar ~/snpEff/snpEff.jar -v GCA_000006445.2.29 -no-downstream -no-intergenic -no-intron -no-upstream -no-utr 1004_BC_10DPQRg.vcf > 1004BC_freebayes_individual_filtered_snpEff.vcf

java -jar ~/snpEff/snpEff.jar -v GCA_000006445.2.29 -no-downstream -no-intergenic -no-intron -no-upstream -no-utr 1005_AH_10DPQRg.vcf > 1005AH_freebayes_individual_filtered_snpEff.vcf

java -jar ~/snpEff/snpEff.jar -v GCA_000006445.2.29 -no-downstream -no-intergenic -no-intron -no-upstream -no-utr 1005_BC_10DPQRg.vcf > 1005BC_freebayes_individual_filtered_snpEff.vcf

java -jar ~/snpEff/snpEff.jar -v GCA_000006445.2.29 -no-downstream -no-intergenic -no-intron -no-upstream -no-utr 1007_AH_10DPQRg.vcf > 1007AH_freebayes_individual_filtered_snpEff.vcf

java -jar ~/snpEff/snpEff.jar -v GCA_000006445.2.29 -no-downstream -no-intergenic -no-intron -no-upstream -no-utr 1007_BC_10DPQRg.vcf > 1007BC_freebayes_individual_filtered_snpEff.vcf

java -jar ~/snpEff/snpEff.jar -v GCA_000006445.2.29 -no-downstream -no-intergenic -no-intron -no-upstream -no-utr 1008_AH_10DPQRg.vcf > 1008AH_freebayes_individual_filtered_snpEff.vcf

java -jar ~/snpEff/snpEff.jar -v GCA_000006445.2.29 -no-downstream -no-intergenic -no-intron -no-upstream -no-utr 1008_BC_10DPQRg.vcf > 1008BC_freebayes_individual_filtered_snpEff.vcf

java -jar ~/snpEff/snpEff.jar -v GCA_000006445.2.29 -no-downstream -no-intergenic -no-intron -no-upstream -no-utr 1013_AH_10DPQRg.vcf > 1013AH_freebayes_individual_filtered_snpEff.vcf

java -jar ~/snpEff/snpEff.jar -v GCA_000006445.2.29 -no-downstream -no-intergenic -no-intron -no-upstream -no-utr 1013_BC_10DPQRg.vcf > 1013BC_freebayes_individual_filtered_snpEff.vcf

java -jar ~/snpEff/snpEff.jar -v GCA_000006445.2.29 -no-downstream -no-intergenic -no-intron -no-upstream -no-utr 1014_AH_10DPQRg.vcf > 1014AH_freebayes_individual_filtered_snpEff.vcf

java -jar ~/snpEff/snpEff.jar -v GCA_000006445.2.29 -no-downstream -no-intergenic -no-intron -no-upstream -no-utr 1014_BC_10DPQRg.vcf > 1014BC_freebayes_individual_filtered_snpEff.vcf

java -jar ~/snpEff/snpEff.jar -v GCA_000006445.2.29 -no-downstream -no-intergenic -no-intron -no-upstream -no-utr 1015_AH_10DPQRg.vcf > 1015AH_freebayes_individual_filtered_snpEff.vcf

java -jar ~/snpEff/snpEff.jar -v GCA_000006445.2.29 -no-downstream -no-intergenic -no-intron -no-upstream -no-utr 1015_BC_10DPQRg.vcf > 1015BC_freebayes_individual_filtered_snpEff.vcf

java -jar ~/snpEff/snpEff.jar -v GCA_000006445.2.29 -no-downstream -no-intergenic -no-intron -no-upstream -no-utr 1016_AH_10DPQRg.vcf > 1016AH_freebayes_individual_filtered_snpEff.vcf

java -jar ~/snpEff/snpEff.jar -v GCA_000006445.2.29 -no-downstream -no-intergenic -no-intron -no-upstream -no-utr 1016_BC_10DPQRg.vcf > 1016BC_freebayes_individual_filtered_snpEff.vcf

java -jar ~/snpEff/snpEff.jar -v GCA_000006445.2.29 -no-downstream -no-intergenic -no-intron -no-upstream -no-utr 1019_AH_10DPQRg.vcf > 1019AH_freebayes_individual_filtered_snpEff.vcf

java -jar ~/snpEff/snpEff.jar -v GCA_000006445.2.29 -no-downstream -no-intergenic -no-intron -no-upstream -no-utr 1019_BC_10DPQRg.vcf > 1019BC_freebayes_individual_filtered_snpEff.vcf
