After 1-5 steps:

**Filter:**

```
merce@dna:/data02/merce/deha_vcalling/FB_cohort$ ~/vcflib/bin/vcffilter -f "AF > 0" 12Deha_FBc_snpEff.vcf > 12Deha_FBc_AFfilter.vcf

merce@dna:/data02/merce/deha_vcalling/FB_cohort$ cat 12Deha_FBc_AFfilter.vcf | java -jar ~/snpEff/SnpSift.jar rmRefGen > 12Deha_FBc_AFfilter_rmRefGen.vcf

```

```
java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[0])" 12Deha_FBc_AFfilter_rmRefGen.vcf > 12Deha_FBc_AFf_rmRefGen_1001v.vcf
java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[1])" 12Deha_FBc_AFfilter_rmRefGen.vcf > 12Deha_FBc_AFf_rmRefGen_1002v.vcf
java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[2])" 12Deha_FBc_AFfilter_rmRefGen.vcf > 12Deha_FBc_AFf_rmRefGen_1003v.vcf
java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[3])" 12Deha_FBc_AFfilter_rmRefGen.vcf > 12Deha_FBc_AFf_rmRefGen_1004v.vcf
java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[4])" 12Deha_FBc_AFfilter_rmRefGen.vcf > 12Deha_FBc_AFf_rmRefGen_1005v.vcf
java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[5])" 12Deha_FBc_AFfilter_rmRefGen.vcf > 12Deha_FBc_AFf_rmRefGen_1007v.vcf
java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[6])" 12Deha_FBc_AFfilter_rmRefGen.vcf > 12Deha_FBc_AFf_rmRefGen_1008v.vcf
java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[7])" 12Deha_FBc_AFfilter_rmRefGen.vcf > 12Deha_FBc_AFf_rmRefGen_1013v.vcf
java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[8])" 12Deha_FBc_AFfilter_rmRefGen.vcf > 12Deha_FBc_AFf_rmRefGen_1014v.vcf
java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[9])" 12Deha_FBc_AFfilter_rmRefGen.vcf > 12Deha_FBc_AFf_rmRefGen_1015v.vcf
java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[10])" 12Deha_FBc_AFfilter_rmRefGen.vcf > 12Deha_FBc_AFf_rmRefGen_1016v.vcf
java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[11])" 12Deha_FBc_AFfilter_rmRefGen.vcf > 12Deha_FBc_AFf_rmRefGen_1019v.vcf

```

**merce@dna:/data02/merce/deha_vcalling/FB_cohort$ grep -c -v -e"#" 12Deha_FBc_AFf_rmRefGen_10*v.vcf** 

12Deha_FBc_AFf_rmRefGen_1001v.vcf:288375

12Deha_FBc_AFf_rmRefGen_1002v.vcf:400

12Deha_FBc_AFf_rmRefGen_1003v.vcf:286695

12Deha_FBc_AFf_rmRefGen_1004v.vcf:49857

12Deha_FBc_AFf_rmRefGen_1005v.vcf:849

12Deha_FBc_AFf_rmRefGen_1007v.vcf:10550

12Deha_FBc_AFf_rmRefGen_1008v.vcf:11423

12Deha_FBc_AFf_rmRefGen_1013v.vcf:10392

12Deha_FBc_AFf_rmRefGen_1014v.vcf:281576

12Deha_FBc_AFf_rmRefGen_1015v.vcf:12369

12Deha_FBc_AFf_rmRefGen_1016v.vcf:290032

12Deha_Fbc_Aff_rmRefGen_1019v.vcf:332


**merce@dna:/data02/merce/deha_vcalling/FB_cohort$ grep -c -e"transcript" 12Deha_FBc_AFf_rmRefGen_10*v.vcf** 

12Deha_FBc_AFf_rmRefGen_1001v.vcf:217688

12Deha_FBc_AFf_rmRefGen_1002v.vcf:190

12Deha_FBc_AFf_rmRefGen_1003v.vcf:215711

12Deha_FBc_AFf_rmRefGen_1004v.vcf:38328

