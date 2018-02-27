@messageboard_not_logged_in
Feature: message board (not logged in)
  This feature will make sure the message board is working properly while no user is logged in

  Background: user lands on message board
    Given the user navigates to the "message-board" page

  Scenario: user clicks on a specific post
    When the user clicks the_post titled "First Post" on the Message Board
    Then the user should see a_post in the Focused Message
    And the title_field of the Focused Message should read "First Post"
    And the username_field of the Focused Message should read "newuser"
    And the message_field of the Focused Message should read "I'm excited to be the one who gets to write the first post!"

  Scenario: user clicks log in link
    When the user clicks the_link labeled "Log in" on the Message Board
    Then the user should see the_login_form on the Login Page

  Scenario: user clicks sign up link
    When the user clicks the_link labeled "sign up" on the Message Board
    Then the user should see the_signup_form on the Signup Page



