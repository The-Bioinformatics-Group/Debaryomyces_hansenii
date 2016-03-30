### Annotation using maker

**Information about control files can be found here:**

https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Work_files/mahesh_assemblies_workfolder/Annotation/ControlFilesDescription.md


#### Running maker:

**To run maker:**

Just use this command:

```
/usr/local/maker/bin/maker
```

inside the folder with the 3 control files.


- CBS767 reference strain:

[cbs767](): Three tests with different control files. Last one (test3) seems better to try on the other strains.

- *Debaryomyces hansenii* strains:

[1001](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/mahesh_assemblies_workfolder/Annotation/1001)

[1002](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/mahesh_assemblies_workfolder/Annotation/1002)

[1003](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/mahesh_assemblies_workfolder/Annotation/1003)

[1004](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/mahesh_assemblies_workfolder/Annotation/1004)

[1005](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/mahesh_assemblies_workfolder/Annotation/1005)

[1007](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/mahesh_assemblies_workfolder/Annotation/1007)

[1008](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/mahesh_assemblies_workfolder/Annotation/1008)

[1013](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/mahesh_assemblies_workfolder/Annotation/1013)

[1014](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/mahesh_assemblies_workfolder/Annotation/1014)

[1015](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/mahesh_assemblies_workfolder/Annotation/1015)

[1016](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/mahesh_assemblies_workfolder/Annotation/1016)

[1019](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/mahesh_assemblies_workfolder/Annotation/1019)


- Different strains:

[1006](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/mahesh_assemblies_workfolder/Annotation/1006)

[1009](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/mahesh_assemblies_workfolder/Annotation/1009)

[1010](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/mahesh_assemblies_workfolder/Annotation/1010)

[1011](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/mahesh_assemblies_workfolder/Annotation/1011)

[1012](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/mahesh_assemblies_workfolder/Annotation/1012)


#### Results for *D. hansenii* strains:

A description of how the results are presented can be found [here](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Work_files/mahesh_assemblies_workfolder/Annotation/cbs767/README.md)

**Getting the gff files into 1**

```
cp /data02/merce/maker/cbs767/test3/GCA_000006445.2_ASM644v2_genomic.maker.output/GCA_000006445.2_ASM644v2_genomic_datastore/*/*/*/*.gff /data02/merce/maker/cbs767/test3/gff
cat /data02/merce/maker/cbs767/test3/gff/* >> /data02/merce/maker/cbs767/test3/gff/cbs767.gff

cp /data02/merce/maker/1001/P1260_1001_preliminary_assembly.maker.output/P1260_1001_preliminary_assembly_datastore/*/*/*/*.gff /data02/merce/maker/1001/gff
cat /data02/merce/maker/1001/gff/* >> /data02/merce/maker/1001/gff/1001.gff

cp /data02/merce/maker/1002/P1260_1002_preliminary_assembly.maker.output/P1260_1002_preliminary_assembly_datastore/*/*/*/*.gff /data02/merce/maker/1002/gff
cat /data02/merce/maker/1002/gff/* >> /data02/merce/maker/1002/gff/1002.gff

cp /data02/merce/maker/1003/P1260_1003_preliminary_assembly.maker.output/P1260_1003_preliminary_assembly_datastore/*/*/*/*.gff /data02/merce/maker/1003/gff
cat /data02/merce/maker/1003/gff/* >> /data02/merce/maker/1003/gff/1003.gff

cp /data02/merce/maker/1004/P1260_1004_preliminary_assembly.maker.output/P1260_1004_preliminary_assembly_datastore/*/*/*/*.gff /data02/merce/maker/1004/gff
cat /data02/merce/maker/1004/gff/* >> /data02/merce/maker/1004/gff/1004.gff

cp /data02/merce/maker/1005/P1260_1005_preliminary_assembly.maker.output/P1260_1005_preliminary_assembly_datastore/*/*/*/*.gff /data02/merce/maker/1005/gff
cat /data02/merce/maker/1005/gff/* >> /data02/merce/maker/1005/gff/1005.gff

cp /data02/merce/maker/1007/P1260_1007_preliminary_assembly.maker.output/P1260_1007_preliminary_assembly_datastore/*/*/*/*.gff /data02/merce/maker/1007/gff
cat /data02/merce/maker/1007/gff/* >> /data02/merce/maker/1007/gff/1007.gff

cp /data02/merce/maker/1008/P1260_1008_preliminary_assembly.maker.output/P1260_1008_preliminary_assembly_datastore/*/*/*/*.gff /data02/merce/maker/1008/gff
cat /data02/merce/maker/1008/gff/* >> /data02/merce/maker/1008/gff/1008.gff

cp /data02/merce/maker/1013/P1260_1013_preliminary_assembly.maker.output/P1260_1013_preliminary_assembly_datastore/*/*/*/*.gff /data02/merce/maker/1013/gff
cat /data02/merce/maker/1013/gff/* >> /data02/merce/maker/1013/gff/1013.gff

cp /data02/merce/maker/1014/P1260_1014_preliminary_assembly.maker.output/P1260_1014_preliminary_assembly_datastore/*/*/*/*.gff /data02/merce/maker/1014/gff
cat /data02/merce/maker/1014/gff/* >> /data02/merce/maker/1014/gff/1014.gff

cp /data02/merce/maker/1015/P1260_1015_preliminary_assembly.maker.output/P1260_1015_preliminary_assembly_datastore/*/*/*/*.gff /data02/merce/maker/1015/gff
cat /data02/merce/maker/1015/gff/* >> /data02/merce/maker/1015/gff/1015.gff

cp /data02/merce/maker/1016/P1260_1016_preliminary_assembly.maker.output/P1260_1016_preliminary_assembly_datastore/*/*/*/*.gff /data02/merce/maker/1016/gff
cat /data02/merce/maker/1016/gff/* >> /data02/merce/maker/1016/gff/1016.gff

cp /data02/merce/maker/1019/P1260_1019_preliminary_assembly.maker.output/P1260_1019_preliminary_assembly_datastore/*/*/*/*.gff /data02/merce/maker/1019/gff
cat /data02/merce/maker/1019/gff/* >> /data02/merce/maker/1019/gff/1019.gff
```