12Deha_FBc_AFf_rmRefGen_1005v.vcf:430

12Deha_FBc_AFf_rmRefGen_1007v.vcf:6354

12Deha_FBc_AFf_rmRefGen_1008v.vcf:6926

12Deha_FBc_AFf_rmRefGen_1013v.vcf:6348

12Deha_FBc_AFf_rmRefGen_1014v.vcf:213299

12Deha_FBc_AFf_rmRefGen_1015v.vcf:7319

12Deha_FBc_AFf_rmRefGen_1016v.vcf:218013

12Deha_FBc_AFf_rmRefGen_1019v.vcf:158


**merce@dna:/data02/merce/deha_vcalling/FB_cohort$ grep -c -e"protein_coding" 12Deha_FBc_AFf_rmRefGen_10*v.vcf** 

12Deha_FBc_AFf_rmRefGen_1001v.vcf:217628

12Deha_FBc_AFf_rmRefGen_1002v.vcf:188

12Deha_FBc_AFf_rmRefGen_1003v.vcf:215650

12Deha_FBc_AFf_rmRefGen_1004v.vcf:38323

12Deha_FBc_AFf_rmRefGen_1005v.vcf:427

12Deha_FBc_AFf_rmRefGen_1007v.vcf:6349

12Deha_FBc_AFf_rmRefGen_1008v.vcf:6921

12Deha_FBc_AFf_rmRefGen_1013v.vcf:6346

12Deha_FBc_AFf_rmRefGen_1014v.vcf:213237

12Deha_FBc_AFf_rmRefGen_1015v.vcf:7315

12Deha_FBc_AFf_rmRefGen_1016v.vcf:217953

12Deha_Fbc_Aff_rmRefGen_1019v.vcf:156


**merce@dna:/data02/merce/deha_vcalling/FB_cohort$ grep -c -e"missense_variant" 12Deha_FBc_AFf_rmRefGen_10*v.vcf** 

12Deha_FBc_AFf_rmRefGen_1001v.vcf:72741

12Deha_FBc_AFf_rmRefGen_1002v.vcf:76

12Deha_FBc_AFf_rmRefGen_1003v.vcf:72124

12Deha_FBc_AFf_rmRefGen_1004v.vcf:12279

12Deha_FBc_AFf_rmRefGen_1005v.vcf:287

12Deha_FBc_AFf_rmRefGen_1007v.vcf:3109

12Deha_FBc_AFf_rmRefGen_1008v.vcf:3404

12Deha_FBc_AFf_rmRefGen_1013v.vcf:3067

12Deha_FBc_AFf_rmRefGen_1014v.vcf:71343

12Deha_FBc_AFf_rmRefGen_1015v.vcf:3535

12Deha_FBc_AFf_rmRefGen_1016v.vcf:72885

12Deha_Fbc_Aff_rmRefGen_1019v.vcf:88


**merce@dna:/data02/merce/deha_vcalling/FB_cohort$ grep -c -e"synonymous_variant" 12Deha_FBc_AFf_rmRefGen_10*v.vcf**

12Deha_FBc_AFf_rmRefGen_1001v.vcf:145775

12Deha_FBc_AFf_rmRefGen_1002v.vcf:114

12Deha_FBc_AFf_rmRefGen_1003v.vcf:144417

12Deha_FBc_AFf_rmRefGen_1004v.vcf:26352

12Deha_FBc_AFf_rmRefGen_1005v.vcf:125

12Deha_FBc_AFf_rmRefGen_1007v.vcf:3349

12Deha_FBc_AFf_rmRefGen_1008v.vcf:3600

12Deha_FBc_AFf_rmRefGen_1013v.vcf:3361

12Deha_FBc_AFf_rmRefGen_1014v.vcf:142752

12Deha_FBc_AFf_rmRefGen_1015v.vcf:3883

12Deha_FBc_AFf_rmRefGen_1016v.vcf:145919

12Deha_Fbc_Aff_rmRefGen_1019v.vcf:60


