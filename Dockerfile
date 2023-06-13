FROM ruby:3.1.2

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

RUN gem install bundler

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN bundle install --jobs $(nproc) --retry 3

COPY . .

CMD ["rails", "server", "-b", "0.0.0.0"]