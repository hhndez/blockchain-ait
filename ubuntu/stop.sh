#!/bin/bash

NAME="pensive_wilbur"

getDockerId(){
        if [ ! "$1" ];
	then
		echo "Docker name is required"
		return 1
	fi
	echo `docker ps -aqf "name=$NAME"`
}
#echo "Name=$NAME"
#containerName=`getDockerId $NAME`
#docker exec -it $containerName /bin/bash
#docker stop $containerName
docker rm $(docker stop $(docker ps -a -q --filter ancestor=bitcoin_ubuntu --format="{{.ID}}"))
