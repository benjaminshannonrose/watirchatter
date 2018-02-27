class ObjectHelper

  @@objects = {
      'Message Board' => '../page_objects/message_board.rb',
      'Focused Message' => '../page_objects/focused_message.rb',
      'Login Page' => '../page_objects/login_page.rb',
      'Signup Page' => '../page_objects/signup_page.rb',
      'Navigation Bar' => '../page_objects/navigation_bar.rb',
      'My Account Page' => '../page_objects/my_account_page.rb',
      'Delete Account Form' => '../page_objects/delete_account_form.rb'
  }

  def get_object(object_name)
    object_file = @@objects[object_name]
    require_relative("../../../features/support/page_objects/#{object_file}")
    Kernel.const_get(object_name.gsub(' ', '')).new
  end
end