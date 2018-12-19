from "circleci/node:latest-browsers"

USER root

RUN \
  apt-get install fonts-ipafont-gothic fonts-ipafont-mincho

ENV APP_ENV /app
WORKDIR $APP_ENV

ADD package.json      $APP_ENV
ADD package-lock.json $APP_ENV

RUN ls -la

RUN \
  npm ci

COPY . $APP_ENV

RUN \
  chown -R circleci:circleci .

USER circleci

CMD [ "npm", "test" ]
