#! /bin/sh
flex ILTP_status_extractor/extractor.l;
gcc ILTP_status_extractor/lex.yy.c -o ILTP_status_extractor/extractor;
> ILTP_statuses.txt
for filename in ILTP/*/*.p; do
	echo -e "\t\t${filename}:" >> ILTP_statuses.txt;
	ILTP_status_extractor/extractor < "${filename}" >> ILTP_statuses.txt ;
 	done
