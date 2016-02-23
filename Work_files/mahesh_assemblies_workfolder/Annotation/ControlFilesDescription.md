# Annotation using Maker

## Initial information

### Control files:

The command -CTL will create empty control files in the current directory:

```
/usr/local/maker/bin/maker -CTL
```

3 control files created:

```
merce@dna:/data02/merce/maker$ ls
maker_bopts.ctl  maker_exe.ctl  maker_opts.ctl
```

#### maker_bopts.ctl

Default values: (For now I will leave them like that)

```
#-----BLAST and Exonerate Statistics Thresholds
blast_type=ncbi+ #set to 'ncbi+', 'ncbi' or 'wublast'

pcov_blastn=0.8 #Blastn Percent Coverage Threhold EST-Genome Alignments
pid_blastn=0.85 #Blastn Percent Identity Threshold EST-Genome Aligments
eval_blastn=1e-10 #Blastn eval cutoff
bit_blastn=40 #Blastn bit cutoff
depth_blastn=0 #Blastn depth cutoff (0 to disable cutoff)

pcov_blastx=0.5 #Blastx Percent Coverage Threhold Protein-Genome Alignments
pid_blastx=0.4 #Blastx Percent Identity Threshold Protein-Genome Aligments
eval_blastx=1e-06 #Blastx eval cutoff
bit_blastx=30 #Blastx bit cutoff
depth_blastx=0 #Blastx depth cutoff (0 to disable cutoff)

pcov_tblastx=0.8 #tBlastx Percent Coverage Threhold alt-EST-Genome Alignments
pid_tblastx=0.85 #tBlastx Percent Identity Threshold alt-EST-Genome Aligments
eval_tblastx=1e-10 #tBlastx eval cutoff
bit_tblastx=40 #tBlastx bit cutoff
depth_tblastx=0 #tBlastx depth cutoff (0 to disable cutoff)

pcov_rm_blastx=0.5 #Blastx Percent Coverage Threhold For Transposable Element Masking
pid_rm_blastx=0.4 #Blastx Percent Identity Threshold For Transposbale Element Masking
eval_rm_blastx=1e-06 #Blastx eval cutoff for transposable element masking
bit_rm_blastx=30 #Blastx bit cutoff for transposable element masking

ep_score_limit=20 #Exonerate protein percent of maximal score threshold
en_score_limit=20 #Exonerate nucleotide percent of maximal score threshold
```

#### maker_exe.ctl

Locations not updated, expected for next week (writen 12th of february 2016):

```
#-----Location of Executables Used by MAKER/EVALUATOR
makeblastdb=/usr/bin/makeblastdb #location of NCBI+ makeblastdb executable
blastn=/usr/bin/blastn #location of NCBI+ blastn executable
blastx=/usr/bin/blastx #location of NCBI+ blastx executable
tblastx=/usr/bin/tblastx #location of NCBI+ tblastx executable
formatdb=/usr/bin/formatdb #location of NCBI formatdb executable
blastall=/usr/bin/blastall #location of NCBI blastall executable
xdformat= #location of WUBLAST xdformat executable
blasta= #location of WUBLAST blasta executable
RepeatMasker=/usr/local/maker/bin/../exe/RepeatMasker/RepeatMasker #location of RepeatMasker executable
exonerate=/usr/bin/exonerate #location of exonerate executable

#-----Ab-initio Gene Prediction Algorithms
snap=/usr/local/maker/bin/../exe/snap/snap #location of snap executable
gmhmme3= #location of eukaryotic genemark executable
gmhmmp= #location of prokaryotic genemark executable
augustus= #location of augustus executable
fgenesh= #location of fgenesh executable
tRNAscan-SE= #location of trnascan executable
snoscan= #location of snoscan executable

#-----Other Algorithms
probuild= #location of probuild executable (required for genemark)
```

#### maker_opts.ctl

The file in which more changes can be made:

