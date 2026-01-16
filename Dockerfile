# Jekyll Dockerfile for baolingfeng.github.io
# Based on Ruby Alpine image with network retry support

FROM ruby:3.2-alpine

# Install necessary packages with retry
RUN apk add --no-cache \
    build-base \
    gcc \
    g++ \
    make \
    libc-dev \
    libffi-dev \
    zlib-dev \
    libxml2-dev \
    libxslt-dev \
    readline-dev \
    linux-headers \
    git \
    nodejs \
    yarn \
    tzdata \
    curl

# Set working directory
WORKDIR /srv/jekyll

# Copy Gemfile first for better layer caching (Gemfile.lock will be generated)
COPY Gemfile ./

# Install bundler
RUN gem install bundler -v 2.4.22

# Configure RubyGems mirror - use multiple mirrors for reliability
RUN gem sources --add https://mirrors.tuna.tsinghua.edu.cn/rubygems/ --remove https://rubygems.org/ && \
    bundle config mirror.https://rubygems.org/ https://mirrors.tuna.tsinghua.edu.cn/rubygems/ && \
    rm -rf /root/.bundle/cache

# Install dependencies
RUN bundle config set --local without 'development' && \
    bundle install

# Copy all site files
COPY . .

# Expose Jekyll's default port
EXPOSE 4000
EXPOSE 35729

# Set the default command
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--livereload"]