**Getting the transcript files into 1**

```
cp /data02/merce/maker/cbs767/test3/GCA_000006445.2_ASM644v2_genomic.maker.output/GCA_000006445.2_ASM644v2_genomic_datastore/*/*/*/*.transcripts.fasta /data02/merce/maker/cbs767/test3/transcripts
cat /data02/merce/maker/cbs767/test3/transcripts/* >> /data02/merce/maker/cbs767/test3/transcripts/cbs767_transcripts.fasta

cp /data02/merce/maker/1001/P1260_1001_preliminary_assembly.maker.output/P1260_1001_preliminary_assembly_datastore/*/*/*/*.transcripts.fasta /data02/merce/maker/1001/transcripts
cat /data02/merce/maker/1001/transcripts/* >> /data02/merce/maker/1001/transcripts/1001_transcripts.fasta

cp /data02/merce/maker/1002/P1260_1002_preliminary_assembly.maker.output/P1260_1002_preliminary_assembly_datastore/*/*/*/*.transcripts.fasta /data02/merce/maker/1002/transcripts
cat /data02/merce/maker/1002/transcripts/* >> /data02/merce/maker/1002/transcripts/1002_transcripts.fasta

cp /data02/merce/maker/1003/P1260_1003_preliminary_assembly.maker.output/P1260_1003_preliminary_assembly_datastore/*/*/*/*.transcripts.fasta /data02/merce/maker/1003/transcripts
cat /data02/merce/maker/1003/transcripts/* >> /data02/merce/maker/1003/transcripts/1003_transcripts.fasta

cp /data02/merce/maker/1004/P1260_1004_preliminary_assembly.maker.output/P1260_1004_preliminary_assembly_datastore/*/*/*/*.transcripts.fasta /data02/merce/maker/1004/transcripts
cat /data02/merce/maker/1004/transcripts/* >> /data02/merce/maker/1004/transcripts/1004_transcripts.fasta

cp /data02/merce/maker/1005/P1260_1005_preliminary_assembly.maker.output/P1260_1005_preliminary_assembly_datastore/*/*/*/*.transcripts.fasta /data02/merce/maker/1005/transcripts
cat /data02/merce/maker/1005/transcripts/* >> /data02/merce/maker/1005/transcripts/1005_transcripts.fasta

cp /data02/merce/maker/1007/P1260_1007_preliminary_assembly.maker.output/P1260_1007_preliminary_assembly_datastore/*/*/*/*.transcripts.fasta /data02/merce/maker/1007/transcripts
cat /data02/merce/maker/1007/transcripts/* >> /data02/merce/maker/1007/transcripts/1007_transcripts.fasta

cp /data02/merce/maker/1008/P1260_1008_preliminary_assembly.maker.output/P1260_1008_preliminary_assembly_datastore/*/*/*/*.transcripts.fasta /data02/merce/maker/1008/transcripts
cat /data02/merce/maker/1008/transcripts/* >> /data02/merce/maker/1008/transcripts/1008_transcripts.fasta

cp /data02/merce/maker/1013/P1260_1013_preliminary_assembly.maker.output/P1260_1013_preliminary_assembly_datastore/*/*/*/*.transcripts.fasta /data02/merce/maker/1013/transcripts
cat /data02/merce/maker/1013/transcripts/* >> /data02/merce/maker/1013/transcripts/1013_transcripts.fasta

cp /data02/merce/maker/1014/P1260_1014_preliminary_assembly.maker.output/P1260_1014_preliminary_assembly_datastore/*/*/*/*.transcripts.fasta /data02/merce/maker/1014/transcripts
cat /data02/merce/maker/1014/transcripts/* >> /data02/merce/maker/1014/transcripts/1014_transcripts.fasta

cp /data02/merce/maker/1015/P1260_1015_preliminary_assembly.maker.output/P1260_1015_preliminary_assembly_datastore/*/*/*/*.transcripts.fasta /data02/merce/maker/1015/transcripts
cat /data02/merce/maker/1015/transcripts/* >> /data02/merce/maker/1015/transcripts/1015_transcripts.fasta

cp /data02/merce/maker/1016/P1260_1016_preliminary_assembly.maker.output/P1260_1016_preliminary_assembly_datastore/*/*/*/*.transcripts.fasta /data02/merce/maker/1016/transcripts
cat /data02/merce/maker/1016/transcripts/* >> /data02/merce/maker/1016/transcripts/1016_transcripts.fasta

cp /data02/merce/maker/1019/P1260_1019_preliminary_assembly.maker.output/P1260_1019_preliminary_assembly_datastore/*/*/*/*.transcripts.fasta /data02/merce/maker/1019/transcripts
cat /data02/merce/maker/1019/transcripts/* >> /data02/merce/maker/1019/transcripts/1019_transcripts.fasta
```

