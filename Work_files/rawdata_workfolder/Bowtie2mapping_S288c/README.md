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

## Results

### Overall alignment rate (%)

| Strain | AH    | BC    |
|--------|-------|-------|
| 1001   |  1.53 |  1.49 |
| 1002   |  2.25 |  2.20 |
| 1003   |  1.77 |  1.73 |
| 1004   |  1.17 |  1.14 |
| 1005   |  1.42 |  1.39 |
| 1006   |  1.74 |  1.70 |
| 1007   |  2.45 |  2.39 |
| 1008   |  2.61 |  2.55 |
| 1009   |  1.70 |  1.69 |
| 1010   |  2.06 |  1.96 |
| 1011   |  2.55 |  2.52 |
| 1012   |  2.12 |  2.08 |
| 1013   |  2.47 |  2.42 |
| 1014   |  1.65 |  1.62 |
| 1015   |  2.48 |  2.40 |
| 1016   |  2.10 |  2.07 |
| 1017   | 95.75 | 95.59 |
| 1018   | 96.10 | 95.91 |
| 1019   |  1.09 |  1.08 |

1017 and 1018 known to be *S. cerevisiae*.

1001 CBS767 (*D. hansenii* reference)

[Complete table with all the alternative names for every strain](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Work_files/Strains.md)