**merce@dna:/data02/merce/deha_vcalling/FB_cohort$ grep -c -e"stop_gained" 12Deha_FBc_AFf_rmRefGen_10*v.vcf** 

12Deha_FBc_AFf_rmRefGen_1001v.vcf:153

12Deha_FBc_AFf_rmRefGen_1002v.vcf:0

12Deha_FBc_AFf_rmRefGen_1003v.vcf:159

12Deha_FBc_AFf_rmRefGen_1004v.vcf:31

12Deha_FBc_AFf_rmRefGen_1005v.vcf:13

12Deha_FBc_AFf_rmRefGen_1007v.vcf:23

12Deha_FBc_AFf_rmRefGen_1008v.vcf:24

12Deha_FBc_AFf_rmRefGen_1013v.vcf:20

12Deha_FBc_AFf_rmRefGen_1014v.vcf:156

12Deha_FBc_AFf_rmRefGen_1015v.vcf:26

12Deha_FBc_AFf_rmRefGen_1016v.vcf:159

12Deha_Fbc_Aff_rmRefGen_1019v.vcf:3


**merce@dna:/data02/merce/deha_vcalling/FB_cohort$ grep -c -e"frameshift_variant" 12Deha_FBc_AFf_rmRefGen_10*v.vcf** 

12Deha_FBc_AFf_rmRefGen_1001v.vcf:410

12Deha_FBc_AFf_rmRefGen_1002v.vcf:4

12Deha_FBc_AFf_rmRefGen_1003v.vcf:391

12Deha_FBc_AFf_rmRefGen_1004v.vcf:81

12Deha_FBc_AFf_rmRefGen_1005v.vcf:7

12Deha_FBc_AFf_rmRefGen_1007v.vcf:35

12Deha_FBc_AFf_rmRefGen_1008v.vcf:44

12Deha_FBc_AFf_rmRefGen_1013v.vcf:52

12Deha_FBc_AFf_rmRefGen_1014v.vcf:399

12Deha_FBc_AFf_rmRefGen_1015v.vcf:42

12Deha_FBc_AFf_rmRefGen_1016v.vcf:435

12Deha_FBc_AFf_rmRefGen_1019v.vcf:5


**merce@dna:/data02/merce/deha_vcalling/FB_cohort$ grep -c -e"TYPE=ins" -e"TYPE=del" 12Deha_FBc_AFf_rmRefGen_10*v.vcf** 

12Deha_FBc_AFf_rmRefGen_1001v.vcf:5804

12Deha_FBc_AFf_rmRefGen_1002v.vcf:18

12Deha_FBc_AFf_rmRefGen_1003v.vcf:5785

12Deha_FBc_AFf_rmRefGen_1004v.vcf:900

12Deha_FBc_AFf_rmRefGen_1005v.vcf:36

12Deha_FBc_AFf_rmRefGen_1007v.vcf:396

12Deha_FBc_AFf_rmRefGen_1008v.vcf:415

12Deha_FBc_AFf_rmRefGen_1013v.vcf:406

12Deha_FBc_AFf_rmRefGen_1014v.vcf:5631

12Deha_FBc_AFf_rmRefGen_1015v.vcf:497

12Deha_FBc_AFf_rmRefGen_1016v.vcf:5968

12Deha_Fbc_Aff_rmRefGen_1019v.vcf:23


**merce@dna:/data02/merce/deha_vcalling/FB_cohort$ grep -c -e"TYPE=snp" 12Deha_FBc_AFf_rmRefGen_10*v.vcf** 

12Deha_FBc_AFf_rmRefGen_1001v.vcf:247104

12Deha_FBc_AFf_rmRefGen_1002v.vcf:340

12Deha_FBc_AFf_rmRefGen_1003v.vcf:245696

12Deha_FBc_AFf_rmRefGen_1004v.vcf:44855

12Deha_FBc_AFf_rmRefGen_1005v.vcf:755

12Deha_FBc_AFf_rmRefGen_1007v.vcf:9252

12Deha_FBc_AFf_rmRefGen_1008v.vcf:10078

