FROM ruby:3.2.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs postgresql-client
RUN mkdir /alexa_1210
WORKDIR /alexa_1210
ADD Gemfile /alexa_1210/Gemfile
ADD Gemfile.lock /alexa_1210/Gemfile.lock
RUN bundle install
ADD . /alexa_1210