**Genome always required** on a fasta file:

```
#-----Genome (these are always required)
genome= #genome sequence (fasta file or fasta embeded in GFF3 file)
organism_type=eukaryotic #eukaryotic or prokaryotic. Default is eukaryotic
```

In the case of *Debaryomyces hansenii* not needed to use GFF file, as we only have the one from the reference, and locations may be different in different strains:

```
#-----Re-annotation Using MAKER Derived GFF3
maker_gff= #MAKER derived GFF3 file
est_pass=0 #use ESTs in maker_gff: 1 = yes, 0 = no
altest_pass=0 #use alternate organism ESTs in maker_gff: 1 = yes, 0 = no
protein_pass=0 #use protein alignments in maker_gff: 1 = yes, 0 = no
rm_pass=0 #use repeats in maker_gff: 1 = yes, 0 = no
model_pass=0 #use gene models in maker_gff: 1 = yes, 0 = no
pred_pass=0 #use ab-initio predictions in maker_gff: 1 = yes, 0 = no
other_pass=0 #passthrough anyything else in maker_gff: 1 = yes, 0 = no
```

For this part, use ESTs, assembled mRNAseq and assembled full length cDNAs: (Not sure yet if I should use this feature for *D. hansenii* strains)

```
#-----EST Evidence (for best results provide a file for at least one)
est= #set of ESTs or assembled mRNA-seq in fasta format
altest= #EST/cDNA sequence file in fasta format from an alternate organism
est_gff= #aligned ESTs or mRNA-seq from an external GFF3 file
altest_gff= #aligned ESTs from a closly relate species in GFF3 format
```

The protein file in fasta format should be use as a support from the reference data:

```
#-----Protein Homology Evidence (for best results provide a file for at least one)
protein=  #protein sequence file in fasta format (i.e. from mutiple oransisms)
protein_gff=  #aligned protein homology evidence from an external GFF3 file
```

Will be possible after the request from Tomas Larsson to have it available:

Additional information: Repeats will be masked to stop EST and proteins from aligning to repetitive regions and to keep gene prediction algorithms from being allowed to call exons in those regions. Many repeats encode real proteins (i.e. retro-transposase and others). Because of this gene predictors and aligners are often confused by them (they can falsely be added as exons onto gene calls for example).

In model_org should be put fungi.

```
#-----Repeat Masking (leave values blank to skip repeat masking)
model_org=all #select a model organism for RepBase masking in RepeatMasker
rmlib= #provide an organism specific repeat library in fasta format for RepeatMasker
repeat_protein=/usr/local/maker/data/te_proteins.fasta #provide a fasta file of transposable element proteins for RepeatRunner
rm_gff= #pre-identified repeat elements from an external GFF3 file
prok_rm=0 #forces MAKER to repeatmask prokaryotes (no reason to change this), 1 = yes, 0 = no
softmask=1 #use soft-masking rather than hard-masking in BLAST (i.e. seg and dust filtering)
```

This could be use after having run the first maker analysis on one strain, all these files will be created:

```
#-----Gene Prediction
snaphmm= #SNAP HMM file
gmhmm= #GeneMark HMM file
augustus_species= #Augustus gene prediction species model
fgenesh_par_file= #FGENESH parameter file
pred_gff= #ab-initio predictions from an external GFF3 file
model_gff= #annotated gene models from an external GFF3 file (annotation pass-through)
est2genome=0 #infer gene predictions directly from ESTs, 1 = yes, 0 = no
protein2genome=0 #infer predictions from protein homology, 1 = yes, 0 = no
trna=0 #find tRNAs with tRNAscan, 1 = yes, 0 = no
snoscan_rrna= #rRNA file to have Snoscan find snoRNAs
unmask=0 #also run ab-initio prediction programs on unmasked sequence, 1 = yes, 0 = no
```

GFF lines to add to the MAKER files without having to be annotated by maker itself. For bigger genomes really useful, probably not needed for *D. hansenii*:

