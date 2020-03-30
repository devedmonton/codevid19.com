FROM ruby:2.6.5-stretch as basic

ENV CONTAINER_ENV basic

RUN gem install bundler:2.1.2

ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8

ENV APP_USER app_user
ENV APP_USER_HOME /home/${APP_USER}
ENV APP_GROUP app_group
ENV HOME ${APP_USER_HOME}

RUN groupadd --system ${APP_GROUP} \
    && useradd --no-log-init --system --gid ${APP_GROUP} --create-home --home-dir ${APP_USER_HOME} ${APP_USER} \
    && chown ${APP_USER}:${APP_GROUP} ${APP_USER_HOME}

WORKDIR ${APP_USER_HOME}/app

ADD Gemfile .
ADD Gemfile.lock .

RUN bundle install

ADD . .
