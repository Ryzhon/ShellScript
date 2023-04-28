#!/bin/bash

for a in {01..20}
do 
	touch Test$a.txt
	echo "create test"
done

for i in {01..20}
do
	echo This is Test > Test$i.txt
	echo "write file"
done


echo this is test
for j in {01..20}
do
	mv Test$j.txt projitsuTest$j.txt
	echo "RENAME"
done

zip  projitsuAll.zip projitsuTest{01..20}.txt

echo finish
