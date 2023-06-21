Feature: Search Lots
  Scenario: Search for a lot using a listing id
    Given I am a logged-in user
    And I'm on the Bulq shop page
    When I enter a listing id in the search bar
    And submit the search
    Then I'm taken to the lot listing

