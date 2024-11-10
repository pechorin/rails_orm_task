# syntax=docker/dockerfile:1.3

ARG BASE_IMAGE=ruby:3.1.4-alpine
ARG BUNDLER_VERSION=2.4.15

FROM ${BASE_IMAGE} AS app

WORKDIR /app

RUN apk add --no-cache build-base 
RUN gem install bundler -v 2.4.15 --no-document

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .

ENTRYPOINT ["bundle", "exec", "rspec", "./user_spec.rb"]
