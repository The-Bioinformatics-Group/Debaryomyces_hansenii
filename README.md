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

##### 13. SOAPdenovo assembly

- Only of 1006 and 1012, can be found [here](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/merce_assemblies_workfolder)

- Only commands and config files, results stored on sparc1: `/data3/debaryomyces/debaryomyces_merce/Work_files/merce_assemblies_workfolder`

##### 14. Coverage before and after removing duplicates of 1006 and 1012

- To check is it is worth it to continue trying to improve the assembly. 

- Can be found [here](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Work_files/PDFs_and_other_additional_information/Coverage_only06and12.md). Not many diferences between before and after removing duplicates.

##### 15. Debaryomyces Quality Assessment Report

- From Mahesh. Found [here](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Work_files/mahesh_assemblies_workfolder/DebaryomycesQualityAssessmentReport.docx).

##### 16. Coverage of all the raw data of all the strains.

- Table of coverages [here](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Work_files/PDFs_and_other_additional_information/Coverage.md). Some have really bad coverages, impossible to improve assembly. Those should be sequenced again.

##### 17. Compare weird strains with CBS767 to check regions in common

- Done with blastn and parsing resulting table, results [here](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/mahesh_assemblies_workfolder/Compare_weirdstrains_vs_cbs767)

- Check results comparing them with other strains known to be Debaryomyces hansenii (In the same folder).

#### Fourth meeting - 22nd of January, [report](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Work_files/PDFs_and_other_additional_information/meeting22january.pdf).

- Conclusions for next steps: SNP calling, phylogeny.

##### 18. Pre-Variant calling

- Alignment - Already done in step 2 with Bowtie2. Usage was found [here](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/rawdata_workfolder/Bowtie2mapping_CBS767reference).

- Remove PCR duplicates - Usage [here](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/Only_Debaryomyceshansenii/RemovePCRduplicates)

- Add read groups - Usage [here](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/Only_Debaryomyceshansenii/AddOrReplaceReadGroups).

- Local realignment/BAQ - Usage [here](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/Only_Debaryomyceshansenii/BAQ).

##### 19. Variant calling - Freebayes

- Usage [here](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/Only_Debaryomyceshansenii/Freebayes).
