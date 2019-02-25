FROM		debian

LABEL       MAINTAINER="mbelalou@student.42.fr"
WORKDIR     /home

RUN			apt update -y
RUN         apt upgrade -y
RUN			apt install -y wget bzip2
RUN			wget https://files.teamspeak-services.com/releases/server/3.6.1/teamspeak3-server_linux_amd64-3.6.1.tar.bz2
RUN			tar xfvj teamspeak3-server_linux_amd64-3.6.1.tar.bz2 && rm teamspeak3-server_linux_amd64-3.6.1.tar.bz2

CMD			[ "./teamspeak3-server_linux_amd64/ts3server_minimal_runscript.sh" ]

EXPOSE		9987/udp 30033 10011
ENV         TS3SERVER_LICENSE=accept