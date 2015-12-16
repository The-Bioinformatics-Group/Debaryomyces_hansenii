### Assemblies

#### First try: Assembly of 1006 and 1012 strains using [SOAPdenovo](http://soap.genomics.org.cn/soapdenovo.html)

Config file for 1006 [here](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Work_files/merce_assemblies_workfolder/06_and_12_first_test/1006.config)

Config file for 1012 [here](https://github.com/The-Bioinformatics-Group/Debaryomyces_hansenii/blob/master/Work_files/merce_assemblies_workfolder/06_and_12_first_test/1012.config)

Running SOAPdenovo:

	$ /home/tomasl/bin/SOAPdenovo2-src-r240/SOAPdenovo-63mer all -s SOAPdenovo/1006.config -K 31 -p 16 -R -o 1006_SOAPdenovo_k31 1>1006_k31.log 2>1006_k31.err


	$ /home/tomasl/bin/SOAPdenovo2-src-r240/SOAPdenovo-63mer all -s SOAPdenovo/1012.config -K 25 -p 16 -R -o 1012_SOAPdenovo_k25 1>1012_k25.log 2>1012_k25.err