12Deha_FBc_AFf_rmRefGen_1013v.vcf:9117

12Deha_FBc_AFf_rmRefGen_1014v.vcf:241497

12Deha_FBc_AFf_rmRefGen_1015v.vcf:10803

12Deha_FBc_AFf_rmRefGen_1016v.vcf:248035

12Deha_Fbc_Aff_rmRefGen_1019v.vcf:275


**TS/TV stats:**

Sample ,1001,1002,1003,1004,1005,1007,1008,1013,1014,1015,1016,1019,Total

Transitions ,163745,174,162763,29176,468,5172,5563,5149,159995,6012,164197,138,702552

Transversions ,74056,118,73668,13113,218,2811,3124,2745,72265,3303,74459,107,319987

Ts/Tv ,2.211,1.475,2.209,2.225,2.147,1.840,1.781,1.876,2.214,1.820,2.205,1.290,2.196


Hom/Het stats:

Sample ,1001,1002,1003,1004,1005,1007,1008,1013,1014,1015,1016,1019,Total

Homozygous reference,0,0,0,0,0,0,0,0,0,0,0,0,0

One ALT,288375,400,286695,49857,849,10550,11423,10392,281576,12369,290032,332,1242850

Two ALTs,0,0,0,0,0,0,0,0,0,0,0,0,0

Missing,53772,341747,55452,292290,341298,331597,330724,331755,60571,329778,52115,341815,2862914


Variant type stats:

Sample ,1001,1002,1003,1004,1005,1007,1008,1013,1014,1015,1016,1019,Total

SNP,237801,292,236431,42289,686,7983,8687,7894,232260,9315,238656,245,1022539

MNP,43353,89,43043,6460,122,2084,2213,1996,42340,2448,43941,62,188151

INS,2740,12,2729,445,23,179,210,180,2577,225,2771,15,12106

DEL,4481,7,4492,663,18,304,313,322,4399,381,4664,10,20054

MIXED,0,0,0,0,0,0,0,0,0,0,0,0,0

Multiallelic,14485,40,14442,3671,52,1478,1574,1421,14430,1748,14545,20,67906


Allele count stats:

Sample ,1001,1002,1003,1004,1005,1007,1008,1013,1014,1015,1016,1019,Total

MAC=0,0,0,0,0,0,0,0,0,0,0,0,0,0

MAC=1,4045,26,2802,4452,408,2232,1430,2108,15312,1401,5274,38,39528

MAC=2,7080,28,6911,2394,47,1091,1851,1058,6125,2271,6868,28,35752

MAC=3,24822,26,24909,996,27,1071,1341,1000,8460,1490,25561,27,89730

MAC=4,209343,36,208996,2096,47,1223,1307,1223,208760,1381,209309,23,843744

MAC=5,37063,35,37054,35212,80,1211,1127,1187,36989,1012,37066,39,188075

MAC=6,2128,62,2135,1469,51,655,846,691,2072,1284,2118,43,13554

MAC=7,1317,48,1312,917,31,765,1017,795,1292,1039,1268,20,9821

MAC=8,1123,40,1127,867,42,855,1058,877,1113,1051,1114,29,9296

MAC=9,1341,20,1338,1342,19,1336,1337,1342,1342,1335,1342,11,12105

MAC=10,48,24,47,47,32,46,44,46,46,44,47,9,480

MAC=11,15,5,14,15,15,15,15,15,15,11,15,15,165



##### Variants shared by all the strains:

```
java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[0]) & isVariant(GEN[1]) & isVariant(GEN[2]) & isVariant(GEN[3]) & isVariant(GEN[4]) & isVariant(GEN[5]) & isVariant(GEN[6]) & isVariant(GEN[7]) & isVariant(GEN[8]) & isVariant(GEN[9]) & isVariant(GEN[10]) & isVariant(GEN[11])" 12Deha_FBc_AFfilter_rmRefGen.vcf > pairs_FBc_AFf_rmRefGen_allv.vcf
```

