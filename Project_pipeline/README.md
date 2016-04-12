## Pipeline to make the project reproducible.

Needed: access to files on DNA server of University of Gothenburg bioinformatics department.

#### Bowtie2 - reads against CBS767

Whole pathway: [bowtie2mapping_CBS767.sh](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Project_pipeline/bowtie2mapping_CBS767.sh).

Run on home folder, to change pathway:

```sed s'~/\/new\/pathway/g' bowtie2mapping_CBS767.sh newfile.sh```

Others run on data02/merce, to change pathway:

```sed s'/\/home\/merce/\/new\/pathway/g' some_script.sh newfile.sh```

#### Remove PCR duplicates and merge Fastq files:

Whole pathway: [merge_fastq.sh](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Project_pipeline/merge_fastq.sh).

#### Bowtie2

Run on /data02/merce/mapping_speciename

If needed, change using sed as shown before.

**Other alignments**

- *S. cerevisiae*: [bowtie2mapping_S288c.sh](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Project_pipeline/bowtie2mapping_S288c.sh).

- *D. fabryi*: [bowtie2mapping_CBS789.sh](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Project_pipeline/bowtie2mapping_CBS789.sh).

- *M. guillermondii*: [bowtie2mapping_ATCC6260.sh](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Project_pipeline/bowtie2mapping_ATCC6260.sh).

#### Vcalling

Run on /data02/merce/deha_vcalling/

If needed, change using sed as shown before.

##### 1. Bowtie2 with merged files from the previous step:

Whole pathway: [bowtie2CBS767_dehamerged.sh](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Project_pipeline/bowtie2CBS767_dehamerged.sh).

##### 2. Pre-Vcalling and Vcalling:

Whole pathway: [preandvcalling.sh](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Project_pipeline/preandvcalling.sh).

It includes: 

- Picard AddOrReplaceGroups

- Local realignment (BAQ) using samtools calmd

- Index of bam files

- File with bam paths for Freebayes cohort

- Freebayes cohort (without indels and with indels)

- Freebayes individual (without indels and with indels)

- Samtools mpileup

- VarScan indels

- VarScan snps

##### 3. Post-Vcalling

Whole pathway: [post_vcalling.sh](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Project_pipeline/post_vcalling.sh).

It includes:

- Change chromosome names of VCF files to match the reference of snpEff

- snpEff using GCA_000006445.2.29 (*D. hansenii*)


