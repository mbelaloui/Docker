FROM        ubuntu

LABEL       MAINTAINER="mbelalou@student.42.fr"

RUN         apt-get update -y && \
            apt-get install -y vim

CMD         vim test.txt

WORKDIR     /home

#docker image build -t ft-vim .
#docker run --rm -it ft-vim