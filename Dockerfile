FROM ruby:2.6.3

# Fix Debian Buster EOL repositories
RUN sed -i s/deb.debian.org/archive.debian.org/g /etc/apt/sources.list && \
    sed -i 's|security.debian.org/debian-security|archive.debian.org/debian-security|g' /etc/apt/sources.list && \
    sed -i '/stretch-updates/d' /etc/apt/sources.list

# Install system dependencies
RUN apt-get update -qq && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    npm \
    curl \
    git \
    shared-mime-info \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Install yarn
RUN npm install -g yarn

WORKDIR /app

# Install gems
COPY Gemfile Gemfile.lock ./
RUN gem install bundler -v 2.3.26
RUN bundle install

# Copy application code
COPY . .

# Setup entrypoint
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3320

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0", "-p", "3320"]
