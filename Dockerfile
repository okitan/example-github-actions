from "circleci/node:latest-browsers"

USER root

RUN \
  apt-get install fonts-ipafont-gothic fonts-ipafont-mincho

ENV APP_ROOT /github/workspace
WORKDIR $APP_ROOT

ADD package.json      $APP_ROOT
ADD package-lock.json $APP_ROOT
RUN \
  npm ci

COPY . $APP_ROOT

CMD [ "npm", "test" ]
