#! /bin/sh

for filename in ILTP/manual/*; do
	echo -e "\t\t${filename}:";
	/usr/bin/time --format='                %e seconds.' swipl ipl.pl "${filename}";
 	done
