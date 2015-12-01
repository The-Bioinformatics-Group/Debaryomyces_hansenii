### ITS regions

#### BLAST

##### Database

Using cat, merge of all assemblies in one fasta.

	$ makeblastdb -in Allassemblies.fasta -dbtype nucl -parse-seqids

##### Queries

###### *Debaryomyces hansenii*

I tried to search for the most complete sequences of the whole 18s - ITS1 - 5.8s - ITS2 - 28s sequence on NCBI:

Partial sequence of 18s:

`gi|5738918|dbj|AB030914.1| Debaryomyces hansenii gene for 18S rRNA, partial sequence, strain:IEY3`

Partial sequence of 18s, complete ITS1, complete 5.8s, complete ITS2, partial 28s:

`gi|124303237|gb|EF192224.1| Debaryomyces hansenii 18S ribosomal RNA gene, partial sequence; internal transcribed spacer 1, 5.8S ribosomal RNA gene, and internal transcribed spacer 2, complete sequence; and 28S ribosomal RNA gene, partial sequence`

Complete sequence of 5.8s, complete ITS2 and partial sequence of 28s:

`gi|17386056|gb|AF444785.1| Debaryomyces hansenii strain CJLPHD5 5.8S ribosomal RNA gene, and internal transcribed spacer 2, partial sequence`

Partial sequence of 28s:

`gi|944549174|gb|KR872423.1| Debaryomyces hansenii 28S ribosomal RNA gene, partial sequence`

###### *Saccharomyces cerevisiae*

Partial sequence of ITS1, complete sequence of 5.8s, complete sequence of ITS2 and partial sequence of 28s:

`gi|768803449|gb|KP723680.1| Saccharomyces cerevisiae isolate M9 internal transcribed spacer 1, partial sequence; 5.8S ribosomal RNA gene and internal transcribed spacer 2, complete sequence; and 28S ribosomal RNA gene, partial sequence`


---

##### Running BLASTn

	$ blastn -db db/DeHa_Allassemblies.fasta -query Query_Deha/Deha18spart.fasta -out Dehaall_Deha18_ali.txt

	$ blastn -db db/DeHa_Allassemblies.fasta -query Query_Deha/Deha18spart_ITS1_58s_ITS2_28spart.fasta -out Dehaall_DehaITS1and2_ali.txt

	$ blastn -db db/DeHa_Allassemblies.fasta -query Query_Deha/Deha58s_ITS2part.fasta -out Dehaall_Deha58ITS2_ali.txt

	$ blastn -db db/DeHa_Allassemblies.fasta -query Query_Deha/Deha28spart.fasta -out Dehaall_Deha28_ali.txt

	$ blastn -db db/DeHa_Allassemblies.fasta -query Query_Sc/Sc_ITS1_58s_ITS2_28spart.fasta -out Dehaall_Sc_ali.txt

##### Extracting sequences

1001:

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1001_NODE_102_length_4825_cov_1843.36_ID_76682 -range 361-2358 -strand plus -out 1001_ITS.fasta

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1001_NODE_133_length_2424_cov_1991.61_ID_79990 -range 362-1384 -strand minus -out 1001_18.fasta

1002:

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1002_NODE_100_length_4925_cov_1418.88_ID_29668 -range 462-2459 -strand plus -out 1002_ITS.fasta

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1002_NODE_162_length_1878_cov_1422.99_ID_43588 -range 1-848 -strand minus -out 1002_18.fasta

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1002_NODE_325_length_490_cov_1545.7_ID_70064 -range 261-490 -strand minus -out 1002_18_2.fasta

1003:

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1003_NODE_67_length_8663_cov_1914.38_ID_26263 -range 1030-4716 -strand plus -out 1003_ITS.fasta

1004:

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1004_NODE_413_length_5785_cov_940.96_ID_1203628 -range 2156-5785 -strand plus -out 1004_ITS.fasta

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1004_NODE_7387_length_442_cov_781.359_ID_1236750 -range 350-442 -strand minus -out 1004_28.fasta

1005:

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1005_NODE_63_length_8201_cov_1463.05_ID_63484 -range 4572-8201 -strand plus -out 1005_ITS.fasta

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1005_NODE_362_length_441_cov_1280.5_ID_65519 -range 349-441 -strand minus -out 1005_28.fasta

