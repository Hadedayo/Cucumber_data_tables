require 'capybara/dsl'

class DOBpage
  include Capybara::DSL

  DAY = 'day-input'
  MONTH = 'month-input'
  YEAR = 'year-input'

  def click_13_or_over
    find("a[aria-label='13 or over']").click
  end

  def input_day_in_dob
    fill_in(DAY, :with => 22)
  end

  def input_month_in_dob
    fill_in(MONTH, :with => "April")
  end

  def input_year_in_dob
    fill_in(YEAR, :with => 1990)
  end

  def click_continue_button
    find("button[type='submit']").click
  end

end
