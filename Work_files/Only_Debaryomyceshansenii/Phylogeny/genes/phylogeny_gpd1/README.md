## Phylogeny GPD1

Change identifiers to avoid problems with the different programs:

```
sed 's/lcl|//g' GPD1_all.fasta > intermediate1.fasta
sed 's/,/_/g' intermediate1.fasta > i2.fasta
sed 's/:/_/g' i2.fasta > i3.fasta
sed 's/ /_/g' i3.fasta > GPD1_idgood.fasta
```

#### Muscle

```
muscle -in GPD1_idgood.fasta -out Muscle_GPD1.fasta
```

#### Translate file with ALTER to phy

#### jModelTest 2.1.10

```
java -jar jmodeltest-2.1.10/jModelTest.jar -d Muscle_GPD1.fasta.alter.phy -g 4 -i -f -AIC -BIC -a > GPD1_modeltest.log 2>&1
```
