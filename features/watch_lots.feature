Feature: Watch Products
  As a logged-in user
  I want to be able to save lots to my watch list
  So that I can keep tabs on products in my list

  Scenario: Add a random product to watch list
    Given I am logged in as a user
    And I am on the shop page
    When I click the watch button for a random listing with id "<string>"
    And I navigate to my watch list
    Then the lot should be added to my watch list


