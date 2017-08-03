# A repository to illustrate use of cucumber

## Requirements
Node.js and npm
Hint: https://nodejs.org and download for your os

## Install software
```
$ npm install
```

## Run test
On standalone server:
```
$ ./node_modules/.bin/wdio wdio.conf.js
```

Against selenium grid in docker:
```
$ sudo docker-compose up&
$ ./node_modules/.bin/wdio wdio.DOCKER.conf.js
```
