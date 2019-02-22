
FROM debian

MAINTAINER vbrazhni <vbrazhni@student.unit.ua>

ENV TS3SERVER_LICENSE=accept

WORKDIR /home/teamspeak

EXPOSE 9987/udp 10011 30033

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y wget bzip2 && \
    wget https://files.teamspeak-services.com/releases/server/3.6.1/teamspeak3-server_linux_amd64-3.6.1.tar.bz2 && \
    tar -xvf teamspeak3-server_linux_amd64-3.6.1.tar.bz2

WORKDIR teamspeak3-server_linux_amd64

ENTRYPOINT sh ts3server_minimal_runscript.sh

#FROM		debian

#LABEL       MAINTAINER="mbelalou@student.42.fr"

#RUN			apt update -y && apt upgrade -y 
#RUN			apt install -y wget 
#RUN			apt install -y bzip2

#WORKDIR		/home

#ENV			TS3SERVER_LICENSE=accept

#RUN			wget https://files.teamspeak-services.com/releases/server/3.6.1/teamspeak3-server_linux_amd64-3.6.1.tar.bz2
#RUN			tar xfvj teamspeak3-server_linux_amd64-3.6.1.tar.bz2 && rm -fr teamspeak3-server_linux_amd64-3.6.1.tar.bz2

#RUN         wget http://dl.4players.de/ts/releases/3.0.11.2/teamspeak3-server_linux-amd64-3.0.11.2.tar.gz
#RUN			tar xfvj teamspeak3-server_linux-amd64-3.0.11.2.tar.gz && rm -fr teamspeak3-server_linux-amd64-3.0.11.2.tar.gz

#RUN			./teamspeak3-server_linux_amd64/ts3server_startscript.sh start

#EXPOSE		9987/udp 30033 10011

#ENTRYPOINT  vim