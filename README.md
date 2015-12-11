# *Debaryomyces hansenii* project
## Organization of folders (sparc1):
/data3/debaryomyces/debaryomyces_merce/

Contents (Folders that start with a number come from Mahesha):
- 00_ReferenceGenome
	- Reference genome CBS767
	- Sequence of a plasmid pDH1A
- 03_Assembly
	- Folder for each strain with the assemblies done.
- 04_Validation
	- Folder for each strain with the validation of the assemblies.
- 05_Final_Assembly
	- Fasta file of the final assembly for each strain and the stats file.
- RNAseq_data
	- 5 RNAseq fastq sequences.
- data_references
	- Reference1: CBS767
	- Reference2: MTCC234
- Work_files: space of work for Merce Montoliu Nerin.
	README files explaining each of the contents and results in each folder.  

## Workflow

### 1. Bowtie2 

- Mapping of raw reads to *Debaryomyces hansenii* reference strain CBS767, results can be found [here](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/rawdata_workfolder/Bowtie2mapping_CBS767reference).

- Mapping of raw reads to *Saccharomyces cerevisiae* reference strain S288c, results can be found [here](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/rawdata_workfolder/Bowtie2mapping_S288c).

- Mapping of raw reads to known previously mistaken species like *Meyerozyma guilliermondii*, results can be found [here](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/rawdata_workfolder/Bowtie2mapping_ATCC6260). 

 
