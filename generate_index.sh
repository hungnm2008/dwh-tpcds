#!/usr/bin/env bash
INPUT_FILE=index_db.sql
DB=Retail50GB
DB_USR=sa
DB_PASSWORD='@abcd1234'

echo "Start iteration: ${number} ..."
/opt/mssql-tools/bin/sqlcmd -p1 -S localhost -d $DB -U $DB_USR -P $DB_PASSWORD -i $INPUT_FILE
echo "Finish iteration: ${number}"
