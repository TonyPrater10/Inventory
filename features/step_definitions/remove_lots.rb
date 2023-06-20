require '../../support/login_method'

World(LoginHelper)

Given("I am a logged-in user on the Bulq shop page and I have a saved lot") do
  login_with_credentials
  pending
end

When("I navigate to the watch list page") do
  visit "https://www.bulq.com/account/starred/lots/"
end

When(/^I remove a lot from the watch list"$/) do
  unwatch_button = find(:css, ".btn-text", text: "Unwatch")
  unwatch_button.click
end

When(/^I refresh the page"$/) do
  refresh
end

Then("the user icon should not contain the text {text}") do |text|
  user_icon = find(".header-nav-link--account.dropdown-toggle")
  expect(user_icon).not_to have_content(text)
end

Then(/^The watch list page should show a "([^"]*)" message$/) do |expected_message|
  expect(page).to have_content(expected_message)
end



