## Pipeline to make the project reproducible.

Needed: access to files on DNA server of University of Gothenburg bioinformatics department.

If run on home folder, to change pathway:

```sed s'~/\/new\/pathway/g' some_script.sh newfile.sh```

(bowtie2mapping_CBS767.sh and kraken.sh)

Others run on data02/merce, to change pathway:

```sed s'/\/data02\/merce/\/new\/pathway/g' some_script.sh newfile.sh```

(the rest)

#### Kraken - contamination check and specie identification

Pipeline for both default database and custom database: [kraken.sh](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Project_pipeline/kraken.sh).

#### Bowtie2 - reads against CBS767

Whole pipeline: [bowtie2mapping_CBS767.sh](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Project_pipeline/bowtie2mapping_CBS767.sh).

#### Remove PCR duplicates and merge Fastq files:

Whole pipeline: [merge_fastq.sh](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Project_pipeline/merge_fastq.sh).

#### Bowtie2

##### Pairwise comparison between all strains: All reads against all alignments

Whole pipeline: [bowtie2mapping_readsAssemblies.sh](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Project_pipeline/bowtie2mapping_readsAssemblies.sh).

##### Other alignments

- *S. cerevisiae*: [bowtie2mapping_S288c.sh](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Project_pipeline/bowtie2mapping_S288c.sh).

- *D. fabryi*: [bowtie2mapping_CBS789.sh](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Project_pipeline/bowtie2mapping_CBS789.sh).

- *M. guillermondii*: [bowtie2mapping_ATCC6260.sh](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Project_pipeline/bowtie2mapping_ATCC6260.sh).

#### Vcalling

##### 1. Bowtie2 with merged files from the previous step:

Whole pipeline: [bowtie2CBS767_dehamerged.sh](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Project_pipeline/bowtie2CBS767_dehamerged.sh).

##### 2. Pre-Vcalling and Vcalling:

Whole pipeline: [preandvcalling.sh](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Project_pipeline/preandvcalling.sh).

It includes: 

- Picard AddOrReplaceReadGroups

- Local realignment (BAQ) using samtools calmd

- Index of bam files

- File with bam paths for Freebayes cohort

- Freebayes cohort (without indels and with indels)

- Freebayes individual (without indels and with indels)

- Samtools mpileup

- VarScan indels

- VarScan snps

##### 3. Post-Vcalling

Whole pipeline: [post_vcalling.sh](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Project_pipeline/post_vcalling.sh).

It includes:

- Change chromosome names of VCF files to match the reference of snpEff

- snpEff using GCA_000006445.2.29 (*D. hansenii*)


