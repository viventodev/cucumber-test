Feature:
In order to know what the cost of sending an parcel
As a customer
I want to be able to calculate the cost

Scenario: Parcel with weight under 10kg
Given I open the url "https://www.posten.no/sende/pakke/over-2-kg"
When I click on the element "(//input[@name='weight'])[1]"
Then I expect that element "span.js-innerText-from-dataAttr-price" contains the text "140,-"

Scenario: Parcel with weight between 10 and 20kg
Given I open the url "https://www.posten.no/sende/pakke/over-2-kg"
When I click on the element "(//input[@name='weight'])[2]"
Then I expect that element "span.js-innerText-from-dataAttr-price" contains the text "250,-"

Scenario: Parcel with weight over 20kg
Given I open the url "https://www.posten.no/sende/pakke/over-2-kg"
When I click on the element "(//input[@name='weight'])[3]"
Then I expect that element "span.js-innerText-from-dataAttr-price" contains the text "360,-"

Scenario: Parcel with weight under 10kg reduced size window
Given I open the url "https://www.posten.no/sende/pakke/over-2-kg"
And I have a screen that is 412 by 732 pixels
When I click on the element "(//input[@name='weight'])[1]"
Then I expect that element "span.js-innerText-from-dataAttr-price" contains the text "140,-"

Scenario: Parcel with weight between 10 and 20kg reduced size window
Given I open the url "https://www.posten.no/sende/pakke/over-2-kg"
And I have a screen that is 412 by 732 pixels
When I click on the element "(//input[@name='weight'])[2]"
Then I expect that element "span.js-innerText-from-dataAttr-price" contains the text "250,-"

Scenario: Parcel with weight over 20kg reduced size window
Given I open the url "https://www.posten.no/sende/pakke/over-2-kg"
And I have a screen that is 412 by 732 pixels
When I click on the element "(//input[@name='weight'])[3]"
Then I expect that element "span.js-innerText-from-dataAttr-price" contains the text "360,-"
