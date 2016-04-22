### BLAST

#### Database

All assemblies together, done previouslly:

https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/ITS

#### Queries

##### ACT1

http://www.ncbi.nlm.nih.gov/gene/?term=ACT1%20debaryomyces%20hansenii

##### GPD1

http://www.ncbi.nlm.nih.gov/gene/?term=gpd1%20debaryomyces%20hansenii

##### ENA1

Still not downloaded, database discontinued (?)

#### BLASTn

```
blastn -db /data02/merce/genes/DeHa_Allassemblies.fasta -query /data02/merce/genes/ACT1.fasta -out /data02/merce/genes/Deha_act1.txt
```

```
blastn -db /data02/merce/genes/DeHa_Allassemblies.fasta -query /data02/merce/genes/GPD1.fasta -out /data02/merce/genes/Deha_gpd1.txt
```

#### Extract sequences

**1001**

```
blastdbcmd -db /data02/merce/genes/DeHa_Allassemblies.fasta -entry 1001_NODE_47_length_73754_cov_48.5551_ID_13632 -range 41367-42849 -strand plus -out act1_1001.fasta
```

**1002**

```
blastdbcmd -db /data02/merce/genes/DeHa_Allassemblies.fasta -entry 1002_NODE_45_length_94926_cov_19.3516_ID_12796 -range 59333-60810 -strand plus -out act1_1002.fasta
```

**1003**

```
blastdbcmd -db /data02/merce/genes/DeHa_Allassemblies.fasta -entry 1003_NODE_14_length_267162_cov_35.4139_ID_6587 -range 230663-232145 -strand plus -out act1_1003.fasta
```

**1004**

```
blastdbcmd -db /data02/merce/genes/DeHa_Allassemblies.fasta -entry 1004_NODE_116_length_11704_cov_19.7086_ID_1233757 -range 8148-9625 -strand minus -out act1_1004.fasta
```

**1005**

```
blastdbcmd -db /data02/merce/genes/DeHa_Allassemblies.fasta -entry 1005_NODE_13_length_267876_cov_30.6329_ID_10888 -range 232258-233735 -strand plus -out act1_1005.fasta
```

**1006**

```
blastdbcmd -db /data02/merce/genes/DeHa_Allassemblies.fasta -entry 1006_NODE_35_length_119143_cov_34.8498_ID_11472 -range 34395-35851 -strand minus -out act1_1006.fasta
```

**1007**

```
blastdbcmd -db /data02/merce/genes/DeHa_Allassemblies.fasta -entry 1007_NODE_37_length_92897_cov_33.1504_ID_22889 -range 59244-60721 -strand plus -out act1_1007.fasta
```

**1008**

```
blastdbcmd -db /data02/merce/genes/DeHa_Allassemblies.fasta -entry 1008_NODE_54_length_79012_cov_20.0019_ID_10402 -range 43453-44930 -strand plus -out act1_1008.fasta
```

**1009**

```
blastdbcmd -db /data02/merce/genes/DeHa_Allassemblies.fasta -entry 1009_jcf7180000023888 -range 198-1676 -strand plus -out act1_1009.fasta
```

```
blastdbcmd -db /data02/merce/genes/DeHa_Allassemblies.fasta -entry 1009_jcf7180000024376 -range 1-1388 -strand minus -out act1_1009_2.fasta
```

```
blastdbcmd -db /data02/merce/genes/DeHa_Allassemblies.fasta -entry 1009_jcf7180000024352 -range 34754-36141 -strand plus -out act1_1009_3.fasta
```

**1010**

```
blastdbcmd -db /data02/merce/genes/DeHa_Allassemblies.fasta -entry 1010_jcf7180000016727 -range 34927-36382 -strand minus -out act1_1010.fasta
```

**1011**

```
blastdbcmd -db /data02/merce/genes/DeHa_Allassemblies.fasta -entry 1011_jcf7180000064617 -range 194-1671 -strand minus -out act1_1011.fasta
```

