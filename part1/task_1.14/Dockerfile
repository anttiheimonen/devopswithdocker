FROM ruby:2.6.0

WORKDIR /programs
RUN apt update && apt install curl git -y
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs

RUN git clone https://github.com/docker-hy/rails-example-project
RUN git clone https://github.com/rbenv/rbenv.git
ENV PATH="/programs/rbenv/bin:${PATH}"
# WORKDIR /programs/rbenv
WORKDIR /programs/rails-example-project
RUN gem install bundler
RUN bundle install
RUN rails db:migrate
ENTRYPOINT ["rails", "s"]