Number of transcripts

Using:

```
grep -c -e">" /data02/merce/maker/cbs767/test3/transcripts/cbs767_transcripts.fasta
```

|     |CBS767|1001|1002|1003|1004|1005|1007|1008|1013|1014|1015|1016|1019|
|-----|------|----|----|----|----|----|----|----|----|----|----|----|----|
|Maker|6326  |6064|6401|6097|    |6327|6219|6326|6421|6096|6375|6153|6380|	
|Ref  |6290  |    |    |    |    |    |    |    |    |    |    |    |5313|



Identifier in all of the headers:

```
merce@dna:/data02/merce/maker$ sed 's/>maker/>1001_maker/g' 1001/transcripts/1001_transcripts.fasta > 1001_transcripts_labeled.fasta

merce@dna:/data02/merce/maker$ sed 's/>maker/>1002_maker/g' 1002/transcripts/1002_transcripts.fasta > 1002_transcripts_labeled.fasta

merce@dna:/data02/merce/maker$ sed 's/>maker/>1003_maker/g' 1003/transcripts/1003_transcripts.fasta > 1003_transcripts_labeled.fasta

merce@dna:/data02/merce/maker$ sed 's/>maker/>1004_maker/g' 1004/transcripts/1004_transcripts.fasta > 1004_transcripts_labeled.fasta

merce@dna:/data02/merce/maker$ sed 's/>maker/>1005_maker/g' 1005/transcripts/1005_transcripts.fasta > 1005_transcripts_labeled.fasta

merce@dna:/data02/merce/maker$ sed 's/>maker/>1007_maker/g' 1007/transcripts/1007_transcripts.fasta > 1007_transcripts_labeled.fasta

merce@dna:/data02/merce/maker$ sed 's/>maker/>1008_maker/g' 1008/transcripts/1008_transcripts.fasta > 1008_transcripts_labeled.fasta

merce@dna:/data02/merce/maker$ sed 's/>maker/>1013_maker/g' 1013/transcripts/1013_transcripts.fasta > 1013_transcripts_labeled.fasta

merce@dna:/data02/merce/maker$ sed 's/>maker/>1014_maker/g' 1014/transcripts/1014_transcripts.fasta > 1014_transcripts_labeled.fasta

merce@dna:/data02/merce/maker$ sed 's/>maker/>1015_maker/g' 1015/transcripts/1015_transcripts.fasta > 1015_transcripts_labeled.fasta

merce@dna:/data02/merce/maker$ sed 's/>maker/>1016_maker/g' 1016/transcripts/1016_transcripts.fasta > 1016_transcripts_labeled.fasta

merce@dna:/data02/merce/maker$ sed 's/>maker/>1019_maker/g' 1019/transcripts/1019_transcripts.fasta > 1019_transcripts_labeled.fasta
```

Cat files into 1:

