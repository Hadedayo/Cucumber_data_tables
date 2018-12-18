Given("I am on the BBC home page") do
  bbc_home_page.visit_home_page
end

And("I move to the sign in page") do
  bbc_home_page.sign_in_on_bbc_site
end

When("I proceed to register") do
  login_page.register_now_link
end

And("I input my DOB") do
  dob_page.click_13_or_over
  dob_page.input_day_in_dob
  dob_page.input_month_in_dob
  dob_page.input_year_in_dob
  dob_page.click_continue_button
end

And(/^I input the necessary details with the password details (.*)$/) do |password|
  registration_page.fill_in_email
  registration_page.fill_in_password(password)
  sleep 1
  registration_page.show_password
  sleep 1
  registration_page.fill_in_postcode
  registration_page.select_gender_dropdown
  registration_page.no_email_update
  registration_page.click_register_button
end

Then(/^I receive the corresponding error (.*)$/) do |error|
  expect(registration_page.get_error_message).to eq error
end
