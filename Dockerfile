FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.9.4

RUN gem install bitclust-dev --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["update-database.rb"]
CMD ["--help"]
