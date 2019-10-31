#!/usr/bin/env bash

INPUT_FILE=tpcds-queries/100GB/query_0.sql
OUTPUT_DIR=results/100GB
DB=Retail100GB
DB_USR=hungnm
DB_PASSWORD='@dwh2019'

for number in 1 2 3
do
	echo "Start iteration: ${number} ..."
	/opt/mssql-tools/bin/sqlcmd -p1 -S localhost -d $DB -U $DB_USR -P $DB_PASSWORD -i $INPUT_FILE > ${OUTPUT_DIR}/${number}_queries_output.txt
	echo "Finish iteration: ${number}"
done
