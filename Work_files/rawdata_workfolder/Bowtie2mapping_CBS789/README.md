# Bowtie2 using CBS789 as reference
Mapping the raw reads to the reference CBS789 (*Debaryomyces fabryi*).

## Mapping
Index of the reference genome sequence CBS789:

	$ bowtie2-build GCA_001447935.1_debFab1.0_genomic.fna Reference_DebFab

Alignment done in weird strains and 2 control strains of *Debaryomyces hansenii*

[pipeline](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Work_files/rawdata_workfolder/Bowtie2mapping_CBS789/mapping_debfab_deha.sh)

## Results

### Overall alignment rate (%) - merged libraries

| Strain |   %   | 
|--------|-------|
| 1001   | 12.97 | 
| 1002   | 13.87 | 
| 1003   | 13.68 |       
| 1004   | 12.49 |       
| 1005   | 12.79 |    
| 1006   | 38.38 | 
| 1007   | 13.35 |       
| 1008   | 13.77 |  
| 1009   | 12.69 |
| 1010   | 22.20 |
| 1011   | 13.20 |
| 1012   | 39.56 |
| 1013   | 13.48 |
| 1014   | 12.97 |
| 1015   | 13.43 |
| 1016   | 14.07 |
| 1019   | 12.65 |

### Overall alignment rate (%) - libraries separated

| Strain | AH    | BC    |
|--------|-------|-------|
| 1001   | 13.02 | 13.05 |
| 1002   | 14.07 | 14.04 |
| 1003   |       |	 |
| 1004   |       |       |
| 1005   |       |       |
| 1006   | 38.44 | 38.51 |
| 1007   |       |       |
| 1008   |       |       |
| 1009   | 12.85 | 12.87 |
| 1010   | 22.33 | 22.30 |
| 1011   | 13.39 | 13.41 |
| 1012   | 39.79 | 39.65 |
| 1013   |       |       |
| 1014   |       |       |
| 1015   |       |       |
| 1016   |       |       |
| 1019   |       |       |

1001 = CBS767 (*D. hansenii* reference)

1006, 1010 and 1012, not *D. hanenii*

1009 and 1011 hybrids

[Complete table with all the alternative names for every strain](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Work_files/Strains.md)
