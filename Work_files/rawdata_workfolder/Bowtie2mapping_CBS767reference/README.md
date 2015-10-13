# Bowtie2 using CBS767 as reference
Mapping the raw reads to the reference CBS767.

## Mapping
Index of the reference genome sequence CBS767:

	$ bowtie2-build GCA_000006445.2_ASM644v2_genomic.fna Reference_index_Deha

Map reads to reference:

	$ bowtie2 -x Reference_index_Deha -1 1_140716_AH9BY4ADXX_P1260_1001_1.fastq -2 1_140716_AH9BY4ADXX_P1260_1001_2.fastq -S 1001_pairedendalignment_DehaAH.sam

Samtools to convert sam to bam and sort the bam file:

	$ samtools view -Sb 1001_pairedendalignemnt_DehaAH.sam | samtools sort - 1001_pea_DehaAH_sorted.bam

Index the bam file:

	$ samtools index 1001_pea_DehaAH_sorted.bam 1001_pea_DehaAH_sorted.bai

Repeat with all the sequences, using both sets (AH and BC) for each strain (1001 - 1019).

## Results

### Overall alignment rate (%)

| Strain | AH    | BC    |
|--------|-------|-------|
| 1001   | 79.02 | 78.83 |
| 1002   | 90.26 | 89.92 |
| 1003   | 77.46 | 77.38 |
| 1004   | 85.48 | 85.85 |
| 1005   | 87.30 | 87.29 |
| 1006   | 8.68  | 8.76  |
| 1007   | 87.61 | 87.48 |
| 1008   | 89.23 | 89.00 |
| 1009   | 68.99 | 68.94 |
| 1010   | 5.71  | 5.73  |
| 1011   | 51.41 | 51.11 |
| 1012   | 8.98  | 8.96  |
| 1013   | 86.48 | 86.45 |
| 1014   | 78.13 | 77.92 |
| 1015   | 88.65 | 88.47 |
| 1016   | 75.98 | 75.87 |
| 1017   | 0.08  | 0.09  |
| 1018   | 0.08  | 0.08  |
| 1019   | 87.51 | 87.94 |

Strain information in a pdf.

### Coverage
- Visualized using IGV

- Bedtools: create tables with coverage:

	$ genomeCoverageBed -bga -ibam 1001_pea_DehaAH_sorted.bam | sort -n -r -k4 > genomecoverage1001AH

	(-bga: include 0 coverage regions, sort -n (numerically), -r (reverse), -k4 (by column 4)).

	- Repeat with all the bam files obtained in the previous results.

- Divide the coverage data per chromosomes, to make it easier to visualize:

	$ grep -e"CR382133.2" genomecoverageAH > CR382133.2_coverage1001AH

	- Repeat with each chromosome 33 to 39 and in all the coverage files.

- Taking a look at the principal results:

	$ head -n 100 CR382133.2* > head100_CR382133.2_all

	To see the regions with better coverage in all the strains.

	$ tail -n 100 CR382133.2* > tail100_CR382133.2_all

	To see the regions with lowest coverage in all the strains.

	- Repeat with the 7 chromosomes.
	

