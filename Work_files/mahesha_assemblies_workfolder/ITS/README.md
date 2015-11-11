## ITS *Debaryomyces hansenii*

Finding the ribosomal RNA genes 18s - 5.8s - 28s of the assembled strains to get the internal transcribed spacer 1 and 2.

- Ribosomal RNA genes: very conserved regions.
- ITS 1 and 2: very variable regions.

#### Methods

##### Query
Download query from NCBI, one of the longest partial sequences of 18s, the complete 5.8s sequence, and also the longest 28s partial sequence. 

Saved in the folder Query.

##### Database
As a database it was used all the assemblies together in one fasta file, changing the identifiers to have the names of the strain to which belong each contig.

##### Blastn

Two blastn run for each pair query-database.

Output: table with all the necessary information (qseqid sseqid pident length mismatch gapopen qstart qend sstart send evalue bitscore)

	$ blastn -db DeHa_Allassemblies.fasta -query Deha18spart_ITS1_58s_ITS2_28spart.fasta -outfmt "6 std" > ITS1and2_all_deha.fasta

Output: Sequences of the database that matched the query:

	$ blastn -db DeHa_Allassemblies.fasta -query Deha18spart_ITS1_58s_ITS2_28spart.fasta -outfmt "6 sseqid sseq" > ITS1and2_all_deha_sequence.fasta

- Repeat with the rest of query sequences.

##### Sequences

Select sequences that had better hits for each of the strains. 

First test: only using *D. hansenii* sequences as query, probable second test using *Saccharomyces cerevisiae* sequences as query as well. Or some other *Candida* species, to see if I get the same contigs.


##### ClustalW
Run clustalW, multialignment done with all the selected sequences.
Tree also saved in the folder.
