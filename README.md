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

##### 1. Information about strains

[Alternative names](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Work_files/Strains.md)

[Origin of strains](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Work_files/Strains_origin.md)

##### 2. Bowtie2 

- Mapping of raw reads to *Debaryomyces hansenii* reference strain CBS767, results can be found [here](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/rawdata_workfolder/Bowtie2mapping_CBS767reference).

- Mapping of raw reads to *Saccharomyces cerevisiae* reference strain S288c, results can be found [here](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/rawdata_workfolder/Bowtie2mapping_S288c).

- Mapping of raw reads to known previously mistaken species like *Meyerozyma guilliermondii*, results can be found [here](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/rawdata_workfolder/Bowtie2mapping_ATCC6260). 

#### First meeting - 15th of September, [first planned workflow](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Work_files/PDFs_and_other_additional_information/Workflow.pdf). 

##### 3. Information on how kraken works.

- Manual [here](http://ccb.jhu.edu/software/kraken/MANUAL.html)

- Article for more specific information [here](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Work_files/PDFs_and_other_additional_information/kraken_article.pdf).

##### 4. Kraken standard database to check contamination

- Raw reads contamination check [here](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Work_files/rawdata_workfolder/contamination_check/StandardDB_kraken.md).

	- [Reports](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/rawdata_workfolder/contamination_check/kraken_results).

- Mahesh assemblies contamination check [here](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Work_files/mahesha_assemblies_workfolder/contamination_check/StandardDB_kraken.md).

	- [Reports](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/mahesha_assemblies_workfolder/contamination_check/kraken_stddb).

##### 5. VarScan first tests

- Used on raw reads, see [here](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/rawdata_workfolder/VarScan)

##### 6. BLAST tests

- blastn and blastx tests [here](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/mahesha_assemblies_workfolder/BLAST).

#### Second meeting - 2nd of November, [resume of results](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Work_files/PDFs_and_other_additional_information/meeting2ndNov_Dhansenii.pdf).

##### 7. Kraken custom database

- Raw reads [here](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Work_files/rawdata_workfolder/contamination_check/CustomDB_kraken.md)

- Mahesh assemblies [here](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Work_files/mahesha_assemblies_workfolder/contamination_check/CustomDB_kraken.md).

##### 8. ITS regions study

- All information [here](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/ITS), part left aside for now.

#### Third meeting - 8th of December, [results](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Work_files/PDFs_and_other_additional_information/Meeting_Deha_8th%20of%20December.pdf), [more resumed results](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Work_files/PDFs_and_other_additional_information/8thdecember2.pdf).

##### 9. Include hybrid strains in Kraken database

Not possible, it needs a GI number to work, it needs to be included on the taxonomy.

##### 10. Map raw reads to its own assembly to check assemblies

- Bowtie2 used. Results can be found [here](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/mahesh_assemblies_workfolder/Check_assemblies_map_reads)

##### 11. Map weird strains between each other to check how close they are.

- Bowtie2 used. Results can be found [here](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/mahesh_assemblies_workfolder/Check_weird_strains)

##### 12. PreQC on 1006 and 1012 to prepare for an improvement of the assembly.

- Process and results [here](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/rawdata_workfolder/PreQC)
