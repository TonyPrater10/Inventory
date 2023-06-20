Feature: Search Lots
  As a logged-in user
  I want to be able to search for a listing using a listing id
  So that I can find the exact product I'm looking for

  Scenario: Search for a lot using a listing id
    Given I am a logged-in user
    And I'm on the Bulq shop page
    When I enter a listing id in the search bar
    And submit the search
    Then I'm taken to the lot listing

