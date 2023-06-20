require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec/expectations'
require 'dotenv/load'


Capybara.default_driver = :selenium_chrome

Given(/^I am on the Bulq homepage$/) do
  visit('https://www.bulq.com/')
  sleep 2 # Add a 2 second wait
end

When(/^I navigate to the login page$/) do
  visit('https://www.bulq.com/account/sign_in/')
  sleep 2 # Add a 2 second wait
end

When(/^I enter the email and password from the environment variables$/) do
  email = ENV['EMAIL']
  password = ENV['PASSWORD']
  fill_in('account_email', with: email)
  sleep 1 # Add a 1 second wait after entering email
  fill_in('account_password', with: password)
  sleep 1 # Add a 1 second wait after entering password
end

When(/^I enter an incorrect username and password$/) do
  fill_in('account_email', with: ENV['WRONG_EMAIL'])
  sleep 1 # Add a 1 second wait after entering email
  fill_in('account_password', with: ENV['WRONG_PASSWORD'])
  sleep 1 # Add a 1 second wait after entering password
end

When(/^I click the login button$/) do
  click_button('Sign in')
  sleep 2 # Add a 2 second wait after clicking login button
end

Then(/^I should be redirected to the homepage$/) do
  expect(page).to have_current_path('https://www.bulq.com/')
  sleep 2 # Add a 2 second wait
end

Then(/^I should stay on the login page$/) do
  expect(page).to have_current_path('https://www.bulq.com/account/sign_in/')
  sleep 2 # Add a 2 second wait
end

Then(/^I should see the "([^"]*)" message$/) do |message|
  expect(page).to have_content(message)
  sleep 2 # Add a 2 second wait
end

Then(/^I should see the error message "([^"]*)"$/) do |error_message|
  expect(page).to have_content(error_message)
  sleep 2 # Add a 2 second wait
end