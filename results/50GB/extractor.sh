#!/usr/bin/env bash

for f in *output.txt
do
grep -rnw $f -e 'elapsed time' | cut -d":" -f2- | cut -d"," -f2- | cut -d"=" -f2 | cut -d' ' -f2 > ${f%%.*}_final.txt
done
