class MyAccountPage

  include LapisLazuli

  def the_delete_account_button
    _elm = browser.wait(:id => 'deleteFormOpen')
    _elm.click
  end

  def the_header(data)
    _elm = browser.wait(:like => [:h2, :text, data])
  end

end