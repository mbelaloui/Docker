FROM ubuntu:16.04


RUN apt-get update && \
    apt-get install -y curl openssh-server ca-certificates && \
    apt-get install -y postfix

RUN curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/script.deb.sh | bash

#RUN EXTERNAL_URL="http://gitlab.example.com" apt-get install gitlab-ee
RUN apt-get install gitlab-ee

#RUN apt update && apt install -y tzdata && \
#  apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 443 80 22

RUN mkdir -p /etc/gitlab/ssl
RUN chmod 700 /etc/gitlab/ssl
RUN openssl req -new -x509 -days 365 -nodes -out gitlab.example.com.crt -keyout gitlab.example.com.key -subj "/C=FR/ST=Paris/L=Paris/O=42/OU/Docker_project/CN=gitlab"
RUN cp gitlab.example.com.key gitlab.example.com.crt /etc/gitlab/ssl/

#RUN gitlab-ctl reconfigure

#ENTRYPOINT (/opt/gitlab/embedded/bin/runsvdir-start &) && gitlab-ctl reconfigure && tail -f /dev/null