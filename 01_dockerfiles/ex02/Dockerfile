FROM ruby

MAINTAINER Juan Casian <jcasian@student.42.us.org>

RUN apt-get update -y && apt-get install -y build-essential libpq-dev nodejs sqlite3

ONBUILD COPY app /opt/app
ONBUILD WORKDIR /opt/app

#The ONBUILD command adds the instruction to work until the img is used as base of another build

ONBUILD EXPOSE 3000
ONBUILD RUN bundle install
ONBUILD RUN rake db:migrate
ONBUILD RUN rake db:seed



#FROM		ruby

#EXPOSE      3000
#RUN         ruby -v
#RUN         apt -y update
#RUN         apt -y upgrade
#RUN         gem install rails
#RUN			rails new /opt/app
#--skip-test --skip-bundle --database=postgresql
#WORKDIR     /opt/app
#RUN         bundle install
#RUN         rails db:migrate

#bundle
#rails
#rake
#setup
#spring
#update
#yarn
#docker image build -t ft-rails
#docker run --rm -p 30033:30033 -it ft-rails


#http://french.railstutorial.org/chapters/beginning