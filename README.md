# Node / NPM /PM2 Docker Image on Alpine
Usage:
$ docker run --rm daewood/alpine-node node -v
$ docker run --rm daewood/alpine-node pm2 -v
$ docker run --rm daewood/alpine-node npm -v
$ docker run --rm daewood/alpine-node cnpm -v

Create a Dockerfile in your nodejs application directory with the following content:

FROM readytalk/nodejs

WORKDIR /app
ADD package.json /app/
RUN npm install
ADD . /app

CMD []
ENTRYPOINT ["npm", "start"]
Run the following command in your application directory:

docker build -t my/app .