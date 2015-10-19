# Analysis of contamination of the assemblies

## Kraken

### Database
Standard database build and saved in dna server: `/data01/tomas/kraken_dbs/standardkraken_20151015` using the building command:

	$ kraken-build --standard --db standardkraken_20151015

- Possible to run the process with multiple threads using `--threads NUM`

The database contains NCBI taxonomic information, as well as the complete genomes in RefSeq for the bacterial, archaeal, and viral domains.

### Run classification

Contamination analysis run to the raw reads in fastq format:

	$ kraken --threads 24 --db /data01/tomas/kraken_dbs/standardkraken_20151015 --fasta-input P1260_1001_preliminary_assembly.fasta > tests_kraken/1001_stdkraken.kraken
 
 - Repeat with the rest of the fasta files of the strains (1 to 19).

### Results

General first result, percentaje of contaminated sequences.

- **Classified sequences:** Found in the kraken standard database, sequences matching bacterial, archaeal or viral domains.

- **Unclassified sequences:** Not found in the standard database. Not archaeal, bacterial or viral domain. Before future analysis we could assume that the rest would be sequences of our specie. 

| fasta  | Total sequences | Classified sequences | Unclassified sequences |
|--------|-----------------|----------------------|------------------------| 
| 1001	 |	840        |	69 (8.21%)        |	771 (91.79%)	   |	
| 1002   |  	804        |	80 (9.95%)        |	724 (90.05%)       |
| 1003   |  	
| 1004   | 
| 1005   | 
| 1006   | 
| 1007   |  
| 1008   |  
| 1009   |  
| 1010   |  
| 1011   |  
| 1012   |  
| 1013   |
| 1014   | 
| 1015   |  
| 1016   |  
| 1017   |  
| 1018   | 
| 1019   |  

[Complete table with all the alternative names for every strain](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Work_files/Strains.md)

