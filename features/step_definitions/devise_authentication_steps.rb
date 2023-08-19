Given("I create an admin with email {string} and password {string}") do |email, password|
  visit new_admin_registration_path
  fill_in "admin_email", with: email
  fill_in "admin_password", with: password
  fill_in "admin_password_confirmation", with: password
  click_button "Sign up"
end

Given("I am signed in as {string} with password {string}") do |email, password|
  visit new_admin_session_path
  fill_in "admin_email", with: email
  fill_in "admin_password", with: password
  click_button "Log in"
end
