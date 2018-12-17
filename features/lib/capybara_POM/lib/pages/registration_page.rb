require 'capybara/dsl'

class RegistrationPage
  include Capybara::DSL

  EMAIL_INPUT_FIELD = 'user-identifier-input'
  POSTCODE_INPUT = '#postcode-input'
  GENDER_FIELD = '#gender-input'
  NO_THANKS = '//*[@id="marketingOptIn"]/div[1]/div[2]/label/div'
  REGISTER_BUTTON = '#submit-button'

  def fill_in_email
    fill_in(EMAIL_INPUT_FIELD, :with => 'abc123gurney@hotmail.co.uk')
  end

  def fill_in_postcode
    fill_in(POSTCODE_INPUT, :with => 'TW10 6NF')
  end

  def select_gender_dropdown
    select('Female', :from => GENDER_FIELD)
  end

  def no_email_update
    find(NO_THANKS).click
  end

  def click_register_button
    find(REGISTER_BUTTON).click
  end

end
