FROM ruby:2.7.4-alpine

WORKDIR /usr/src/app/

COPY Gemfile ./
RUN apk --no-cache add build-base && bundle install && apk del build-base

COPY README.md _config.yml /srv/

CMD [ "bundle", "exec", "jekyll", "serve", "-H", "0.0.0.0", "-P", "80", "-b", "", "-s", "/srv" ]
