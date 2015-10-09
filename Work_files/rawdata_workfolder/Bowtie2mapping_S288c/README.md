## Mapping of the raw reads using Saccharomyces cerevisiae as a reference

Reference used:
*Saccharomyces cerevisiae* S288c:
Indexing:
	$ bowtie2-build 
	$ bowtie2 -x reference_index_Sc -1 8_140619_BC47HDACXX_P1260_1001_1.fastq -2 8_140619_BC47HDACXX_P1260_1001_2.fastq -S 1001_BC_DehaSc.sam
	$ bowtie2 -x reference_index_Sc -1 1_140716_AH9BY4ADXX_P1260_1001_1.fastq -2 1_140716_AH9BY4ADXX_P1260_1001_2.fastq -S 1001_AH_DehaSc.sam