**grep -c -v -e"#" pairs_FBc_AFf_rmRefGen_allv.vcf** 

50


### Filtering by Quality

```
Quality 20 or more:

java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[0])" 12Deha_FBc_AFfilter_rmRefGen_Q20.vcf > 12Deha_FBc_AFf_rmRefGen_1001v_Q20.vcf
java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[1])" 12Deha_FBc_AFfilter_rmRefGen_Q20.vcf > 12Deha_FBc_AFf_rmRefGen_1002v_Q20.vcf
java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[2])" 12Deha_FBc_AFfilter_rmRefGen_Q20.vcf > 12Deha_FBc_AFf_rmRefGen_1003v_Q20.vcf
java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[3])" 12Deha_FBc_AFfilter_rmRefGen_Q20.vcf > 12Deha_FBc_AFf_rmRefGen_1004v_Q20.vcf
java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[4])" 12Deha_FBc_AFfilter_rmRefGen_Q20.vcf > 12Deha_FBc_AFf_rmRefGen_1005v_Q20.vcf
java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[5])" 12Deha_FBc_AFfilter_rmRefGen_Q20.vcf > 12Deha_FBc_AFf_rmRefGen_1007v_Q20.vcf
java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[6])" 12Deha_FBc_AFfilter_rmRefGen_Q20.vcf > 12Deha_FBc_AFf_rmRefGen_1008v_Q20.vcf
java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[7])" 12Deha_FBc_AFfilter_rmRefGen_Q20.vcf > 12Deha_FBc_AFf_rmRefGen_1013v_Q20.vcf
java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[8])" 12Deha_FBc_AFfilter_rmRefGen_Q20.vcf > 12Deha_FBc_AFf_rmRefGen_1014v_Q20.vcf
java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[9])" 12Deha_FBc_AFfilter_rmRefGen_Q20.vcf > 12Deha_FBc_AFf_rmRefGen_1015v_Q20.vcf
java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[10])" 12Deha_FBc_AFfilter_rmRefGen_Q20.vcf > 12Deha_FBc_AFf_rmRefGen_1016v_Q20.vcf
java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[11])" 12Deha_FBc_AFfilter_rmRefGen_Q20.vcf > 12Deha_FBc_AFf_rmRefGen_1019v_Q20.vcf

Quality 30 or more:

java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[0])" 12Deha_FBc_AFfilter_rmRefGen_Q30.vcf > 12Deha_FBc_AFf_rmRefGen_1001v_Q30.vcf
java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[1])" 12Deha_FBc_AFfilter_rmRefGen_Q30.vcf > 12Deha_FBc_AFf_rmRefGen_1002v_Q30.vcf
java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[2])" 12Deha_FBc_AFfilter_rmRefGen_Q30.vcf > 12Deha_FBc_AFf_rmRefGen_1003v_Q30.vcf
java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[3])" 12Deha_FBc_AFfilter_rmRefGen_Q30.vcf > 12Deha_FBc_AFf_rmRefGen_1004v_Q30.vcf
java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[4])" 12Deha_FBc_AFfilter_rmRefGen_Q30.vcf > 12Deha_FBc_AFf_rmRefGen_1005v_Q30.vcf
java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[5])" 12Deha_FBc_AFfilter_rmRefGen_Q30.vcf > 12Deha_FBc_AFf_rmRefGen_1007v_Q30.vcf
java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[6])" 12Deha_FBc_AFfilter_rmRefGen_Q30.vcf > 12Deha_FBc_AFf_rmRefGen_1008v_Q30.vcf
java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[7])" 12Deha_FBc_AFfilter_rmRefGen_Q30.vcf > 12Deha_FBc_AFf_rmRefGen_1013v_Q30.vcf
java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[8])" 12Deha_FBc_AFfilter_rmRefGen_Q30.vcf > 12Deha_FBc_AFf_rmRefGen_1014v_Q30.vcf
java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[9])" 12Deha_FBc_AFfilter_rmRefGen_Q30.vcf > 12Deha_FBc_AFf_rmRefGen_1015v_Q30.vcf
java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[10])" 12Deha_FBc_AFfilter_rmRefGen_Q30.vcf > 12Deha_FBc_AFf_rmRefGen_1016v_Q30.vcf
java -jar ~/snpEff/SnpSift.jar filter "isVariant(GEN[11])" 12Deha_FBc_AFfilter_rmRefGen_Q30.vcf > 12Deha_FBc_AFf_rmRefGen_1019v_Q30.vcf
```


