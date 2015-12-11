# Check assemblies

### Create reference indexes from each assembly

	$ bowtie2-build P1206_1001_preliminary_assembly.fasta 1001

		- Repeat with all the assemblies.

### Map reads to its own assembly

	$ bowtie2 -x 1001 -1 1_140716_AH9BY4ADXX_P1260_1001_1.fastq -2 1_140716_AH9BY4ADXX_P1260_1001_2.fastq -S 1001_AHreads_check.sam

	$ bowtie2 -x 1001 -1 8_140619_BC47HDACXX_P1260_1001_1.fastq -2 8_140619_BC47HDACXX_P1260_1001_2.fastq -S 1001_BCreads_check.sam

		- Repeat with both sets of reads of each strain.


