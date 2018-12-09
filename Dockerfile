FROM ruby:2.5.1-alpine

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1 && \
gem install nokogiri -v '1.8.5' --source "https://rubygems.org/"

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

RUN apk add --update build-base postgresql-dev tzdata && \
gem install rails -v '5.1.6'

CMD ["rails, server"]
