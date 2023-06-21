Feature: Remove Watched Lot Listing
  Scenario: Remove a Product from Watch List
    Given I am logged-in user on the Bulq Watch List page
    And I have at least one product in my watch list
    When I remove a product from the watch list
    And I refresh the page
    Then the user icon should not contain the text "Sign Up"
    Then The watch list page should show a "Your Watch List is empty right now" message