#! /bin/sh

for filename in testCases/*; do
	echo -e "\t\t${filename}:";
	/usr/bin/time --format='                %e seconds.' swipl ../ipl.pl "${filename}";
 	done
