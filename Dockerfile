FROM ruby:3.0.0-buster

RUN apt-get update && \
  (curl -fsSL https://deb.nodesource.com/setup_16.x | bash -) && \
  apt-get install -y curl apt-transport-https wget nodejs

RUN mkdir /app
WORKDIR /app

ENV RAILS_ENV=production
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install
COPY . /app

RUN bundle exec rails assets:precompile && \
  bundle exec rails db:migrate && \
  bundle exec rails db:seed

COPY entrypoint.sh /usr/bin
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0", "-e", "production"]
