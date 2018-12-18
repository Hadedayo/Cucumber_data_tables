require 'capybara/dsl'

class RegistrationPage

  include Capybara::DSL

  EMAIL_INPUT_FIELD = 'user-identifier-input'
  POSTCODE_INPUT = 'postcode-input'
  GENDER_FIELD = 'gender-input'
  NO_THANKS = '//*[@id="marketingOptIn"]/div[1]/div[2]/label/div'
  REGISTER_BUTTON = '#submit-button'
  PASSWORD_INPUT = 'password-input'
  SHOW_PASSWORD = '//*[@id="toggle-password-type"]/span'
  PASSWORD_ERROR_MESSAGE = '//*[@id="form-message-password"]/p'

  def fill_in_email
    fill_in(EMAIL_INPUT_FIELD, :with => 'abc123gurney@hotmail.com')
  end

  def fill_in_postcode
    fill_in(POSTCODE_INPUT, :with => 'TW10 6NF')
  end

  def select_gender_dropdown
    select('Female', :from => GENDER_FIELD)
  end

  def no_email_update
    find(:xpath, NO_THANKS).click
  end

  def fill_in_password(text)
    fill_in(PASSWORD_INPUT, :with => text)
  end

  def show_password
    find(:xpath, SHOW_PASSWORD).click
  end

  def click_register_button
    find(REGISTER_BUTTON).click
  end

  def get_error_message
    find(:xpath,PASSWORD_ERROR_MESSAGE).text
  end

end
