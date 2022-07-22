#! /bin/sh
make -C ILTP_format_converter;
for f in ILTP/*/*.p; do
	basename=${f%".p"};
	ILTP_format_converter/converter< "${basename}.p" > "${basename}.pl";
 	done
cd ILTP_format_converter;
rm converter converter.tab.c converter.tab.h lex.yy.c;
cd ..;
