# Use the official Ruby image
FROM ruby:3.2.1

# Install dependencies
RUN apt-get update -qq && apt-get install -y \
  nodejs \
  postgresql-client \
  libssl-dev \
  libreadline-dev \
  zlib1g-dev \
  build-essential \
  curl

# Install rbenv
RUN git clone https://github.com/rbenv/rbenv.git ~/.rbenv && \
  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc && \
  echo 'eval "$(rbenv init -)"' >> ~/.bashrc && \
  git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build && \
  echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc

# Install the specified Ruby version using rbenv
ENV PATH="/root/.rbenv/bin:/root/.rbenv/shims:$PATH"
RUN rbenv install 3.2.1 && rbenv global 3.2.1

# Set the working directory
WORKDIR /myapp

# Copy the Gemfile and Gemfile.lock
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock

# Install Gems dependencies
RUN gem install bundler && bundle install

# Copy the application code
COPY . /myapp

# Precompile assets (optional, if using Rails with assets)
# (CDLTLL) RUN bundle exec rake assets:precompile

# Expose the port the app runs on
EXPOSE 3000

# Command to run the server
CMD ["rails", "server", "-b", "0.0.0.0"]

