### Post-freebayes


	$ java -jar ~/snpEff/snpEff.jar -v GCA_000006445.2.29 -no-downstream -no-intergenic -no-intron -no-upstream -no-utr Deha_all_snp_indel.vcf > Deha_all_snp_indel_snpEff.vcf

It doesn't work. Error "No chromosome (nr chromosome) found" in every line.

*Solved*

- Check chromosome names in snpEff database:

	$ java -jar ~/snpEff/snpEff.jar -v GCA_000006445.2.29


```
00:00:01	Genome stats :
#-----------------------------------------------
# Genome name                : 'Debaryomyces_hansenii_cbs767'
# Genome version             : 'GCA_000006445.2.29'
# Genome ID                  : 'GCA_000006445.2.29[0]'
# Has protein coding info    : true
# Has Tr. Support Level info : true
# Genes                      : 6713
# Protein coding genes       : 6652
#-----------------------------------------------
# Transcripts                : 6713
# Avg. transcripts per gene  : 1.00
# TSL transcripts            : 0
#-----------------------------------------------
# Checked transcripts        : 
#               AA sequences :   2162 ( 32.50% )
#              DNA sequences :   6272 ( 93.43% )
#-----------------------------------------------
# Protein coding transcripts : 6652
#              Length errors :    213 ( 3.20% )
#  STOP codons in CDS errors :    162 ( 2.44% )
#         START codon errors :    380 ( 5.71% )
#        STOP codon warnings :    167 ( 2.51% )
#              UTR sequences :      0 ( 0.00% )
#               Total Errors :    380 ( 5.71% )
# WARNING                    : No protein coding transcript has UTR
#-----------------------------------------------
# Cds                        : 6740
# Exons                      : 7235
# Exons with sequence        : 7235
# Exons without sequence     : 0
# Avg. exons per transcript  : 1.08
# WARNING                    : No mitochondrion chromosome found
#-----------------------------------------------
# Number of chromosomes      : 7
# Chromosomes                : Format 'chromo_name size codon_table'
#		'F'	2305761	Standard
#		'G'	2051050	Standard
#		'E'	2007515	Standard
#		'CR382136'	1606296	Standard
#		'C'	1587442	Standard
#		'B'	1344482	Standard
#		'CR382133'	1249940	Standard
#-----------------------------------------------
```

Original names:

CR382133.2 (CR382133)

CR382134.2 (B)

CR382135.2 (C)

CR382136.2 (CR382136)

CR382137.2 (E)

CR382138.2 (F)

CR382139.2 (G)

- Change chromosome names on vcf file:


	$ sed 's/CR382133.2/CR382133/' Deha_all_snp_indel.vcf > Deha1chrm.vcf

	$ sed 's/CR382134.2/B/' Deha1chrm.vcf > Deha2chrm.vcf

	$ sed 's/CR382135.2/C/' Deha2chrm.vcf > Deha3chrm.vcf

	$ sed 's/CR382136.2/CR382136/' Deha3chrm.vcf > Deha4chrm.vcf

	$ sed 's/CR382137.2/E/' Deha4chrm.vcf > Deha5chrm.vcf

	$ sed 's/CR382138.2/F/' Deha5chrm.vcf > Deha6chrm.vcf

	$ sed 's/CR382139.2/G/' Deha6chrm.vcf > Deha_finalvcf.vcf


PROBLEM

When running snpEff and SnpSift it doesn't count the different strains genotypes. 

Using vcffilter I could filter them, but still not extract fields to create a table:

	$ ~/vcflib/bin/vcffilter -g "DP > 10" Deha_finalvcf.vcf > Deha_vcffilter10DPg.vcf


#### Counting snps and indels:

Number of snps: ~ 342649

Number of ins: ~ 9753

Number of del: ~ 10266

Number of complex variations: ~ 55128


**Other problem:**

snpEff has Debaryomyces hansenii as standard codon, when it should be the Alternative_Yeast_Nuclear

Solved on snpEff.config file:

```
GCA_000006445.2.29.genome : Debaryomyces_hansenii_cbs767
GCA_000006445.2.29.reference : ftp.ensemblgenomes.org
        GCA_000006445.2.29.CR382133.codonTable : Alternative_Yeast_Nuclear
        GCA_000006445.2.29.B.codonTable : Alternative_Yeast_Nuclear
        GCA_000006445.2.29.C.codonTable : Alternative_Yeast_Nuclear
        GCA_000006445.2.29.CR382136.codonTable : Alternative_Yeast_Nuclear
        GCA_000006445.2.29.E.codonTable : Alternative_Yeast_Nuclear
        GCA_000006445.2.29.F.codonTable : Alternative_Yeast_Nuclear
        GCA_000006445.2.29.G.codonTable : Alternative_Yeast_Nuclear
```