```
merce@dna:/data02/merce/maker$ cat *.fasta >> Deha_all_transcripts.fasta
```

___________________________________________________

#### Results for non-*D. hansenii* strains:

**Getting gff files into 1:**

```
cp /data02/merce/maker/1006/maker_debestprot/P1260_1006_preliminary_assembly.maker.output/P1260_1006_preliminary_assembly_datastore/*/*/*/*.gff /data02/merce/maker/1006/maker_debestprot/gff
cat /data02/merce/maker/1006/maker_debestprot/gff/* >> /data02/merce/maker/1006/maker_debestprot/gff/1006_deb.gff

cp /data02/merce/maker/1006/maker_candebestprot/P1260_1006_preliminary_assembly.maker.output/P1260_1006_preliminary_assembly_datastore/*/*/*/*.gff /data02/merce/maker/1006/maker_candebestprot/gff
cat /data02/merce/maker/1006/maker_candebestprot/gff/* >> /data02/merce/maker/1006/maker_candebestprot/gff/1006_candeb.gff

cp /data02/merce/maker/1009/maker_debestprot/P1260_1009_preliminary_assembly.maker.output/P1260_1009_preliminary_assembly_datastore/*/*/*/*.gff /data02/merce/maker/1009/maker_debestprot/gff
cat /data02/merce/maker/1009/maker_debestprot/gff/* >> /data02/merce/maker/1009/maker_debestprot/gff/1009_deb.gff

cp /data02/merce/maker/1009/maker_candebestprot/P1260_1009_preliminary_assembly.maker.output/P1260_1009_preliminary_assembly_datastore/*/*/*/*.gff /data02/merce/maker/1009/maker_candebestprot/gff
cat /data02/merce/maker/1009/maker_candebestprot/gff/* >> /data02/merce/maker/1009/maker_candebestprot/gff/1009_candeb.gff

cp /data02/merce/maker/1010/maker_debestprot/P1260_1010_preliminary_assembly.maker.output/P1260_1010_preliminary_assembly_datastore/*/*/*/*.gff /data02/merce/maker/1010/maker_debestprot/gff
cat /data02/merce/maker/1010/maker_debestprot/gff/* >> /data02/merce/maker/1010/maker_debestprot/gff/1010_deb.gff

cp /data02/merce/maker/1010/maker_candebestprot/P1260_1010_preliminary_assembly.maker.output/P1260_1010_preliminary_assembly_datastore/*/*/*/*.gff /data02/merce/maker/1010/maker_candebestprot/gff
cat /data02/merce/maker/1010/maker_candebestprot/gff/* >> /data02/merce/maker/1010/maker_candebestprot/gff/1010_candeb.gff

cp /data02/merce/maker/1011/maker_debestprot/P1260_1011_preliminary_assembly.maker.output/P1260_1011_preliminary_assembly_datastore/*/*/*/*.gff /data02/merce/maker/1011/maker_debestprot/gff
cat /data02/merce/maker/1011/maker_debestprot/gff/* >> /data02/merce/maker/1011/maker_debestprot/gff/1011_deb.gff

cp /data02/merce/maker/1011/maker_candebestprot/P1260_1011_preliminary_assembly.maker.output/P1260_1011_preliminary_assembly_datastore/*/*/*/*.gff /data02/merce/maker/1011/maker_candebestprot/gff
cat /data02/merce/maker/1011/maker_candebestprot/gff/* >> /data02/merce/maker/1011/maker_candebestprot/gff/1011_candeb.gff

cp /data02/merce/maker/1012/maker_debestprot/P1260_1012_preliminary_assembly.maker.output/P1260_1012_preliminary_assembly_datastore/*/*/*/*.gff /data02/merce/maker/1012/maker_debestprot/gff
cat /data02/merce/maker/1012/maker_debestprot/gff/* >> /data02/merce/maker/1012/maker_debestprot/gff/1012_deb.gff

cp /data02/merce/maker/1012/maker_candebestprot/P1260_1012_preliminary_assembly.maker.output/P1260_1012_preliminary_assembly_datastore/*/*/*/*.gff /data02/merce/maker/1012/maker_candebestprot/gff
cat /data02/merce/maker/1012/maker_candebestprot/gff/* >> /data02/merce/maker/1012/maker_candebestprot/gff/1012_candeb.gff
```

**Getting the transcript files into 1:**

