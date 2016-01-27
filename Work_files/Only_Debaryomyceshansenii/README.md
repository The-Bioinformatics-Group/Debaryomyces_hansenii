### Variant calling

#### Pre-variant calling

- Alignment: Bowtie2, found [here](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/rawdata_workfolder/Bowtie2mapping_CBS767reference).

- Remove PCR duplicates, using picard tools.

- Local realignment / BAQ

- AddOrReplaceReadGroups (To use Freebayes cohort variant calling)
