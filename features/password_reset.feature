Feature: Password Reset
  Scenario: Reset password with valid email
    Given I am on the Bulq Login page
    When I enter an email in the correct format
    And I click the "Email Reset Instructions" button
    Then I should see a confirmation message

  Scenario: Reset password with invalid email
    Given I am on the Bulq Login page
    When I enter an invalid email
    And I click the "Email Reset Instructions" button
    Then I should see an error message