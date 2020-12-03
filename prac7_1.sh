#!/bin/bash

i=0
while [ $i -lt 60 ]
do
	res=$(sudo repquota -a | awk '/^pep/ { print $2 }')

	car=${res:0:1}
	if [ $car == "+" ]
	then
		echo "Ep! El pep s'ha passat de la quota >:("
		echo -e "\n\n^D" | mail -s "Pep, t'has passat de la quota" pep root
	fi
	i=$(($i+1))
	sleep 1
done
