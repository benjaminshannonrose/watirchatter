class MessageBoard

  include LapisLazuli

  def new_post_title_field(data)
    _elm = browser.wait(:id => 'newPostTitle')
    _elm.send_keys(data)
  end

  def new_post_message_field(data)
    _elm = browser.wait(:id => 'newPostContent')
    _elm.send_keys(data)
  end

  def the_post(data)
    _elm = browser.wait(:like => [:h4, :text, data])
    _elm.click
  end

  def the_post_button
    _elm = browser.wait(:id => 'postButton')
    _elm.click
  end

  def the_link(data)
    _elm = browser.wait({:like => [:a, :text, data], :class => 'messageBoardLink'})
    _elm.click
  end

  def the_invitation_to_log_in_or_sign_up
    browser.wait(:id => 'notLoggedInMessage')
  end

  def a_greeting(data)
    browser.wait(:h3 => {:id => 'userGreeting', :text => data})
  end

  def be_the_latest_post(data)
    _elms = browser.wait_all(:like => [:h4, :text, data])
    _index = _elms.length
    _found_elm_text = _elms[_index-1].text
    puts _found_elm_text
    puts data
    assert_equal(_found_elm_text, data)
  end

  def the_delete_link_on_the_post(data)
    _parent = browser.wait(:like => [:h4, :text, data]).parent.next_sibling.next_sibling
    _elm = browser.wait(:a => {:class => 'deletePost'}, :context => _parent)
    _elm.click
  end

  def not_be_present(data)
    _elm = browser.wait(:like => [:h4, :text, data], :throw => false, :timeout => 1)
    if _elm == nil
      puts 'success: deleted element not present'
    end
  end

end