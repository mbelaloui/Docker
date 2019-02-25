FROM		ubuntu:18.04

LABEL		MAINTAINER="mbelalou@student.42.fr"
WORKDIR     /home

RUN         apt-get update -y
RUN 		apt-get upgrade -y
RUN 		apt-get install -y curl
RUN 		apt-get install -y openssh-server
RUN 		apt-get install -y ca-certificates
RUN         apt-get install -y postfix
RUN         curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/script.deb.sh | bash
RUN         EXTERNAL_URL="http://gitlab.example.com"
RUN         apt-get install gitlab-ee   

EXPOSE		80 8080