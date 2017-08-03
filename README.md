# A repository to illustrate use of cucumber

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
