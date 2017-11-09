FROM hammer098/ruby_24
# common rails build steps
WORKDIR /web

# Install rvm, default ruby version and bundler.
COPY .ruby-version /web/.ruby-version
COPY Gemfile /web/Gemfile
COPY Gemfile.lock /web/Gemfile.lock

RUN /bin/bash -l -c "bundle install"

COPY . /web
