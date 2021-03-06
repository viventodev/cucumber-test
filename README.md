# A repository to illustrate the use of cucumber to test a web-application

## Setup

### Requirements
Git
https://git-scm.com/downloads

Node.js and npm
https://nodejs.org
### If you want to run against a Selenium grid in Docker containers
Install docker and docker-compose for your os.
For windows both are included in the install:
https://docs.docker.com/docker-for-windows/install/

For Linux you need to install them separately, cf
https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/
https://docs.docker.com/compose/install/
### Clone the project
``` Shell
$ git clone https://github.com/viventodev/cucumber-test.git
$ cd cucumber-test
```
### Install the project software
``` Shell
$ npm install
```
## Run tests
On standalone server:
``` Shell
$ ./node_modules/.bin/wdio wdio.conf.js
```
Against Selenium grid in docker:
``` Shell
$ sudo docker-compose up # in a dedicated terminal window
$ ./node_modules/.bin/wdio wdio.DOCKER.conf.js
```
Only run a specific feature:
``` Shell
$ ./node_modules/.bin/wdio wdio.DOCKER.conf.js --spec ./src/features/Posten_finn_kalkulator.feature
```

## What is being tested
There are two features with multiple scenarios
###
[src/features/Posten_innenlands_porto.feature](src/features/Posten_innenlands_porto.feature)
``` gherkin
Feature:
In order to know what the cost of sending an parcel
As a customer
I want to be able to calculate the cost

Scenario: Parcel with weight under 10kg
Given I open the url "https://www.posten.no/sende/pakke/over-2-kg"
When I click on the element "(//input[@name='weight'])[1]"
Then I expect that element "span.js-innerText-from-dataAttr-price" contains the text "140,-"

...

Scenario: Parcel with weight under 10kg small screen
Given I open the url "https://www.posten.no/sende/pakke/over-2-kg"
And I have a screen that is 412 by 732 pixels
When I click on the element "(//input[@name='weight'])[1]"
Then I expect that element "span.js-innerText-from-dataAttr-price" contains the text "140,-"

```
###
[src/features/Posten_utenlands_porto.feature](src/features/Posten_utenlands_porto.feature)
```gherkin
Feature:
In order to know what the cost of sending an parcel abroad
As a customer
I want to be able to calculate the cost

Scenario: Parcel inside Europe with weight 1kg
Given I open the url "https://www.posten.no/sende/pakke/utland/sende-pakke-til-utlandet"
When I click on the element "(//input[@name='country'])[1]"
Then I expect that element "#send-package-normal-price-europe" contains the text "324"

...

Scenario: Parcel inside Europe with weight 1kg small screen
Given I open the url "https://www.posten.no/sende/pakke/utland/sende-pakke-til-utlandet"
And I have a screen that is 412 by 732 pixels
When I click on the element "(//input[@name='country'])[1]"
Then I expect that element "#send-package-normal-price-europe" contains the text "324"
```
