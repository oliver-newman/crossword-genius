FROM ruby:2.3.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /crossword-genius
WORKDIR /crossword-genius
ADD Gemfile /crossword-genius/Gemfile
ADD Gemfile.lock /crossword-genius/Gemfile.lock
RUN bundle install
ADD . /crossword-genius