```
cp /data02/merce/maker/1006/maker_debestprot/P1260_1006_preliminary_assembly.maker.output/P1260_1006_preliminary_assembly_datastore/*/*/*/*.transcripts.fasta /data02/merce/maker/1006/maker_debestprot/transcripts
cat /data02/merce/maker/1006/maker_debestprot/transcripts/* >> /data02/merce/maker/1006/maker_debestprot/transcripts/1006_deb_transcripts.fasta

cp /data02/merce/maker/1006/maker_candebestprot/P1260_1006_preliminary_assembly.maker.output/P1260_1006_preliminary_assembly_datastore/*/*/*/*.transcripts.fasta /data02/merce/maker/1006/maker_candebestprot/transcripts
cat /data02/merce/maker/1006/maker_candebestprot/transcripts/* >> /data02/merce/maker/1006/maker_candebestprot/transcripts/1006_candeb_transcripts.fasta

cp /data02/merce/maker/1009/maker_debestprot/P1260_1009_preliminary_assembly.maker.output/P1260_1009_preliminary_assembly_datastore/*/*/*/*.transcripts.fasta /data02/merce/maker/1009/maker_debestprot/transcripts
cat /data02/merce/maker/1009/maker_debestprot/transcripts/* >> /data02/merce/maker/1009/maker_debestprot/transcripts/1009_deb_transcripts.fasta

cp /data02/merce/maker/1009/maker_candebestprot/P1260_1009_preliminary_assembly.maker.output/P1260_1009_preliminary_assembly_datastore/*/*/*/*.transcripts.fasta /data02/merce/maker/1009/maker_candebestprot/transcripts
cat /data02/merce/maker/1009/maker_candebestprot/transcripts/* >> /data02/merce/maker/1009/maker_candebestprot/transcripts/1009_candeb_transcripts.fasta

cp /data02/merce/maker/1010/maker_debestprot/P1260_1010_preliminary_assembly.maker.output/P1260_1010_preliminary_assembly_datastore/*/*/*/*.transcripts.fasta /data02/merce/maker/1010/maker_debestprot/transcripts
cat /data02/merce/maker/1010/maker_debestprot/transcripts/* >> /data02/merce/maker/1010/maker_debestprot/transcripts/1010_deb_transcripts.fasta

cp /data02/merce/maker/1010/maker_candebestprot/P1260_1010_preliminary_assembly.maker.output/P1260_1010_preliminary_assembly_datastore/*/*/*/*.transcripts.fasta /data02/merce/maker/1010/maker_candebestprot/transcripts
cat /data02/merce/maker/1010/maker_candebestprot/transcripts/* >> /data02/merce/maker/1010/maker_candebestprot/transcripts/1010_candeb_transcripts.fasta

cp /data02/merce/maker/1011/maker_debestprot/P1260_1011_preliminary_assembly.maker.output/P1260_1011_preliminary_assembly_datastore/*/*/*/*.transcripts.fasta /data02/merce/maker/1011/maker_debestprot/transcripts
cat /data02/merce/maker/1011/maker_debestprot/transcripts/* >> /data02/merce/maker/1011/maker_debestprot/transcripts/1011_deb_transcripts.fasta

cp /data02/merce/maker/1011/maker_candebestprot/P1260_1011_preliminary_assembly.maker.output/P1260_1011_preliminary_assembly_datastore/*/*/*/*.transcripts.fasta /data02/merce/maker/1011/maker_candebestprot/transcripts
cat /data02/merce/maker/1011/maker_candebestprot/transcripts/* >> /data02/merce/maker/1011/maker_candebestprot/transcripts/1011_candeb_transcripts.fasta

cp /data02/merce/maker/1012/maker_debestprot/P1260_1012_preliminary_assembly.maker.output/P1260_1012_preliminary_assembly_datastore/*/*/*/*.transcripts.fasta /data02/merce/maker/1012/maker_debestprot/transcripts
cat /data02/merce/maker/1012/maker_debestprot/transcripts/* >> /data02/merce/maker/1012/maker_debestprot/transcripts/1012_deb_transcripts.fasta

cp /data02/merce/maker/1012/maker_candebestprot/P1260_1012_preliminary_assembly.maker.output/P1260_1012_preliminary_assembly_datastore/*/*/*/*.transcripts.fasta /data02/merce/maker/1012/maker_candebestprot/transcripts
cat /data02/merce/maker/1012/maker_candebestprot/transcripts/* >> /data02/merce/maker/1012/maker_candebestprot/transcripts/1012_candeb_transcripts.fasta
```

**Number of transcripts**

```
grep -c -e">" /data02/merce/maker/1012/maker_debestprot/transcripts/1012_deb_transcripts.fasta
```

|      |1006|1009 |1010|1011 |1012|
|------|----|-----|----|-----|----|
|deb   |5934|10752|6099|10343|5830|
|candeb|5924|10769|6113|10455|5823|
