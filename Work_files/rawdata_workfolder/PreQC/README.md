## PreQC

Checking quality of reads of 1006 and 1012 to prepare for an improved assembly. 

	$ sga preprocess --pe-mode 1 1_140716_AH9BY4ADXX_P1260_1006_1.fastq 1_140716_AH9BY4ADXX_P1260_1006_2.fastq > 1006_preqc.fastq

	$ sga index -a ropebwt --no-reverse -t 8 1006_preqc.fastq

	$ sga preqc -t 8 1006_preqc.fastq > 1006_ah.preqc

	$ 

Repeat with both libraries of each of the strains.

