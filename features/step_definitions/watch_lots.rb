require '../../support/login_method'

World(LoginHelper)

Given("I am a logged-in user on the Bulq shop page") do
  login_with_credentials
  visit "https://www.bulq.com/lots/?sort_direction=desc&sort_field=updated_at"
end

When(/^I click the watch button for a random listing with id "([^"]*)"$/) do

  # random listing ids from the 'newly added inventory'
  listing_ids = %w[CSAA775985 CSAA775988 CSAA775993]
  @random_listing_number = listing_ids.sample

  listing = page.find(:xpath, "//div[@id='search-browse-app']//*[contains(@class, 'listing-square__name') and contains(text(), '#{@random_listing_number}')]")
  watch_button = listing.find(:css, 'button.btn.btn-watch.ng-scope')
  watch_button.click
end

When("I navigate to the watch list page") do
  visit "https://www.bulq.com/account/starred/lots/"
end

Then("I should be on the watch list page") do
  expect(page).to have_title('BULQ: Watch List')
end

Then("the lot should be added to my watch list") do
  add_to_cart_button = find(:css, ".btn-block.ng-isolate-scope")
  expect(add_to_cart_button).to have_selector("[listing-name='#{@random_listing_number}']")
end
