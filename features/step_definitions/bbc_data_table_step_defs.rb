Given("I am on the BBC home page") do
  bbc_home_page.visit_home_page
end

Given("I move to the sign in page") do
  bbc_home_page.sign_in_on_bbc_site
end

When("I proceed to register") do
  login_page.register_now_link
end

When("I input my DOB") do
  dob_page.click_13_or_over
  dob_page.input_day_in_dob
  dob_page.input_month_in_dob
  dob_page.input_year_in_dob
  dob_page.click_continue_button
end

When("I input the necessary details with the password details a@{int}") do |int|
  
end

Then("I receive the corresponding error Sorry, that password is too short. It needs to be eight characters or more.") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I input the necessary details with the password details abcd{int}") do |int|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I receive the corresponding error Sorry, that password isn{string}s hard to guess.") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

When("I input the necessary details with the password details abcdefgh") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I receive the corresponding error Sorry, that password isn{string}t a letter.") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

When("I input the necessary details with the password details {int}") do |int|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I receive the corresponding error Sorry, that password isn't valid. Please include a letter.") do
  pending # Write code here that turns the phrase above into concrete actions
end
