Feature:
In order to know what the cost of sending an parcel abroad
As a customer
I want to be able to calculate the cost

Scenario: Parcel inside Europe with weight 1kg
Given I open the url "https://www.posten.no/sende/pakke/utland/sende-pakke-til-utlandet"
When I click on the element "(//input[@name='country'])[1]"
Then I expect that element "#send-package-normal-price-europe" contains the text "324"

Scenario: Parcel outside Europe with weight 1kg
Given I open the url "https://www.posten.no/sende/pakke/utland/sende-pakke-til-utlandet"
When I click on the element "(//input[@name='country'])[2]"
Then I expect that element "#send-package-normal-price-others" contains the text "355"
