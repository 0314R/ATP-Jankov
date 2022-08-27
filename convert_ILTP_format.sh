#! /bin/sh
make -C ILTP_format_converter;

mkdir -p ILTP_CONVERTED/LCL;
mkdir -p ILTP_CONVERTED/SYJ;
mkdir -p ILTP_CONVERTED/SYN;

for f in ILTP/*/*.p; do
	extensionless=${f%".p"}; 					#remove extension from filename
	sub_and_file=${extensionless#"ILTP/"}; 		#remove directory ILTP/ from filename (but not subdirectory)
	ILTP_format_converter/converter< "ILTP/${sub_and_file}.p" > "ILTP_CONVERTED/${sub_and_file}.pl";
 	done

# cleaning up
cd ILTP_format_converter;
rm converter converter.tab.c converter.tab.h lex.yy.c;
cd ..;
