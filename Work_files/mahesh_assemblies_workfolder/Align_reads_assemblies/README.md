### Align reads to assemblies in pairs

[To see previous alignment of reads to its own assemblies](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/mahesh_assemblies_workfolder/Check_assemblies_map_reads).

[To see previous alignment of weird strain reads to other weird strain assemblies](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/tree/master/Work_files/mahesh_assemblies_workfolder/Check_weird_strains).

This time, merging previously fastq files:

For weird strains done with: 

- https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Work_files/mahesh_assemblies_workfolder/Align_reads_assemblies/join_fastq_weird_strains.sh

For *Debaryomyces hansenii* strains done previously for the variant calling, found here:

- PCRduplicates removal: https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Work_files/Only_Debaryomyceshansenii/Variant_calling_4/1_pcrdupl.sh

- Merge files: https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Work_files/Only_Debaryomyceshansenii/Variant_calling_4/2_cat.sh

#### Pipeline for Bowtie2 in pairs:

Found [here](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Work_files/mahesh_assemblies_workfolder/Align_reads_assemblies/Align_reads_assemblies.sh).


#### Results

- Columns: Assemblies

- Rows: Reads

|    |1001 |1002 |1003 |1004 |1005 |1006 |1007 |1008 |1009 |1010 |1011 |1012 |1013 |1014 |1015 |1016 |1019 |	
|----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
|1001|98.16|81.90|96.89|90.76|81.84|11.86|81.14|			
|1002|81.94|97.65|82.04|93.38|96.86|12.84|94.58|		
|1003|97.22|82.04|98.33|90.52|82.37|12.44|81.51|
|1004|86.41|91.04|86.67|96.41|90.39|12.01|89.94|
|1005|80.93|97.45|81.29|93.78|97.62|14.59|95.10|
|1006|12.86|12.17|12.91|12.77|12.31|98.16|12.26|
|1007|81.02|97.07|81.35|94.45|96.20|14.83|97.86|
|1008|81.81|94.95|82.04|93.26|94.75|13.41|94.01|
|1009|78.70|72.89|78.70|78.51|72.97|12.33|72.05|
|1010|9.75 |9.39 |9.76 |9.67 |9.50 |20.05|9.39 |
|1011|57.88|57.70|57.90|59.27|57.77|14.33|57.00|
|1012|13.08|12.51|13.11|13.01|12.61|97.15|12.57|
|1013|80.95|95.36|81.35|92.99|95.12|13.84|94.33|
|1014|93.14|81.79|95.66|92.39|81.46|12.93|81.55|
|1015|81.34|94.52|81.55|92.90|94.47|13.40|93.44|
|1016|95.37|80.83|95.17|89.18|81.02|12.24|80.23|
|1019|80.97|97.48|81.13|93.71|97.58|13.33|94.73|
