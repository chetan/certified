FROM ubuntu:xenial

RUN apt-get update && apt-get install -y \
  build-essential \
  ruby-dev \
  ruby-ronn \
  && gem install fpm --no-ri --no-rdoc

VOLUME /tmp/certified
CMD /bin/bash -c "cd /tmp/certified && make all"
