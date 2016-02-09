## Mapping of the raw reads using Meyerozyma guillermondii as a reference
Reference used:

- *Meyerozyma guilliermondii* ATCC 6260:

Indexing:

	$ bowtie2-build GCA_000149425.1_ASM14942v1_genomic.fna reference_index_Mg

Map reads to reference: 

	$ bowtie2 -x reference_index_Mg -1 8_140619_BC47HDACXX_P1260_1001_1.fastq -2 8_140619_BC47HDACXX_P1260_1001_2.fastq -S 1001_BC_DehaMg.sam

	$ bowtie2 -x reference_index_Mg -1 1_140716_AH9BY4ADXX_P1260_1001_1.fastq -2 1_140716_AH9BY4ADXX_P1260_1001_2.fastq -S 1001_AH_DehaMg.sam

Converting to bam and sort:

	$ samtools view -Sb 1001_AH_DehaMg.sam | samtools sort - 1001_AH_DehaMg.bam

Indexing bam file:

	$ samtools index 1001_AH_DehaMg.bam 1001_AH_DehaMg.bai

## Results

### Overall alignment rate (%)

| Strain | AH    | BC    |
|--------|-------|-------|
| 1001   |  2.16 |  2.12 |
| 1002   |  3.22 |  3.20 |
| 1003   |  2.73 |  2.69 |
| 1004   |  2.05 |  2.05 |
| 1005   |  3.12 |  3.09 |
| 1006   |  2.54 |  2.51 |
| 1007   |  3.99 |  3.93 |
| 1008   |  3.61 |  3.54 |
| 1009   |  2.48 |  2.47 |
| 1010   |  2.88 |  2.77 |
| 1011   |  3.83 |  3.80 |
| 1012   |  2.94 |  2.91 |
| 1013   |  3.92 |  3.88 |
| 1014   |  2.35 |  2.33 |
| 1015   |  3.54 |  3.46 |
| 1016   |  3.06 |  3.03 |
| 1017   |  4.12 |  4.18 |
| 1018   |  2.81 |  2.80 |
| 1019   |  2.61 |  2.62 |

1017 and 1018 known to be *S. cerevisiae*.

1001 CBS767 (*D. hansenii* reference)

[Complete table with all the alternative names for every strain](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Work_files/Strains.md)

