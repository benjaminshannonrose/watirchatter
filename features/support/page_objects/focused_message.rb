class FocusedMessage

  include LapisLazuli

  def a_post
    browser.wait(:h3 => {:id => 'highlightedTitle'})
  end

  def title_field(data)
    elm = browser.wait(:h3 => {:id => 'highlightedTitle'})
    found_elm_text = elm.text
    assert_equal(found_elm_text, data)
  end

  def username_field(data)
    elm = browser.wait(:strong => {:id => 'highlightedUsername'})
    found_elm_text = elm.text
    assert_equal(found_elm_text, data)
  end

  def message_field(data)
    elm = browser.wait(:p => {:id => 'highlightedMessage'})
    found_elm_text = elm.text
    assert_equal(found_elm_text, data)
  end

end