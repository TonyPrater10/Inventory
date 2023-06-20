module LoginHelper
  def login_with_credentials
  # Code to perform the login
  visit "https://www.bulq.com/account/sign_in/"
  fill_in "account_email", with: ENV['EMAIL']
  fill_in "account_password", with: ENV['PASSWORD']
  click_button "Sign In"
  end
end