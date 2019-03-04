FROM ruby

LABEL		MAINTAINER="mbelalou@student.42.fr"

RUN apt update -y && apt install -y rails

ONBUILD COPY app /opt/app
ONBUILD WORKDIR /opt/app
ONBUILD RUN bundle update
ONBUILD RUN bundle install
ONBUILD RUN rake db:migrate

# docker build -t ft-rails:on-build .