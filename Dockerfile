FROM ruby:3.1.2-slim

RUN apt-get update -qq && \
    apt-get install -y build-essential libsqlite3-dev nodejs npm && \
    npm uninstall yarn -g && \
    npm install yarn -g -y

ENV APP_ROOT /app
WORKDIR $APP_ROOT

COPY Gemfile Gemfile.lock $APP_ROOT/
RUN bundle install
