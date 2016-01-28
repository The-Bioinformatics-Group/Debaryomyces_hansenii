Only using Debaryomyces hansenii strains

12 strains with 2 libraries each:

1001, 1002, 1003, 1004, 1005, 1007, 1008, 1013, 1014, 1015, 1016, 1019


Libraries: AH and BC

(Comes from AH9BY4ADXX and BC47HDACXX)


## Variant calling

#### Pre-variant calling

- Alignment: Bowtie2, found [here](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/rawdata_workfolder/Bowtie2mapping_CBS767reference).

- Remove PCR duplicates, using picard tools.

- AddOrReplaceReadGroups (To use Freebayes cohort variant calling)

- Local realignment/BAQ

#### Freebayes

- Cohort analysis without filtering. 

#### Post-variant calling

- Filter vcf file