**1012**

```
blastdbcmd -db /data02/merce/genes/DeHa_Allassemblies.fasta -entry 1012_NODE_37_length_118481_cov_34.7137_ID_13379 -range 34311-35767 -strand minus -out act1_1012.fasta
```

**1013**

```
blastdbcmd -db /data02/merce/genes/DeHa_Allassemblies.fasta -entry 1013_NODE_41_length_95028_cov_28.4471_ID_24721 -range 34223-35700 -strand minus -out act1_1013.fasta
```

**1014**

```
blastdbcmd -db /data02/merce/genes/DeHa_Allassemblies.fasta -entry 1014_NODE_11_length_265654_cov_37.3604_ID_11674 -range 33425-34907 -strand minus -out act1_1014.fasta
```

**1015**

```
blastdbcmd -db /data02/merce/genes/DeHa_Allassemblies.fasta -entry 1015_NODE_57_length_79733_cov_39.4019_ID_11936 -range 43465-44942 -strand plus -out act1_1015.fasta
```

**1016**

```
blastdbcmd -db /data02/merce/genes/DeHa_Allassemblies.fasta -entry 1016_NODE_38_length_80095_cov_47.3987_ID_14741 -range 41370-42852 -strand plus -out act1_1016.fasta
```

**1019**

```
blastdbcmd -db /data02/merce/genes/DeHa_Allassemblies.fasta -entry 1019_NODE_16_length_267918_cov_29.402_ID_8190 -range 232264-233741 -strand plus -out act1_1019.fasta
```

**1017**

```
blastdbcmd -db /data02/merce/genes/DeHa_Allassemblies.fasta -entry 1017_jcf7180000031791 -range 29981-31100 -strand minus -out act1_1017.fasta
```

**1018**

```
blastdbcmd -db /data02/merce/genes/DeHa_Allassemblies.fasta -entry 1018_jcf7180000049452 -range 3641-4760 -strand plus -out act1_1018.fasta
```


#### Sequences

cat files together:

```
cat act1_10* >> act1_extracted.fasta
```

take out the lcl thing to have the strain number at first:

```
sed s'/lcl|//g' act1_extracted.fasta > act1_deha.fasta
```

#### Use act1_deha.fasta to get exon 2 sequences for comparison with other species od *Debayomyces*.



### Exon 2 sequences:

**1001**

```
blastdbcmd -db /data02/merce/genes/act1_deha.fasta -entry 1001_NODE_47_length_73754_cov_48.5551_ID_13632:41367-42849 -range 365-1483 -strand plus -out act1_exon2_1001.fasta
```

**1002**

```
blastdbcmd -db /data02/merce/genes/act1_deha.fasta -entry 1002_NODE_45_length_94926_cov_19.3516_ID_12796:59333-60810 -range 360-1478 -strand plus -out act1_exon2_1002.fasta
```

**1003**

```
blastdbcmd -db /data02/merce/genes/act1_deha.fasta -entry 1003_NODE_14_length_267162_cov_35.4139_ID_6587:230663-232145 -range 365-1483 -strand plus -out act1_exon2_1003.fasta
```

**1004**

```
blastdbcmd -db /data02/merce/genes/act1_deha.fasta -entry 1004_NODE_116_length_11704_cov_19.7086_ID_1233757:c9625-8148 -range 360-1478 -strand plus -out act1_exon2_1004.fasta
```

**1005**

```
blastdbcmd -db /data02/merce/genes/act1_deha.fasta -entry 1005_NODE_13_length_267876_cov_30.6329_ID_10888:232258-233735 -range 360-1478 -strand plus -out act1_exon2_1005.fasta
```

**1006**

```
blastdbcmd -db /data02/merce/genes/act1_deha.fasta -entry 1006_NODE_35_length_119143_cov_34.8498_ID_11472:c35851-34395 -range 339-1457 -strand plus -out act1_exon2_1006.fasta
```

