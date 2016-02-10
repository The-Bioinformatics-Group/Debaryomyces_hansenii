#!/usr/bin/env bash

java -jar ~/snpEff/snpEff.jar -v GCA_000006445.2.29 -no-downstream -no-intergenic -no-intron -no-upstream -no-utr Deha_varscan_snp_mpileup_finalvcf.vcf > Deha_varscan_snp_mpileup_snpEff.vcf

java -jar ~/snpEff/snpEff.jar -v GCA_000006445.2.29 -no-downstream -no-intergenic -no-intron -no-upstream -no-utr varscan_deha_indel_mpileup.vcf > Deha_varscan_snp_mpileup_snpEff.vcf


