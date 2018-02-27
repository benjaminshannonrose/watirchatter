class NavigationBar

  include LapisLazuli

  def the_link(data)
    _elm = browser.wait({:like => [:a, :text, data], :class => 'navbar-link'})
    _elm.click
  end
end