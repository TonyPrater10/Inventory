# features/step_definitions/password_reset_steps.rb

Given(/^I am on the Bulq Login page$/) do
  visit "https://www.bulq.com/account/sign_in/"
end

When(/^I enter an email in the correct format$/) do
  valid_email = ENV['VALID_EMAIL']
  fill_in "account_email", with: valid_email
end

When(/^I enter an invalid email$/) do
  invalid_email = ENV['INVALID_EMAIL']
  fill_in "account_email", with: invalid_email
end

When(/^I click the "reset instructions" button$/) do
  click_button("Email reset instructions")
end

Then(/^I should see "([^"]*)" message$/) do |expected_message|
  if expected_message == "Error message"
    expect(page).to have_css('.error')
  elsif expected_message == "Confirmation message"
    # puts "Reset instructions sent"
    # expect(page).to have_css('.success')
  else
    # puts "something went wrong"
    # fail test
  end
end