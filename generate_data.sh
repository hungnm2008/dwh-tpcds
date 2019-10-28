

DIRECTORY = /home/hungnm/tpcds-data/

for number in 1 10 50 100
do
	mkdir ${DIRECTORY}${number}GB
	dsdgen -scale ${number} -dir ${DIRECTORY}${number}GB -parallel 2 -child 1 &
	dsdgen -scale ${number} -dir ${DIRECTORY}${number}GB -parallel 2 -child 2
done


