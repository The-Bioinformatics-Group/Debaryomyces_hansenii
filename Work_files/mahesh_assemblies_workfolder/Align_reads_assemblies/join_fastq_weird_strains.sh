#!/usr/bin/env bash

/usr/local/bin/filterPCRdupl_v1.01.pl -fastq1=1_140716_AH9BY4ADXX_P1260_1006_1.fastq -fastq2=1_140716_AH9BY4ADXX_P1260_1006_2.fastq -prefix=1006AH

/usr/local/bin/filterPCRdupl_v1.01.pl -fastq1=1_140716_AH9BY4ADXX_P1260_1009_1.fastq -fastq2=1_140716_AH9BY4ADXX_P1260_1009_2.fastq -prefix=1009AH

/usr/local/bin/filterPCRdupl_v1.01.pl -fastq1=1_140716_AH9BY4ADXX_P1260_1010_1.fastq -fastq2=1_140716_AH9BY4ADXX_P1260_1010_2.fastq -prefix=1010AH

/usr/local/bin/filterPCRdupl_v1.01.pl -fastq1=1_140716_AH9BY4ADXX_P1260_1011_1.fastq -fastq2=1_140716_AH9BY4ADXX_P1260_1011_2.fastq -prefix=1011AH

/usr/local/bin/filterPCRdupl_v1.01.pl -fastq1=1_140716_AH9BY4ADXX_P1260_1012_1.fastq -fastq2=1_140716_AH9BY4ADXX_P1260_1012_2.fastq -prefix=1012AH

/usr/local/bin/filterPCRdupl_v1.01.pl -fastq1=8_140619_BC47HDACXX_P1260_1006_1.fastq -fastq2=8_140619_BC47HDACXX_P1260_1006_2.fastq -prefix=1006BC

/usr/local/bin/filterPCRdupl_v1.01.pl -fastq1=8_140619_BC47HDACXX_P1260_1009_1.fastq -fastq2=8_140619_BC47HDACXX_P1260_1009_2.fastq -prefix=1009BC

/usr/local/bin/filterPCRdupl_v1.01.pl -fastq1=8_140619_BC47HDACXX_P1260_1010_1.fastq -fastq2=8_140619_BC47HDACXX_P1260_1010_2.fastq -prefix=1010BC

/usr/local/bin/filterPCRdupl_v1.01.pl -fastq1=8_140619_BC47HDACXX_P1260_1011_1.fastq -fastq2=8_140619_BC47HDACXX_P1260_1011_2.fastq -prefix=1011BC

/usr/local/bin/filterPCRdupl_v1.01.pl -fastq1=8_140619_BC47HDACXX_P1260_1012_1.fastq -fastq2=8_140619_BC47HDACXX_P1260_1012_2.fastq -prefix=1012BC


# cat them together:

cat /data02/merce/Mapping_reads_assemblies/1006AH_uniq1.fastq /data02/merce/Mapping_reads_assemblies/1006BC_uniq1.fastq > /data02/merce/Mapping_reads_assemblies/1006_1.fastq

cat /data02/merce/Mapping_reads_assemblies/1006AH_uniq2.fastq /data02/merce/Mapping_reads_assemblies/1006BC_uniq2.fastq > /data02/merce/Mapping_reads_assemblies/1006_2.fastq

cat /data02/merce/Mapping_reads_assemblies/1009AH_uniq1.fastq /data02/merce/Mapping_reads_assemblies/1009BC_uniq1.fastq > /data02/merce/Mapping_reads_assemblies/1009_1.fastq

cat /data02/merce/Mapping_reads_assemblies/1009AH_uniq2.fastq /data02/merce/Mapping_reads_assemblies/1009BC_uniq2.fastq > /data02/merce/Mapping_reads_assemblies/1009_2.fastq

cat /data02/merce/Mapping_reads_assemblies/1010AH_uniq1.fastq /data02/merce/Mapping_reads_assemblies/1010BC_uniq1.fastq > /data02/merce/Mapping_reads_assemblies/1010_1.fastq

cat /data02/merce/Mapping_reads_assemblies/1010AH_uniq2.fastq /data02/merce/Mapping_reads_assemblies/1010BC_uniq2.fastq > /data02/merce/Mapping_reads_assemblies/1010_2.fastq

cat /data02/merce/Mapping_reads_assemblies/1011AH_uniq1.fastq /data02/merce/Mapping_reads_assemblies/1011BC_uniq1.fastq > /data02/merce/Mapping_reads_assemblies/1011_1.fastq

cat /data02/merce/Mapping_reads_assemblies/1011AH_uniq2.fastq /data02/merce/Mapping_reads_assemblies/1011BC_uniq2.fastq > /data02/merce/Mapping_reads_assemblies/1011_2.fastq

cat /data02/merce/Mapping_reads_assemblies/1012AH_uniq1.fastq /data02/merce/Mapping_reads_assemblies/1012BC_uniq1.fastq > /data02/merce/Mapping_reads_assemblies/1012_1.fastq

cat /data02/merce/Mapping_reads_assemblies/1012AH_uniq2.fastq /data02/merce/Mapping_reads_assemblies/1012BC_uniq2.fastq > /data02/merce/Mapping_reads_assemblies/1012_2.fastq


