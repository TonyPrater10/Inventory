Feature: Login to Bulq website
  Scenario: Successful login
    Given I am on the Bulq homepage
    When I navigate to the login page
    And I enter my email and password
    And I click the login button
    Then I should see the homepage
    And I should see the message "Signed in successfully."

  Scenario: Failed login
    Given I am on the Bulq homepage
    When I navigate to the login page
    And I enter an incorrect email and password
    And I click the login button
    Then I should see an error message "Invalid Email or password."

