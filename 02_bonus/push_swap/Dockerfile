FROM        ubuntu

RUN         apt -y update
RUN         apt -y upgrade

RUN         apt -y install git 
RUN         apt -y install gcc 
RUN         apt -y install make

RUN         git clone https://github.com/mbelaloui/push_swap.git

WORKDIR     push_swap
RUN         make

CMD [ "./push_swap", "-t" ]

#docker image build -t push_swap .
#docker run -it push_swap