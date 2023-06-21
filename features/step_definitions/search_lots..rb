require '../../support/login_method'
require '../../support/go_to_watch_list'

World(LoginHelper)

Given("I am a logged-in user on the Bulq shop page") do
  # call login helper method
  login_with_credentials
  visit "https://www.bulq.com/lots/?sort_direction=desc&sort_field=updated_at"
end

When(/^I enter a product listing in the search bar with id "([^"]*)"$/) do

  # random listing ids from the 'newly added inventory'
  listing_ids = %w[CSAA775985 CSAA775988 CSAA775993]
  @random_listing_number = listing_ids.sample


  search_bar = find(:css, "input[type='search']")
  fill_in(search_bar, with: @random_listing_number)
  search_icon = find(:css, ".btn.btn-primary.btn-search.search-box__submit")
  search_icon.click
end


Then("The page results should show the expected listing") do
  expect(page).to have_text(@random_listing_number)
end

