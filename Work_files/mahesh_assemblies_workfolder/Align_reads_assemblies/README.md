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
|1001|98.16|81.90|96.89|90.76|81.84|11.86|81.14|83.16|90.45|6.24 |64.80|10.92|83.79|95.40|82.48|97.20|82.27|			
|1002|81.94|97.65|82.04|93.38|96.86|12.84|94.58|95.10|78.21|6.79 |62.61|12.78|96.54|82.51|95.94|82.16|97.36|		
|1003|97.22|82.04|98.33|90.52|82.37|12.44|81.51|83.31|88.87|6.45 |62.63|12.14|83.50|95.99|82.82|97.18|82.56|
|1004|86.41|91.04|86.67|96.41|90.39|12.01|89.94|89.88|82.46|6.61 |62.27|11.78|91.46|87.17|90.24|87.02|91.13|
|1005|80.93|97.45|81.29|93.78|97.62|14.59|95.10|95.68|76.19|7.16 |60.41|13.73|97.01|81.35|96.45|81.31|97.73|
|1006|12.86|12.17|12.91|12.77|12.31|98.16|12.26|12.93|12.24|18.38|11.62|97.77|12.34|12.88|12.96|12.94|12.30|
|1007|81.02|97.07|81.35|94.45|96.20|14.83|97.86|95.90|76.85|6.75 |62.36|13.69|97.22|81.55|96.44|81.51|96.93|
|1008|81.81|94.95|82.04|93.26|94.75|13.41|94.01|97.33|78.34|6.66 |63.68|12.82|96.07|82.13|97.01|82.73|95.02|
|1009|78.70|72.89|78.70|78.51|72.97|12.33|72.05|73.43|91.56|6.57 |76.37|12.31|74.19|79.32|73.60|79.06|73.19|
|1010|9.75 |9.39 |9.76 |9.67 |9.50 |20.05|9.39 |9.92 |7.72 |93.78|7.79 |20.11|9.64 |9.60 |9.74 |10.28|9.57 |
|1011|57.88|57.70|57.90|59.27|57.77|14.33|57.00|58.18|71.38|6.83 |85.94|14.39|58.54|58.07|58.24|58.20|58.02|
|1012|13.08|12.51|13.11|13.01|12.61|97.15|12.57|13.25|12.55|18.88|12.00|97.97|12.64|13.04|13.28|13.19|12.62|
|1013|80.95|95.36|81.35|92.99|95.12|13.84|94.33|95.30|76.04|6.75 |60.52|13.54|98.17|81.12|95.98|82.04|95.47|
|1014|93.14|81.79|95.66|92.39|81.46|12.93|81.55|81.59|91.12|6.19 |63.64|11.83|85.00|97.96|81.70|95.91|82.01|
|1015|81.34|94.52|81.55|92.90|94.47|13.40|93.44|96.76|78.30|6.69 |63.43|12.66|96.60|81.39|97.96|82.84|94.87|
|1016|95.37|80.83|95.17|89.18|81.02|12.24|80.23|82.53|87.45|6.68 |62.06|12.18|82.55|93.91|82.11|98.29|81.18|
|1019|80.97|97.48|81.13|93.71|97.58|13.33|94.73|95.39|76.04|7.19 |58.93|13.32|96.92|81.48|96.38|81.25|98.18|
