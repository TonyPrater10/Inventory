Feature: Checkout with item in cart
  Scenario: Checkout as an unverified user
    Given I am a logged-in user
    And I have not verified my email address
    When I add a lot to my cart
    And attempt to checkout my cart
    Then the page should show the heading "Verify your password"

