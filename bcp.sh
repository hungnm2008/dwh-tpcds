#!/usr/bin/env bash
DATA_DIR=/home/hungnm/tpcds-data/10GB
DB=Retail10GB
DB_USR=hungnm
DB_PASSWORD='@dwh2019'

cd $DATA_DIR

for f in *.dat
do
	/opt/mssql-tools/bin/bcp ${f%%.*} in $DATA_DIR/$f -S localhost -d $DB -U $DB_USR -P $DB_PASSWORD -q -c -t "|" -r "|\n"
done

sudo shutdown -h now