**1007**

```
blastdbcmd -db /data02/merce/genes/act1_deha.fasta -entry 1007_NODE_37_length_92897_cov_33.1504_ID_22889:59244-60721 -range 360-1478 -strand plus -out act1_exon2_1007.fasta
```

**1008**

```
blastdbcmd -db /data02/merce/genes/act1_deha.fasta -entry 1008_NODE_54_length_79012_cov_20.0019_ID_10402:43453-44930 -range 360-1478 -strand plus -out act1_exon2_1008.fasta
```

**1009**

```
blastdbcmd -db /data02/merce/genes/act1_deha.fasta -entry 1009_jcf7180000023888:198-1676 -range 361-1479 -strand plus -out act1_exon2_1009.fasta
```
```
blastdbcmd -db /data02/merce/genes/act1_deha.fasta -entry 1009_jcf7180000024352:34754-36141 -range 361-1388 -strand plus -out act1_exon2_1009_2.fasta
```
```
blastdbcmd -db /data02/merce/genes/act1_deha.fasta -entry 1009_jcf7180000024376:c1388-1 -range 361-1388 -strand plus -out act1_exon2_1009_3.fasta
```

**1010**

```
blastdbcmd -db /data02/merce/genes/act1_deha.fasta -entry 1010_jcf7180000016727:c36382-34927 -range 338-1456 -strand plus -out act1_exon2_1010.fasta
```

**1011**

```
blastdbcmd -db /data02/merce/genes/act1_deha.fasta -entry 1011_jcf7180000064617:c1671-194 -range 360-1478 -strand plus -out act1_exon2_1011.fasta
```

**1012**

```
blastdbcmd -db /data02/merce/genes/act1_deha.fasta -entry 1012_NODE_37_length_118481_cov_34.7137_ID_13379:c35767-34311 -range 339-1457 -strand plus -out act1_exon2_1012.fasta
```

**1013**

```
blastdbcmd -db /data02/merce/genes/act1_deha.fasta -entry 1013_NODE_41_length_95028_cov_28.4471_ID_24721:c35700-34223 -range 360-1478 -strand plus -out act1_exon2_1013.fasta
```

**1014**

```
blastdbcmd -db /data02/merce/genes/act1_deha.fasta -entry 1014_NODE_11_length_265654_cov_37.3604_ID_11674:c34907-33425 -range 365-1483 -strand plus -out act1_exon2_1014.fasta
```

**1015**

```
blastdbcmd -db /data02/merce/genes/act1_deha.fasta -entry 1015_NODE_57_length_79733_cov_39.4019_ID_11936:43465-44942 -range 360-1478 -strand plus -out act1_exon2_1015.fasta
```

**1016**

```
blastdbcmd -db /data02/merce/genes/act1_deha.fasta -entry 1016_NODE_38_length_80095_cov_47.3987_ID_14741:41370-42852 -range 365-1483 -strand plus -out act1_exon2_1016.fasta
```

**1019**

```
blastdbcmd -db /data02/merce/genes/act1_deha.fasta -entry 1019_NODE_16_length_267918_cov_29.402_ID_8190:232264-233741 -range 360-1478 -strand plus -out act1_exon2_1019.fasta
```

**1017**

```
blastdbcmd -db /data02/merce/genes/act1_deha.fasta -entry 1017_jcf7180000031791:c31100-29981 -range 5-1120 -strand plus -out act1_exon2_1017.fasta
```

**1018**

```
blastdbcmd -db /data02/merce/genes/act1_deha.fasta -entry 1018_jcf7180000049452:3641-4760 -range 5-1120 -strand plus -out act1_exon2_1018.fasta
```

#### Sequences

cat files together:

```
cat act1_exon2_10* >> act1_extracted_exon2.fasta
```

take out the lcl thing to have the strain number at first:

```
sed s'/lcl|//g' act1_extracted_exon2.fasta > act1_deha_exon2.fasta
```


