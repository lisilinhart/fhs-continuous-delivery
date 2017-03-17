FROM ruby:2.4.0-alpine

# create new directory and set as workdirectory
RUN mkdir /usr/src/app
WORKDIR /usr/src/app

# optional: copy gemfiles beforehand -> if they change bundles are installed again
# makes app faster because bundle install isn't run every time
COPY Gemfile /usr/src/app
COPY Gemfile.lock /usr/src/app

# copy local files
COPY . /usr/src/app

# install bundless
RUN bundle install

# 0.0.0.0 bind on all interface for communication
CMD ["bundle", "exec", "ruby", "myapp.rb", "-o", "0.0.0.0"]


## to build: docker build -t fh-phone-normalizer .
## to clean up container afterwards: docker run --rm -it
## to create volume: -v "$PWD:/usr/src/app"
## -v "src:target"
## complete command with port: docker run --rm -it -p 4567:4567 -v "$PWD:/usr/src/app" fh-phone-normalizer