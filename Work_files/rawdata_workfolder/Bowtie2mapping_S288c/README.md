## Mapping of the raw reads using Saccharomyces cerevisiae as a reference
Reference used:
- *Saccharomyces cerevisiae* S288c:
Indexing:
	$ bowtie2-build GCF_000146045.2_R64_genomic.fna reference_index_Sc
Map reads to reference: 
	$ bowtie2 -x reference_index_Sc -1 8_140619_BC47HDACXX_P1260_1001_1.fastq -2 8_140619_BC47HDACXX_P1260_1001_2.fastq -S 1001_BC_DehaSc.sam
	$ bowtie2 -x reference_index_Sc -1 1_140716_AH9BY4ADXX_P1260_1001_1.fastq -2 1_140716_AH9BY4ADXX_P1260_1001_2.fastq -S 1001_AH_DehaSc.sam
Converting to bam and sort:
	$ samtools view -Sb 1001_AH_DehaSc.sam | samtools sort - 1001_AH_DehaSc.bam
Indexing bam file:
	$ samtools index 1001_AH_DehaSc.bam 1001_AH_DehaSc.bai


