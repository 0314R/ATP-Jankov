#! /bin/sh
make -C ILTP_converter
for f in ILTP/*/*.p; do
	basename=${f%".p"};
	ILTP_converter/converter< "${basename}.p" > "${basename}.pl";
 	done
