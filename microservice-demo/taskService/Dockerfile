FROM ruby:2.7

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR /app

# Trust corp proxy root CA
COPY corp-ca.pem /usr/local/share/ca-certificates/corp-ca.crt
RUN update-ca-certificates

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

EXPOSE 50053