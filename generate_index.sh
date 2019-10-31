#!/usr/bin/env bash
INPUT_FILE=index_db.sql
DB=Retail100GB
DB_USR=hungnm
DB_PASSWORD='@dwh2019'

/opt/mssql-tools/bin/sqlcmd -p1 -S localhost -d $DB -U $DB_USR -P $DB_PASSWORD -i $INPUT_FILE
