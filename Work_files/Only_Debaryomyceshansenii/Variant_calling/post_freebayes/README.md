### Post-freebayes

#### Individual analysis 

**Filtering**

Commands [here](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Work_files/Only_Debaryomyceshansenii/Variant_calling/post_freebayes/vcffilter_and_snpEff_individualfreebayes.sh)

**Without filter**

Commands (will soon be) [here]()

#### Cohort analysis

**Filtering**

```
~/vcflib/bin/vcffilter -g "DP > 10" -g "QR > 10" Deha_finalvcf.vcf > Deha_vcffilter10DPQRg.vcf

java -jar ~/snpEff/snpEff.jar -v GCA_000006445.2.29 -no-downstream -no-intergenic -no-intron -no-upstream -no-utr Deha_vcffilter10DPQRg.vcf > filtering/freebayes_cohort_filtered_snpEff.vcf
```

**Without filter**

```
java -jar ~/snpEff/snpEff.jar -v GCA_000006445.2.29 -no-downstream -no-intergenic -no-intron -no-upstream -no-utr -stats without_filtering/Deha_all_stats.html Deha_finalvcf.vcf > without_filtering/Deha_nofilter_snpEff.vcf
```
