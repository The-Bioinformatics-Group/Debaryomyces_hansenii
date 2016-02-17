## Maker output

Inside the folder of the analysis a new folder is created:

```
GCA_000006445.2_ASM644v2_genomic.maker.output
```

Inside that folder we find:

```
merce@dna:/data02/merce/maker/cbs767/test2/GCA_000006445.2_ASM644v2_genomic.maker.output$ ls
GCA_000006445.2_ASM644v2_genomic_datastore                   maker_exe.log
GCA_000006445.2_ASM644v2_genomic.db                          maker_opts.log
GCA_000006445.2_ASM644v2_genomic_master_datastore_index.log  mpi_blastdb
maker_bopts.log                                              seen.dbm
```

#### Files

**GCA_000006445.2_ASM644v2_genomic.db**

binary file.

**GCA_000006445.2_ASM644v2_genomic_master_datastore_index.log** 

With this file we can check if it has been an error on the annotation process.

If we get the STARTED - FINISHED message, everything went fine.

```
CR382133.2      GCA_000006445.2_ASM644v2_genomic_datastore/AB/D9/CR382133.2/    STARTED
CR382133.2      GCA_000006445.2_ASM644v2_genomic_datastore/AB/D9/CR382133.2/    FINISHED
CR382134.2      GCA_000006445.2_ASM644v2_genomic_datastore/B7/DF/CR382134.2/    STARTED
CR382134.2      GCA_000006445.2_ASM644v2_genomic_datastore/B7/DF/CR382134.2/    FINISHED
CR382135.2      GCA_000006445.2_ASM644v2_genomic_datastore/1C/EB/CR382135.2/    STARTED
CR382135.2      GCA_000006445.2_ASM644v2_genomic_datastore/1C/EB/CR382135.2/    FINISHED
CR382136.2      GCA_000006445.2_ASM644v2_genomic_datastore/BD/94/CR382136.2/    STARTED
CR382136.2      GCA_000006445.2_ASM644v2_genomic_datastore/BD/94/CR382136.2/    FINISHED
CR382137.2      GCA_000006445.2_ASM644v2_genomic_datastore/EF/9A/CR382137.2/    STARTED
CR382137.2      GCA_000006445.2_ASM644v2_genomic_datastore/EF/9A/CR382137.2/    FINISHED
CR382138.2      GCA_000006445.2_ASM644v2_genomic_datastore/DE/65/CR382138.2/    STARTED
CR382138.2      GCA_000006445.2_ASM644v2_genomic_datastore/DE/65/CR382138.2/    FINISHED
CR382139.2      GCA_000006445.2_ASM644v2_genomic_datastore/25/60/CR382139.2/    STARTED
CR382139.2      GCA_000006445.2_ASM644v2_genomic_datastore/25/60/CR382139.2/    FINISHED
```

Other possible outcomes:

```
FAILED - indicates a failed run on this contig, MAKER will retry these
RETRY - indicates that MAKER is retrying a contig that failed
SKIPPED_SMALL - indicates the contig was too short to annotate 
DIED_SKIPPED_PERMANENT - indicates a failed contig that MAKER will not attempt to retry
```

**seen.dbm**

Empty file.

**maker_bopts.log, maker_exe.log and maker_opts.log**

Are just copies of the control files used for the current analysis.

#### Folders

**GCA_000006445.2_ASM644v2_genomic_datastore**

```
merce@dna:/data02/merce/maker/cbs767/test2/GCA_000006445.2_ASM644v2_genomic.maker.output/GCA_000006445.2_ASM644v2_genomic_datastore$ ls
1C  25  AB  B7  BD  DE  EF
```

