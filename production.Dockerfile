FROM ruby:2.4.2

RUN apt-get update && apt-get -y install curl git nano

RUN mkdir /app
RUN mkdir /app/ma
WORKDIR /app/ma

ADD Gemfile /app/ma/
ADD Gemfile.lock /app/ma/

RUN bundle install

RUN cd /app/ma && bundle install

RUN apt-get -y install nodejs

ADD . /app/ma/

RUN bundle exec rails assets:precompile
