require '../../support/go_to_watch_list'

World(WatchListHelper)

Given(/^I am a logged in user$/) do
  login_with_credentials
end

And(/^I have not verified my email address$/) do
  # check database for unverified status
  # SELECT * FROM users WHERE verified = 0 AND email = ENV['UNVERIFIED_EMAIL'];
  unverified_message = "For security, please verify your account by responding to the email that was sent to you. This is required to purchase from BULQ."
  expect(page).to have_content(unverified_message)
  pending
end

When (/^I add a lot to my cart$/) do
  go_to_watch_list
  #random lot list number.
  # TODO change this to get a random lot listing number
  lot_listing_number = "CSAA775993"
  add_to_cart_button = find(:css, "div[add-to-cart-button][listing-name='#{lot_listing_number}']")
  add_to_cart_button.click
end


And(/^attempt to checkout my cart"$/) do
  checkout_button = find(:css, ".cart-flyout-price-box-checkout-button")
  checkout_button.click
end

Then("the next page should show the heading {heading}") do |heading|
  expect(page).to have_content(heading)
end