- 1C

	- EB

		- CR382135.2

			```
			CR382135%2E2.gff  run.log  theVoid.CR382135.2
			```

			- CR382135%2E2.gff: gff annotation file for that contig.

			- run.log: log file of the analysis of that contig.

			- theVoid.CR382135.2

				contains raw output files from all the programs MAKER runs (Blast, SNAP, RepeatMasker, etc.). You can usually ignore this directory and its contents. 

				```
				0                                 CR382135%2E2.14.pred.raw.section  CR382135%2E2.6.raw.section       evidence_6.gff
				1                                 CR382135%2E2.14.raw.section       CR382135%2E2.7-8.raw.section     evidence_7.gff
				CR382135%2E2.0-1.raw.section      CR382135%2E2.1.final.section      CR382135%2E2.7.final.section     evidence_8.gff
				CR382135%2E2.0.final.section      CR382135%2E2.1.pred.raw.section   CR382135%2E2.7.pred.raw.section  evidence_9.gff
				CR382135%2E2.0.pred.raw.section   CR382135%2E2.1.raw.section        CR382135%2E2.7.raw.section       query.fasta
				CR382135%2E2.0.raw.section        CR382135%2E2.2-3.raw.section      CR382135%2E2.8-9.raw.section     query.masked.fasta
				CR382135%2E2.10-11.raw.section    CR382135%2E2.2.final.section      CR382135%2E2.8.final.section     query.masked.fasta.index
				CR382135%2E2.10.final.section     CR382135%2E2.2.pred.raw.section   CR382135%2E2.8.pred.raw.section  query.masked.gff
				CR382135%2E2.10.pred.raw.section  CR382135%2E2.2.raw.section        CR382135%2E2.8.raw.section       run.log.child.0
				CR382135%2E2.10.raw.section       CR382135%2E2.3-4.raw.section      CR382135%2E2.9-10.raw.section    run.log.child.1
				CR382135%2E2.11-12.raw.section    CR382135%2E2.3.final.section      CR382135%2E2.9.final.section     run.log.child.10
				CR382135%2E2.11.final.section     CR382135%2E2.3.pred.raw.section   CR382135%2E2.9.pred.raw.section  run.log.child.11
				CR382135%2E2.11.pred.raw.section  CR382135%2E2.3.raw.section        CR382135%2E2.9.raw.section       run.log.child.12
				CR382135%2E2.11.raw.section       CR382135%2E2.4-5.raw.section      evidence_0.gff                   run.log.child.13
				CR382135%2E2.12-13.raw.section    CR382135%2E2.4.final.section      evidence_10.gff                  run.log.child.14
				CR382135%2E2.12.final.section     CR382135%2E2.4.pred.raw.section   evidence_11.gff                  run.log.child.2
				CR382135%2E2.12.pred.raw.section  CR382135%2E2.4.raw.section        evidence_12.gff                  run.log.child.3
				CR382135%2E2.1-2.raw.section      CR382135%2E2.5-6.raw.section      evidence_13.gff                  run.log.child.4
				CR382135%2E2.12.raw.section       CR382135%2E2.5.final.section      evidence_14.gff                  run.log.child.5
				CR382135%2E2.13-14.raw.section    CR382135%2E2.5.pred.raw.section   evidence_1.gff                   run.log.child.6
				CR382135%2E2.13.final.section     CR382135%2E2.5.raw.section        evidence_2.gff                   run.log.child.7
				CR382135%2E2.13.pred.raw.section  CR382135%2E2.6-7.raw.section      evidence_3.gff                   run.log.child.8
				CR382135%2E2.13.raw.section       CR382135%2E2.6.final.section      evidence_4.gff                   run.log.child.9
				CR382135%2E2.14.final.section     CR382135%2E2.6.pred.raw.section   evidence_5.gff
				```

					- 0

						```
						CR382135%2E2.0.fungi.rb.out
						CR382135%2E2.0.GCF_000006445%2E2_ASM644v2_protein%2Efaa.blastx
						CR382135%2E2.0.GCF_000006445%2E2_ASM644v2_rna%2Efna.blastn
						CR382135%2E2.0.te_proteins%2Efasta.repeatrunner
						CR382135%2E2.1.fungi.rb.out
						CR382135%2E2.1.GCF_000006445%2E2_ASM644v2_protein%2Efaa.blastx
						CR382135%2E2.1.GCF_000006445%2E2_ASM644v2_rna%2Efna.blastn
						CR382135%2E2.1.te_proteins%2Efasta.repeatrunner
						```
						
						10 repetitions of the files. (0, 1, 2, 3, 4, 5, 6, 7, 8, 9)


					- 1
	
						Repetitions continue until 14 (total of 15).

