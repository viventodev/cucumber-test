# A repository to illustrate use of cucumber

## Requirements

### Standalone
Node.js and npm
Hint: https://nodejs.org and download for your os

### Docker
Install docker and docker-compose for your os.
For windows both are included in the install:
https://docs.docker.com/docker-for-windows/install/

For Linux you need to install them separately, cf
https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/

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
