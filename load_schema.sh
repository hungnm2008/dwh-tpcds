for number in 1 10 50 100
do
    sqlcmd -S localhost -d Retail${number}GB -U hungnm -P '@dwh2019' -i tools/tpcds.sql
done