- 25

	- 60

		- CR382139.2

			```
			CR382139%2E2.gff  run.log  theVoid.CR382139.2
			```

			- CR382139%2E2.gff: gff annotation file for that contig.

			- run.log: log file of the analysis of that contig.

			- theVoid.CR382139.2

- AB

	- D9

		- CR382133.2

			```
			CR382133%2E2.gff  run.log  theVoid.CR382133.2
			```

			- CR382133%2E2.gff: gff annotation file for that contig.

			- run.log: log file of the analysis of that contig.

			- theVoid.CR382133.2

- B7

	- DF

		- CR382134.2

			```
			CR382134%2E2.gff  run.log  theVoid.CR382134.2
			```

			- CR382134%2E2.gff: gff annotation file for that contig.

			- run.log: log file of the analysis of that contig.

			- theVoid.CR382134.2

- BD

	- 94

		- CR382136.2

			```
			CR382136%2E2.gff  run.log  theVoid.CR382136.2
			```

			- CR382136%2E2.gff: gff annotation file for that contig.

			- run.log: log file of the analysis of that contig.

			- theVoid.CR382136.2

- DE

	- 65

		- CR382138.2

			```
			CR382138%2E2.gff  run.log  theVoid.CR382138.2
			```

			- CR382138%2E2.gff: gff annotation file for that contig.

			- run.log: log file of the analysis of that contig.

			- theVoid.CR382138.2


- EF

	- 9A

		- CR382137.2

			```
			CR382137%2E2.gff  run.log  theVoid.CR382137.2
			```

			- CR382137%2E2.gff: gff annotation file for that contig.

			- run.log: log file of the analysis of that contig.

			- theVoid.CR382137.2

**mpi_blastdb**

```
merce@dna:/data02/merce/maker/cbs767/test2/GCA_000006445.2_ASM644v2_genomic.maker.output/mpi_blastdb$ ls
GCA_000006445%2E2_ASM644v2_genomic%2Efna.mpi.1   GCF_000006445%2E2_ASM644v2_rna%2Efna.mpi.10
GCF_000006445%2E2_ASM644v2_protein%2Efaa.mpi.10  te_proteins%2Efasta.mpi.10
```

Contains all the references used and indexed:

- GCA_000006445%2E2_ASM644v2_genomic%2Efna.mpi.1

	```
	GCA_000006445%2E2_ASM644v2_genomic%2Efna.mpi.1.0  GCA_000006445%2E2_ASM644v2_genomic%2Efna.mpi.1.0.index
	``` 

- GCF_000006445%2E2_ASM644v2_protein%2Efaa.mpi.10

	```
	GCF_000006445%2E2_ASM644v2_protein%2Efaa.mpi.10.0        GCF_000006445%2E2_ASM644v2_protein%2Efaa.mpi.10.5
	GCF_000006445%2E2_ASM644v2_protein%2Efaa.mpi.10.0.index  GCF_000006445%2E2_ASM644v2_protein%2Efaa.mpi.10.5.index
	GCF_000006445%2E2_ASM644v2_protein%2Efaa.mpi.10.1        GCF_000006445%2E2_ASM644v2_protein%2Efaa.mpi.10.6
	GCF_000006445%2E2_ASM644v2_protein%2Efaa.mpi.10.1.index  GCF_000006445%2E2_ASM644v2_protein%2Efaa.mpi.10.6.index
	GCF_000006445%2E2_ASM644v2_protein%2Efaa.mpi.10.2        GCF_000006445%2E2_ASM644v2_protein%2Efaa.mpi.10.7
	GCF_000006445%2E2_ASM644v2_protein%2Efaa.mpi.10.2.index  GCF_000006445%2E2_ASM644v2_protein%2Efaa.mpi.10.7.index
	GCF_000006445%2E2_ASM644v2_protein%2Efaa.mpi.10.3        GCF_000006445%2E2_ASM644v2_protein%2Efaa.mpi.10.8
	GCF_000006445%2E2_ASM644v2_protein%2Efaa.mpi.10.3.index  GCF_000006445%2E2_ASM644v2_protein%2Efaa.mpi.10.8.index
	GCF_000006445%2E2_ASM644v2_protein%2Efaa.mpi.10.4        GCF_000006445%2E2_ASM644v2_protein%2Efaa.mpi.10.9
	GCF_000006445%2E2_ASM644v2_protein%2Efaa.mpi.10.4.index  GCF_000006445%2E2_ASM644v2_protein%2Efaa.mpi.10.9.index
	```

