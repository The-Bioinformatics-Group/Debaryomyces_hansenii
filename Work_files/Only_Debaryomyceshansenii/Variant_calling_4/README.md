After 1-5 steps:

**Filter:**

```
merce@dna:/data02/merce/deha_vcalling/FB_cohort$ ~/vcflib/bin/vcffilter -f "AF > 0" 12Deha_FBc_snpEff.vcf > 12Deha_FBc_AFfilter.vcf

merce@dna:/data02/merce/deha_vcalling/FB_cohort$ cat 12Deha_FBc_AFfilter.vcf | java -jar ~/snpEff/SnpSift.jar rmRefGen > 12Deha_FBc_AFfilter_rmRefGen.vcf

```

```
merce@dna:/data02/merce/deha_vcalling/FB_cohort$ java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[0])" 12Deha_FBc_AFfilter_rmRefGen.vcf > 12Deha_FBc_AFf_rmRefGen_1001v.vcf
merce@dna:/data02/merce/deha_vcalling/FB_cohort$ java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[1])" 12Deha_FBc_AFfilter_rmRefGen.vcf > 12Deha_FBc_AFf_rmRefGen_1002v.vcf
merce@dna:/data02/merce/deha_vcalling/FB_cohort$ java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[2])" 12Deha_FBc_AFfilter_rmRefGen.vcf > 12Deha_FBc_AFf_rmRefGen_1003v.vcf
merce@dna:/data02/merce/deha_vcalling/FB_cohort$ java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[3])" 12Deha_FBc_AFfilter_rmRefGen.vcf > 12Deha_FBc_AFf_rmRefGen_1004v.vcf
merce@dna:/data02/merce/deha_vcalling/FB_cohort$ java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[4])" 12Deha_FBc_AFfilter_rmRefGen.vcf > 12Deha_FBc_AFf_rmRefGen_1005v.vcf
merce@dna:/data02/merce/deha_vcalling/FB_cohort$ java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[5])" 12Deha_FBc_AFfilter_rmRefGen.vcf > 12Deha_FBc_AFf_rmRefGen_1007v.vcf
merce@dna:/data02/merce/deha_vcalling/FB_cohort$ java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[6])" 12Deha_FBc_AFfilter_rmRefGen.vcf > 12Deha_FBc_AFf_rmRefGen_1008v.vcf
merce@dna:/data02/merce/deha_vcalling/FB_cohort$ java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[7])" 12Deha_FBc_AFfilter_rmRefGen.vcf > 12Deha_FBc_AFf_rmRefGen_1013v.vcf
merce@dna:/data02/merce/deha_vcalling/FB_cohort$ java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[8])" 12Deha_FBc_AFfilter_rmRefGen.vcf > 12Deha_FBc_AFf_rmRefGen_1014v.vcf
merce@dna:/data02/merce/deha_vcalling/FB_cohort$ java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[9])" 12Deha_FBc_AFfilter_rmRefGen.vcf > 12Deha_FBc_AFf_rmRefGen_1015v.vcf
merce@dna:/data02/merce/deha_vcalling/FB_cohort$ java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[10])" 12Deha_FBc_AFfilter_rmRefGen.vcf > 12Deha_FBc_AFf_rmRefGen_1016v.vcf
merce@dna:/data02/merce/deha_vcalling/FB_cohort$ java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[11])" 12Deha_FBc_AFfilter_rmRefGen.vcf > 12Deha_FBc_AFf_rmRefGen_1019v.vcf

merce@dna:/data02/merce/deha_vcalling/FB_cohort$ wc -l 12Deha*_10*v.vcf
   288441 12Deha_FBc_AFf_rmRefGen_1001v.vcf
      466 12Deha_FBc_AFf_rmRefGen_1002v.vcf
   286761 12Deha_FBc_AFf_rmRefGen_1003v.vcf
    49923 12Deha_FBc_AFf_rmRefGen_1004v.vcf
      915 12Deha_FBc_AFf_rmRefGen_1005v.vcf
    10616 12Deha_FBc_AFf_rmRefGen_1007v.vcf
    11489 12Deha_FBc_AFf_rmRefGen_1008v.vcf
    10458 12Deha_FBc_AFf_rmRefGen_1013v.vcf
   281642 12Deha_FBc_AFf_rmRefGen_1014v.vcf
    12435 12Deha_FBc_AFf_rmRefGen_1015v.vcf
   290098 12Deha_FBc_AFf_rmRefGen_1016v.vcf
      398 12Deha_FBc_AFf_rmRefGen_1019v.vcf
  1243642 total
```



(**SnpSift:**

```
merce@dna:/data02/merce/deha_vcalling/FB_cohort$ java -jar ~/snpEff/SnpSift.jar extractFields 12Deha_FBc_rmRefGen.vcf "CHROM" "POS" "ID" "REF" "ALT" "AF" "AC" "ANN[*].EFFECT" "ANN[*].IMPACT" "ANN[*].GENE" "ANN[*].GENEID" "ANN[*].FEATURE" "ANN[*].FEATUREID" "ANN[*].BIOTYPE" "ANN[*].HGVS_C" "ANN[*].HGVS_P" "GEN[0].GT" "GEN[1].GT" "GEN[2].GT" "GEN[3].GT" "GEN[4].GT" "GEN[5].GT" "GEN[6].GT" "GEN[7].GT" "GEN[8].GT" "GEN[9].GT" "GEN[10].GT" "GEN[11].GT" "GEN[0].GL" "GEN[1].GL" "GEN[2].GL" "GEN[3].GL" "GEN[4].GL" "GEN[5].GL" "GEN[6].GL" "GEN[7].GL" "GEN[8].GL" "GEN[9].GL" "GEN[10].GL" "GEN[11].GL" > 12Deha_FBc_extractfields.txt

```
)

