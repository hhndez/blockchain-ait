#!/bin/bash

NAME="bitcoin-ubuntu"

getDockerId(){
        if [ ! "$1" ];
	then
		echo "Docker name is required"
		return 1
	fi
	echo `docker ps -aqf "name=$NAME"`
}
echo "Name=$NAME"
containerName=`getDockerId $NAME`
containerName=`docker ps -aqf "name=$NAME"`
echo "Container id=$containerName"
	docker exec -it $containerName /bin/bash
