#!/usr/bin/env bash
for number in 1 2 3 4 5
do
	/opt/mssql-tools/bin/sqlcmd -p1 -S localhost -d Retail100GB -U hungnm -P 'Kh0cl4mgj1478965' -i tpcds-queries/100GB/query_0.sql > results/100GB/output$number.txt
done
