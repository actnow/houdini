FROM ruby:2.3.7-stretch
ARG USER
RUN mkdir /myapp
COPY script/build/debian/prebuild.sh myapp/script/build/debian/prebuild.sh
RUN myapp/script/build/debian/prebuild.sh
COPY script/build/debian/node.sh myapp/script/build/debian/node.sh
RUN myapp/script/build/debian/node.sh
COPY script/build/debian/postgres.sh myapp/script/build/debian/postgres.sh
RUN myapp/script/build/debian/postgres.sh
COPY script/build/debian/java.sh myapp/script/build/debian/java.sh
RUN myapp/script/build/debian/java.sh
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
CMD rake -T

