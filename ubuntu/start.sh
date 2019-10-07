#!/bin/bash

echo "Starting..."
docker run -d bitcoin_ubuntu sleep infinity

containerId=`docker ps -a -q --filter ancestor="bitcoin_ubuntu"`
#docker exec -it $(docker ps -a -q --filter ancestor="bitcoin_ubuntu" --format="{{.ID}}") /bin/bash
echo "CID=$containerId"
docker exec -it bitcoin_ubuntu /bin/bash
