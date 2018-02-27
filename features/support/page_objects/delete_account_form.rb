class DeleteAccountForm

  include LapisLazuli

  def password_field(data)
    _elm = browser.wait(:id => 'deleteAccountPassword')
    _elm.send_keys(data)
  end

  def the_button(data)
    _elm = browser.wait(:like => [:button, :text, 'Delete'])
    _elm.click
  end

end