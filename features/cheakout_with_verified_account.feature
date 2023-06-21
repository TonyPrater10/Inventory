Feature: Add a lot to cart without verify step
  Scenario: Checkout as a verified user
    Given I am a logged-in user
    And I have verified my email address
    When I add a lot to my cart
    And attempt to checkout my cart
    Then I am taken to the checkout page