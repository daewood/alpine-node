FROM alpine:edge
MAINTAINER daewood
RUN apk --update --no-progress add nodejs unrar bash git imagemagick
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org
RUN cnpm install -g pm2 --loglevel warn
VOLUME /app
EXPOSE 3000
#CMD pm2 startOrGracefulReload /app/pm2.json