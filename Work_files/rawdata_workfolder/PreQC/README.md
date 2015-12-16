## PreQC

Checking quality of reads of 1006 and 1012 to prepare for an improved assembly. 

	$ sga preprocess --pe-mode 1 1_140716_AH9BY4ADXX_P1260_1006_1.fastq 1_140716_AH9BY4ADXX_P1260_1006_2.fastq > 1006_preqc.fastq

	$ sga index -a ropebwt --no-reverse -t 8 1006_preqc.fastq

	$ sga preqc -t 8 1006_preqc.fastq > 1006_ah.preqc

	$ sga-preqc-report.py 1006_bc.preqc /home/tomasl/preqc_examples/*.preqc 

Repeat with both libraries of each of the strains.

Results found in the pdfs of this same folder.

#### Filter PCR duplicates

Using [filterPCRdupl.pl](https://github.com/linneas/condetri/blob/master/filterPCRdupl.pl)

	$ ./filterPCRdupl.pl -fastq1=1_140716_AH9BY4ADXX_P1260_1006_1.fastq -fastq2=1_140716_AH9BY4ADXX_P1260_1006_2.fastq -prefix=1006_AH

#### Again preQC

	$ sga preprocess --pe-mode 1 1006_AH_uniq1.fastq 1006_AH_uniq2.fastq > 1006_AH.fastq

	$ sga index -a ropebwt --no-reverse -t 8 1006_AH.fastq

	$ sga preqc -t 8 1006_AH.fastq > 1006_AH.preqc

	$ sga-preqc-report.py 1006_AH.preqc /home/tomasl/preqc_examples/*.preqc

Repeat with both libraries again for both strains.

Results found in this same folder (_second_run.pdf)
