#!/bin/bash

data=($(date))

if [ ${data[0]} == "dissabte," -o ${data[0]} == "diumenge," ]
then
	if [ $((${data[0]})) -le $((7)) ]
	then
		exit 0
	fi
fi

sudo apt update
sudo apt upgrade
