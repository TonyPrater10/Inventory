Feature: Watch Lots
  Scenario: Add a random lot listing to watch list
    Given I am logged in as a user
    And I am on the shop page
    When I click the watch button for a random listing with id "<string>"
    And I navigate to my watch list
    Then the lot should be added to my watch list
