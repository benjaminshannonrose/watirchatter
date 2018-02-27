class LoginPage

  include LapisLazuli

  def the_login_form
    browser.wait(:like => [:h2, :text, 'Login'])
  end

  def email_input(data)
    _elm = browser.wait(:id => 'loginEmail')
    _elm.send_keys(data)
  end

  def password_input(data)
    _elm = browser.wait(:id => 'loginPassword')
    _elm.send_keys(data)
  end

  def the_login_button()
    _elm = browser.wait(:id => 'loginButton')
    _elm.click
  end
end