FROM ubuntu:16.04

EXPOSE 443 80 22

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y curl
RUN apt-get install -y openssh-server
RUN apt-get install -y ca-certificates
    
RUN curl -s https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash

RUN apt-get update -y
RUN apt-get upgrade -y

RUN apt-get install gitlab-ce -y


#RUN EXTERNAL_URL="http://192.168.99.100.com" apt-get install gitlab-ee


#RUN apt update && apt install -y tzdata && \
#  apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


#RUN mkdir -p /etc/gitlab/ssl
#RUN chmod 700 /etc/gitlab/ssl
#RUN openssl req -new -x509 -days 365 -nodes -out 192.168.99.100.crt -keyout 192.168.99.100.com.key -subj "/C=FR/ST=Paris/L=Paris/O=42/OU/Docker_project/CN=gitlab"
#RUN cp 192.168.99.100.com.key 192.168.99.100.com.crt /etc/gitlab/ssl/

#pour que NGINX recharge correctement la configuration existante et les nouveaux certificats 
#RUN gitlab-ctl hup nginx


#RUN gitlab-ctl reconfigure

#ENTRYPOINT (/opt/gitlab/embedded/bin/runsvdir-start &) && gitlab-ctl reconfigure && tail -f /dev/null