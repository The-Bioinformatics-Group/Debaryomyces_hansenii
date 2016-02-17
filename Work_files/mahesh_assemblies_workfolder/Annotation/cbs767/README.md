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

- 25

	- 60

- AB

	- D9

- B7

	- DF

- BD

	- 94

- DE

	- 65

- EF

	- 9A
