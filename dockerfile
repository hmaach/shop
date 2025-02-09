FROM ruby:3.3.0

WORKDIR /app

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

COPY Gemfile Gemfile.lock ./
RUN bundle i

COPY . .

EXPOSE 3001

# Start the Rails server with correct binding
CMD ["rails", "server", "-b", "0.0.0.0", "-p", "3001"]
