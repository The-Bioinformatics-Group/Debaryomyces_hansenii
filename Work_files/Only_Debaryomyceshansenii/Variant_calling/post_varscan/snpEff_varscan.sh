#!/usr/bin/env bash

java -jar ~/snpEff/snpEff.jar -v GCA_000006445.2.29 -no-downstream -no-intergenic -no-intron -no-upstream -no-utr -stats snp_varscan_stats.html Deha_varscan_snp_mpileup_finalvcf.vcf > Deha_varscan_snp_mpileup_snpEff.vcf

java -jar ~/snpEff/snpEff.jar -v GCA_000006445.2.29 -no-downstream -no-intergenic -no-intron -no-upstream -no-utr -stats indel_varscan_stats.html Deha_varscan_indel_mpileup_snpEff.vcf > Deha_varscan_indel_mpileup_snpEff.vcf


