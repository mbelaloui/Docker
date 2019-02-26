FROM		ruby

EXPOSE      3000

RUN         apt -y update
RUN         apt -y upgrade
RUN			gem update --system
RUN         gem install rails
RUN 		rails -v
RUN			pwd
RUN			mkdir Project && cd Project
RUN			pwd
RUN			ls
RUN			rails new first_app
RUN			ls
#docker image build -t ft-rails
#docker run --rm -p 30033:30033 -it ft-rails


#http://french.railstutorial.org/chapters/beginning