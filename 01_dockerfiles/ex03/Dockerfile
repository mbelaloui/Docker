FROM ubuntu:16.04

LABEL       MAINTAINER="mbelalou@student.42.fr"

EXPOSE 443 80 22
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y curl
RUN apt-get install -y openssh-server
RUN apt-get install -y ca-certificates
RUN curl -s https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash

RUN apt-get install gitlab-ce -y

RUN apt update && apt install -y tzdata && apt-get clean && rm -rf /var/lib/apt/lists/ */tmp/* /var/tmp/*

RUN mkdir -p /etc/gitlab/ssl
RUN chmod 700 /etc/gitlab/ssl
RUN openssl req -new -x509 -days 365 -nodes -out 192.168.99.100.crt -keyout 192.168.99.100.key -subj "/C=FR/ST=Paris/L=Paris/O=42/OU/Docker_project/CN=gitlab"
RUN cp 192.168.99.100.key 192.168.99.100.crt /etc/gitlab/ssl/

#RUN echo "letsencrypt['enable'] = false" >> /etc/gitlab/gitlab.rb
#RUN echo "external_url \"https://192.168.99.100\"" >> /etc/gitlab/gitlab.rb
#RUN echo "nginx['redirect_http_to_https'] = true" >> /etc/gitlab/gitlab.rb
#RUN echo "nginx['ssl_certificate'] = \"/etc/gitlab/ssl/192.168.99.100.crt\"" >> /etc/gitlab/gitlab.rb
#RUN echo "nginx['ssl_certificate_key'] = \"/etc/gitlab/ssl/192.168.99.100.key\"" >> /etc/gitlab/gitlab.rb

COPY  gitlab.rb /etc/gitlab/gitlab.rb
#ssh
COPY sshd_config /etc/ssh/
RUN echo 'root:root' | chpasswd

#ENTRYPOINT (service ssh restart) && tail -f /dev/null

ENTRYPOINT (/opt/gitlab/embedded/bin/runsvdir-start &) && (service ssh restart) && gitlab-ctl reconfigure && tail -f /dev/null

# to resolve this error <fatal: unable to access 'https://192.168.99.100/root/teste.git/': SSL certificate problem: Invalid certificate chain> when using ssl not certified
#git config --global http.sslVerify false

#ssh-keygen -o -t rsa -b 4096 -C "root@192.168.99.100" 
#ssh-keygen -t ed25519 -C "root@192.168.99.100"

#macOS:
#pbcopy < ~/.ssh/id_ed25519.pub
#WSL / GNU / Linux (nécessite le paquet xclip):
#xclip -sel clip < ~/.ssh/id_ed25519.pub
#Git Bash sous Windows:
#cat ~/.ssh/id_ed25519.pub | clip


#run  
#docker run -it -p80:80 -p443:443 -p23:22 --rm ft-gitlab


#If ssh doesn't rm ~/.ssh/known_hosts