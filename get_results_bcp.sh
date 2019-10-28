cd /home/dwh/tpcds-data/50GB

for file in *loadtime.txt 
do 
	time=$(grep -n "Clock Time (ms.) Total     :" ${file} | grep -o 'Clock Time (ms.) Total     :.*' | cut -f2- -d: |cut -d"A" -f1)
	echo "${file}|${time}"
done	




