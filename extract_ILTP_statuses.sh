#! /bin/sh

cd ILTP_status_extractor;
flex extractor.l;
gcc lex.yy.c -o extractor;
rm lex.yy.c;
cd ..;

> ILTP_statuses.txt
for filename in ILTP/*/*.p; do
	echo -e "\t\t${filename}:" >> ILTP_statuses.txt;
	ILTP_status_extractor/extractor < "${filename}" >> ILTP_statuses.txt ;
 	done