1006:

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1006_NODE_73_length_2894_cov_1802.81_ID_32168 -range 1-2894 -strand minus -out 1006_ITS.fasta

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1006_NODE_89_length_1884_cov_1946.68_ID_20580 -range 1095-1884 -strand plus -out 1006_18.fasta

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1006_NODE_32_length_128222_cov_72.563_ID_9879 -range 128111-128168 -strand minus -out 1006_28.fasta

1007:

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1007_NODE_79_length_3710_cov_3145_ID_65101 -range 1-3630 -strand minus -out 1007_ITS.fasta

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1007_NODE_74_length_4046_cov_2421.74_ID_27025 -range 3935-3992 -strand minus -out 1007_28.fasta

1008:

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1008_NODE_345_length_791_cov_2004.97_ID_76419 -range 1-791 -strand plus -out 1008_28_2.fasta

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1008_NODE_334_length_869_cov_1868.21_ID_63690 -range 336-815 -strand plus -out 1008_28_1.fasta

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1008_NODE_183_length_3485_cov_1423.63_ID_71118 -range 65-112 -strand minus -out 1008_28_3.fasta

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1008_NODE_309_length_976_cov_1466.58_ID_76421 -range 1-444 -strand minus -out 1008_ITS158ITS2.fasta

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1008_NODE_383_length_617_cov_1791.57_ID_61393 -range 357-571 -strand minus -out 1008_ITS158ITS2_2.fasta

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1008_NODE_222_length_2262_cov_1848.91_ID_74385 -range 1051-2073 -strand plus -out 1008_18.fasta

1009:

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1009_jcf7180000024027 -range 1-479 -strand minus -out 1009_ITS.fasta

1010:

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1010_jcf7180000017065 -range 254220-254612 -strand minus -out 1010_18.fasta

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1010_jcf7180000016991 -range 94864-94923 -strand minus -out 1010_28.fasta

1011:

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1011_jcf7180000062901 -range 1-339 -strand plus -out 1011_ITS.fasta

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1011_jcf7180000062816 -range 89-529 -strand plus -out 1011_18.fasta

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1011_jcf7180000062250 -range 395-534 -strand minus -out 1011_28.fasta

1012:

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1012_NODE_93_length_2894_cov_2434.26_ID_40582 -range 1-2894 -strand plus -out 1012_ITS.fasta

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1012_NODE_126_length_1304_cov_2576.84_ID_37978 -range 515-1304 -strand plus -out 1012_18.fasta

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1012_NODE_152_length_1016_cov_2274_ID_38728 -range 55-112 -strand plus -out 1012_28.fasta

1013:

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1013_NODE_104_length_4229_cov_2577.65_ID_34528 -range 919-4229 -strand plus -out 1013_ITS.fasta

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1013_NODE_397_length_393_cov_2395.85_ID_75884 -range 54-393 -strand plus -out 1013_28.fasta

1014:

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1014_NODE_136_length_2895_cov_2069.6_ID_78569 -range 1-2895 -strand plus -out 1014_ITS.fasta

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1014_NODE_144_length_2492_cov_1872.83_ID_78275 -range 2381-2438 -strand minus -out 1014_28.fasta

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1014_NODE_28_length_147436_cov_59.2578_ID_18659 -range 146647-147436 -strand plus -out 1014_18.fasta

1015:

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1015_NODE_209_length_1449_cov_2445.73_ID_80444 -range 1-1449 -strand minus -out 1015_18ITS.fasta

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1015_NODE_186_length_2062_cov_2130.27_ID_80446 -range 1603-2062 -strand plus -out 1015_18_1.fasta

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1015_NODE_454_length_385_cov_2643.43_ID_48404 -range 1-385 -strand minus -out 1015_18.fasta

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1015_NODE_143_length_4931_cov_2379.82_ID_35550 -range 3374-4700 -strand minus -out 1015_28.fasta

1016:

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1016_NODE_91_length_3938_cov_2623.53_ID_69555 -range 1-2184 -strand minus -out 1016_18ITS.fasta

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1016_NODE_90_length_3954_cov_3015.95_ID_37920 -range 1-1558 -strand plus -out 1016_ITS28.fasta

1019:

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1019_NODE_60_length_8662_cov_1111.42_ID_26734 -range 3323-7009 -strand minus -out 1019_ITS.fasta

1017:

	$ blastdbcmd -db db/DeHa_Allassemblies.fasta -entry 1017_jcf7180000031087 -range 1-461 -strand minus -out 1017_ITS.fasta

1018: Not found
