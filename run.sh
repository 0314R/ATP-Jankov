#! /bin/sh

for filename in ILTP_CONVERTED/*/*.pl; do
	echo -e "\t\t${filename}:";
	/usr/bin/time --format='                %e seconds.' swipl wipl.pl "${filename}";
 	done
