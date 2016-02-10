#!/usr/bin/env bash

sed -e 's/CR382133.2/CR382133/' -e 's/CR382134.2/B/' -e 's/CR382135.2/C/' -e 's/CR382136.2/CR382136/' -e 's/CR382137.2/E/' -e 's/CR382138.2/F/' -e 's/CR382139.2/G/' varscan_deha_indel_mpileup.vcf > Deha_indel_varscan_mpileup_finalvcf.vcf 

sed -e 's/CR382133.2/CR382133/' -e 's/CR382134.2/B/' -e 's/CR382135.2/C/' -e 's/CR382136.2/CR382136/' -e 's/CR382137.2/E/' -e 's/CR382138.2/F/' -e 's/CR382139.2/G/' varscan_deha_indel_mpileupBAQ.vcf > Deha_varscan_indel_mpileupBAQ_finalvcf.vcf

sed -e 's/CR382133.2/CR382133/' -e 's/CR382134.2/B/' -e 's/CR382135.2/C/' -e 's/CR382136.2/CR382136/' -e 's/CR382137.2/E/' -e 's/CR382138.2/F/' -e 's/CR382139.2/G/' varscan_deha_snp_mpileupBAQ.vcf > Deha_varscan_snp_mpileupBAQ_finalvcf.vcf

sed -e 's/CR382133.2/CR382133/' -e 's/CR382134.2/B/' -e 's/CR382135.2/C/' -e 's/CR382136.2/CR382136/' -e 's/CR382137.2/E/' -e 's/CR382138.2/F/' -e 's/CR382139.2/G/' varscan_deha_snp_mpileup.vcf > Deha_varscan_snp_mpileup_finalvcf.vcf



