class SignupPage

  include LapisLazuli

  def the_signup_form
    browser.wait(:like => [:h2, :text, 'Create your account'])
  end

  def username_input(data)
    _elm = browser.wait(:id => 'newUsername')
    _elm.send_keys(data)
  end

  def email_input(data)
    _elm = browser.wait(:id => 'newEmail')
    _elm.send_keys(data)
  end

  def confirm_email_input(data)
    _elm = browser.wait(:id => 'confirmEmail')
    _elm.send_keys(data)
  end

  def password_input(data)
    _elm = browser.wait(:id => 'newPassword')
    _elm.send_keys(data)
  end

  def password_confirm_input(data)
    _elm = browser.wait(:id => 'confirmPassword')
    _elm.send_keys(data)
  end

  def the_signup_button
    _elm = browser.wait(:id => 'signUpButton')
    _elm.click
  end

end