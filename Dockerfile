FROM ruby:2.3.8-alpine3.8

WORKDIR /app
COPY . /app

RUN bundle install --without development test

EXPOSE 4567

ENTRYPOINT [ "ruby", "app.rb" ]