- GCF_000006445%2E2_ASM644v2_rna%2Efna.mpi.10

	```
	GCF_000006445%2E2_ASM644v2_rna%2Efna.mpi.10.0        GCF_000006445%2E2_ASM644v2_rna%2Efna.mpi.10.5
	GCF_000006445%2E2_ASM644v2_rna%2Efna.mpi.10.0.index  GCF_000006445%2E2_ASM644v2_rna%2Efna.mpi.10.5.index
	GCF_000006445%2E2_ASM644v2_rna%2Efna.mpi.10.1        GCF_000006445%2E2_ASM644v2_rna%2Efna.mpi.10.6
	GCF_000006445%2E2_ASM644v2_rna%2Efna.mpi.10.1.index  GCF_000006445%2E2_ASM644v2_rna%2Efna.mpi.10.6.index
	GCF_000006445%2E2_ASM644v2_rna%2Efna.mpi.10.2        GCF_000006445%2E2_ASM644v2_rna%2Efna.mpi.10.7
	GCF_000006445%2E2_ASM644v2_rna%2Efna.mpi.10.2.index  GCF_000006445%2E2_ASM644v2_rna%2Efna.mpi.10.7.index
	GCF_000006445%2E2_ASM644v2_rna%2Efna.mpi.10.3        GCF_000006445%2E2_ASM644v2_rna%2Efna.mpi.10.8
	GCF_000006445%2E2_ASM644v2_rna%2Efna.mpi.10.3.index  GCF_000006445%2E2_ASM644v2_rna%2Efna.mpi.10.8.index
	GCF_000006445%2E2_ASM644v2_rna%2Efna.mpi.10.4        GCF_000006445%2E2_ASM644v2_rna%2Efna.mpi.10.9
	GCF_000006445%2E2_ASM644v2_rna%2Efna.mpi.10.4.index  GCF_000006445%2E2_ASM644v2_rna%2Efna.mpi.10.9.index
	```

- te_proteins%2Efasta.mpi.10

	```
	te_proteins%2Efasta.mpi.10.0        te_proteins%2Efasta.mpi.10.2.index  te_proteins%2Efasta.mpi.10.5        te_proteins%2Efasta.mpi.10.7.index
	te_proteins%2Efasta.mpi.10.0.index  te_proteins%2Efasta.mpi.10.3        te_proteins%2Efasta.mpi.10.5.index  te_proteins%2Efasta.mpi.10.8
	te_proteins%2Efasta.mpi.10.1        te_proteins%2Efasta.mpi.10.3.index  te_proteins%2Efasta.mpi.10.6        te_proteins%2Efasta.mpi.10.8.index
	te_proteins%2Efasta.mpi.10.1.index  te_proteins%2Efasta.mpi.10.4        te_proteins%2Efasta.mpi.10.6.index  te_proteins%2Efasta.mpi.10.9
	te_proteins%2Efasta.mpi.10.2        te_proteins%2Efasta.mpi.10.4.index  te_proteins%2Efasta.mpi.10.7        te_proteins%2Efasta.mpi.10.9.index
	```
