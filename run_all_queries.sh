#!/usr/bin/env bash

INPUT_FILE=tpcds-queries/10GB/query_0.sql
OUTPUT_DIR=results/10GB
DB=Retail10GB
DB_USR=hungnm
DB_PASSWORD='@dwh2019'

for number in 2
do
	/opt/mssql-tools/bin/sqlcmd -p1 -S localhost -d $DB -U $DB_USR -P $DB_PASSWORD -i $INPUT_FILE > ${OUTPUT_DIR}/${number}_queries_output.txt
done