**merce@dna:/data02/merce/deha_vcalling/FB_cohort$ grep -c -v -e"#" 12Deha_FBc_AFf_rmRefGen_10*_Q* **

12Deha_FBc_AFf_rmRefGen_1001v_Q20.vcf:287826

12Deha_FBc_AFf_rmRefGen_1001v_Q30.vcf:287543

12Deha_FBc_AFf_rmRefGen_1002v_Q20.vcf:397

12Deha_FBc_AFf_rmRefGen_1002v_Q30.vcf:395

12Deha_FBc_AFf_rmRefGen_1003v_Q20.vcf:286108

12Deha_FBc_AFf_rmRefGen_1003v_Q30.vcf:285818

12Deha_FBc_AFf_rmRefGen_1004v_Q20.vcf:49693

12Deha_FBc_AFf_rmRefGen_1004v_Q30.vcf:49591

12Deha_FBc_AFf_rmRefGen_1005v_Q20.vcf:848

12Deha_FBc_AFf_rmRefGen_1005v_Q30.vcf:843

12Deha_FBc_AFf_rmRefGen_1007v_Q20.vcf:10515

12Deha_FBc_AFf_rmRefGen_1007v_Q30.vcf:10493

12Deha_FBc_AFf_rmRefGen_1008v_Q20.vcf:11381

12Deha_FBc_AFf_rmRefGen_1008v_Q30.vcf:11361

12Deha_FBc_AFf_rmRefGen_1013v_Q20.vcf:10353

12Deha_FBc_AFf_rmRefGen_1013v_Q30.vcf:10337

12Deha_FBc_AFf_rmRefGen_1014v_Q20.vcf:280931

12Deha_FBc_AFf_rmRefGen_1014v_Q30.vcf:280635

12Deha_FBc_AFf_rmRefGen_1015v_Q20.vcf:12318

12Deha_FBc_AFf_rmRefGen_1015v_Q30.vcf:12287

12Deha_FBc_AFf_rmRefGen_1016v_Q20.vcf:289323

12Deha_FBc_AFf_rmRefGen_1016v_Q30.vcf:288951

12Deha_FBc_AFf_rmRefGen_1019v_Q20.vcf:329

12Deha_FBc_AFf_rmRefGen_1019v_Q30.vcf:327







(**SnpSift extract fields (used at first, then better filter more):**

```
merce@dna:/data02/merce/deha_vcalling/FB_cohort$ java -jar ~/snpEff/SnpSift.jar extractFields 12Deha_FBc_rmRefGen.vcf "CHROM" "POS" "ID" "REF" "ALT" "AF" "AC" "ANN[*].EFFECT" "ANN[*].IMPACT" "ANN[*].GENE" "ANN[*].GENEID" "ANN[*].FEATURE" "ANN[*].FEATUREID" "ANN[*].BIOTYPE" "ANN[*].HGVS_C" "ANN[*].HGVS_P" "GEN[0].GT" "GEN[1].GT" "GEN[2].GT" "GEN[3].GT" "GEN[4].GT" "GEN[5].GT" "GEN[6].GT" "GEN[7].GT" "GEN[8].GT" "GEN[9].GT" "GEN[10].GT" "GEN[11].GT" "GEN[0].GL" "GEN[1].GL" "GEN[2].GL" "GEN[3].GL" "GEN[4].GL" "GEN[5].GL" "GEN[6].GL" "GEN[7].GL" "GEN[8].GL" "GEN[9].GL" "GEN[10].GL" "GEN[11].GL" > 12Deha_FBc_extractfields.txt

```
)

