@message_board_logged_in
Feature: message board (logged in)
  This feature will make sure the message board is working properly while a user is logged in

  Background: user lands on login page
    Given the user navigates to the "message-board" page
    And the user clicks the_link labeled "Login" on the Navigation Bar

  Scenario: a logged in user posts a new message
    And the user enters valid information on the Login Page:
      | email_input    | new@new.com |
      | password_input | 123456      |
    And the user clicks the_login_button on the Login Page
    When the user enters "Test Post" into the new_post_title_field of the Message Board
    And the user enters "This is an automated test post" into the new_post_message_field of the Message Board
    And the user clicks the_post_button on the Message Board
    Then the post titled "Test Post" should be_the_latest_post on the Message Board

  Scenario: a logged in user posts a new message and deletes it
    And the user enters valid information on the Login Page:
      | email_input    | new@new.com |
      | password_input | 123456      |
    And the user clicks the_login_button on the Login Page
    When the user enters "Delete Post" into the new_post_title_field of the Message Board
    And the user enters "This is an automated post to be deleted by me" into the new_post_message_field of the Message Board
    And the user clicks the_post_button on the Message Board
    And the user clicks the_delete_link_on_the_post titled "Delete Post" on the Message Board
    Then the post titled "Delete Post" should not_be_present on the Message Board

  Scenario: administrator logs in and deletes a post made by another user
    And the user enters valid information on the Login Page:
      | email_input    | admin@admin.com |
      | password_input | 123456          |
    And the user clicks the_login_button on the Login Page
    And the user clicks the_delete_link_on_the_post titled "Test Post" on the Message Board
    Then the post titled "Test Post" should not_be_present on the Message Board

  Scenario: logged in user clicks on a specific post
    And the user enters valid information on the Login Page:
      | email_input    | new@new.com |
      | password_input | 123456      |
    And the user clicks the_login_button on the Login Page
    When the user clicks the_post titled "First Post" on the Message Board
    Then the user should see a_post in the Focused Message
    And the title_field of the Focused Message should read "First Post"
    And the username_field of the Focused Message should read "newuser"
    And the message_field of the Focused Message should read "I'm excited to be the one who gets to write the first post!"