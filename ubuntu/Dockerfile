FROM ubuntu:18.04

ENV TERM linux
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y iputils-ping
RUN apt-get install -y wget 
RUN apt-get install --assume-yes git

RUN apt-get install -y software-properties-common

RUN add-apt-repository ppa:bitcoin/bitcoin
RUN apt-get update
RUN apt-get install -y bitcoind

RUN mkdir /content/ && cd /content/
RUN wget https://github.com/libbitcoin/libbitcoin-explorer/releases/download/v3.2.0/bx-linux-x64-qrcode
RUN chmod +x /content/bx-linux-x64-qrcode
RUN mv /content/bx-linux-x64-qrcode /usr/bin/bx && bitcoind -regtest -daemon 

CMD ["/bin/bash"]

#https://stackoverflow.com/questions/43419500/how-do-you-start-a-docker-ubuntu-container-into-bash
#docker build --tag stens_ubuntu .
#docker run -d stens_ubuntu sleep infinity

#docker exec -it image bash
