FROM		debian

LABEL       MAINTAINER="mbelalou@student.42.fr"

RUN			apt update -y
RUN			apt upgrade -y 
RUN			apt install -y wget 
RUN			apt install -y bzip2

WORKDIR		/home

ENV			TS3SERVER_LICENSE=accept

RUN			wget http://dl.4players.de/ts/releases/3.4.0/teamspeak3-server_linux_amd64-3.4.0.tar.bz2

RUN			tar xfvj teamspeak3-server_linux_amd64-3.4.0.tar.bz2 && rm -fr teamspeak3-server_linux_amd64-3.4.0.tar.bz2

#RUN			./teamspeak3-server_linux_amd64/ts3server_startscript.sh start

EXPOSE		9987/udp
EXPOSE		30033
EXPOSE		10011

#ENTRYPOINT  vim