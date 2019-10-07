#!/bin/bash

getDockerId(){
        if [ ! "$1" ];
	then
		echo "Docker name is required"
		return 1
	fi
	echo `docker ps -aqf "name=$NAME"`
}
echo "Name=$NAME"
echo "Starting..."
docker run -d bitcoin_ubuntu sleep infinity
#containerName=`getDockerId $NAME`
#echo "c=$containerName"
containerId=`docker ps -a -q --filter ancestor="bitcoin_ubuntu"`
#docker exec -it $(docker ps -a -q --filter ancestor="bitcoin_ubuntu" --format="{{.ID}}") /bin/bash
echo "CID=$containerId"
docker exec -it bitcoin_ubuntu /bin/bash
