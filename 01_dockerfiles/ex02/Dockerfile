FROM ruby

RUN apt -y update
RUN apt -y upgrade
RUN gem install rails

RUN rails new app
WORKDIR /app
RUN bundle install

RUN bundle exec rake test
RUN bundle exec rails server


#ONBUILD RUN exec rake db:migrate && rake db:seed

#FROM		ruby

#RUN         apt -y update
#RUN         apt -y upgrade
#RUN         apt install -y nodejs postgresql-client

#RUN         gem install rails
#RUN			rails new /opt/app
#WORKDIR     /opt/app
#RUN         bundle install --path vendor/cache
#RUN         gem install rake && bundle install


#RUN         rails server
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