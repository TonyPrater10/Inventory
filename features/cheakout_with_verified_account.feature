Feature:
  As a verified user
  I should be able to add a lot to my car
  and proceed with checking out my cart
  without receiving a verify step
Scenario: Checkout as a verified user
Given I am a logged-in user
And I have verified my email address
When I add a lot to my cart
And attempt to checkout my cart
Then I am taken to the checkout page