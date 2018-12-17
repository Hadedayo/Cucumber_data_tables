require_relative 'pages/home_page'
require_relative 'pages/login_page'
require_relative 'pages/dob_page'
require_relative 'pages/registration_page'


module BbcSite

  def bbc_home_page
    Homepage.new
  end

  def login_page
    Loginpage.new
  end

  def dob_page
    DOBpage.new
  end

  def registration_page
    RegistrationPage.new
  end

end
