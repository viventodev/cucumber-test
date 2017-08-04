# A repository to illustrate the use of cucumber

## Setup

### Requirements
Git
https://git-scm.com/downloads

Node.js and npm
Hint: https://nodejs.org and download for your os
### If you want to run against a Selenium grid in Docker containers
Install docker and docker-compose for your os.
For windows both are included in the install:
https://docs.docker.com/docker-for-windows/install/

For Linux you need to install them separately, cf
https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/
https://docs.docker.com/compose/install/
### Clone the project
```
$ git clone https://github.com/viventodev/cucumber-test.git
$ cd cucumber-test
```
### Install project software
```
$ npm install
```
## Run tests
On standalone server:
```
$ ./node_modules/.bin/wdio wdio.conf.js
```
Against Selenium grid in docker:
```
$ sudo docker-compose up&
$ ./node_modules/.bin/wdio wdio.DOCKER.conf.js
```