```
#-----Other Annotation Feature Types (features MAKER doesn't recognize)
other_gff= #extra features to pass-through to final MAKER generated GFF3 file
```

Leave default values:

```
#-----External Application Behavior Options
alt_peptide=C #amino acid used to replace non-standard amino acids in BLAST databases
cpus=1 #max number of cpus to use in BLAST and RepeatMasker (not for MPI, leave 1 when using MPI)
```

Check again these options for *D.hansenii*:

```
#-----MAKER Behavior Options
max_dna_len=100000 #length for dividing up contigs into chunks (increases/decreases memory usage)
min_contig=1 #skip genome contigs below this length (under 10kb are often useless)
```

If you are annotating a genome with a sparse/fragmented evidence set increasing this value can capture exons missing from your evidence. In very compact genomes decreasing this value can decrease gene merging:
 
```
pred_flank=200 #flank for extending evidence clusters sent to gene predictors
```

Should be set to 1 to get a closer evaluation of all the gene predictions:

```
pred_stats=0 #report AED and QI statistics for all predictions as well as models
```

This option can be used to make super high confidence annotation sets. Setting this option to a value lower than 1 will result in a final annotation set with fewer gene models but they will be better supported by the evidence: 

```
AED_threshold=1 #Maximum Annotation Edit Distance allowed (bound by 0 and 1)
```

Sometimes gene predictors will generate a large number of very short predictions. Because of the noisy nature of some evidence types, namely mRNA-Seq, may of these small predictions will look like they are supported by the evidence and make it into the final annotation set with and AED >1. Setting this option can prevent some of these spurious predictions with spurious evidence support from getting into the final annotation set:

```
min_protein=0 #require at least this many amino acids in predicted proteins
```

When this parameter is set to 0 MAKER will generate a single annotation for each gene that best matches the evidence. When set to 1 MAKER will separate the evidence in each cluster into groups in which all of the evidence could have come from the same transcript. information form each group is then given to the gene finders as hints and the the gene finder is run again on that region of the genome. If the gene finder predicts an alternative transcript it is kept in the final GFF3 output:

```
alt_splice=0 #Take extra steps to try and find alternative splicing, 1 = yes, 0 = no
```

Just if a start and a stop codon needed for all the gene models:

```
always_complete=0 #extra steps to force start and stop codons, 1 = yes, 0 = no
```

This is useful when you are updating a set of legacy annotations in light of new data and don't want to lose the information in column 9 of the legacy gff3 file:

```
map_forward=0 #map names and attributes forward from old GFF3 genes, 1 = yes, 0 = no
```

This is used when you want an annotation set with maximum sensitivity. As a general rule gene finders trained on novel genomes have a tendency to over-predict sometimes quadrupling the number of annotated gene models:

```
keep_preds=0 #Concordance threshold to add unsupported gene prediction (bound by 0 and 1)
```

Quite self-explanatory the last options:

```
split_hit=10000 #length for the splitting of hits (expected max intron size for evidence alignments)
single_exon=0 #consider single exon EST evidence when generating annotations, 1 = yes, 0 = no
single_length=250 #min length required for single exon ESTs if 'single_exon is enabled'
correct_est_fusion=0 #limits use of ESTs in annotation to avoid fusion genes

tries=2 #number of times to try a contig if there is a failure for some reason
clean_try=0 #remove all data from previous run before retrying, 1 = yes, 0 = no
clean_up=0 #removes theVoid directory with individual analysis files, 1 = yes, 0 = no
TMP= #specify a directory other than the system default temporary directory for temporary files
```

### Important information!

Not available alternative codon tables.

Codon usage by *D. hansenii* deviates from the universal genetic code. The **CUG** codon (usually encoding leucine) is used as a codon for serine, which is read by the special, single copy tRNA-Ser (CAG), as already described for 10 species of the genus *Candida*.

