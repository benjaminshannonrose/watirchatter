@sign_up_log_in_log_out_and_delete_account
Feature: creating an account, logging into it, logging out from it, and deleting it
  This feature will make sure a user can create and delete an account

  Background: user lands on login page
    Given the user navigates to the "message-board" page

  Scenario: user enters valid information into login form and submits
    When the user clicks the_link labeled "Sign Up" on the Navigation Bar
    And the user enters valid information on the Signup Page:
      | username_input         | testuser      |
      | email_input            | test@test.com |
      | confirm_email_input    | test@test.com |
      | password_input         | 123456        |
      | password_confirm_input | 123456        |
    And the user clicks the_signup_button on the Signup Page
    Then the user should see a_greeting that reads "Hi there! Go ahead and say something:" on the Message Board
    When the user clicks the_link labeled "Log Out" on the Navigation Bar
    Then the user should see the_login_form on the Login Page

  Scenario: user logs in with valid newly created credentials and deletes account
    When the user clicks the_link labeled "Login" on the Navigation Bar
    And the user enters valid information on the Login Page:
      | email_input    | test@test.com |
      | password_input | 123456        |
    And the user clicks the_login_button on the Login Page
    Then the user should see a_greeting that reads "Hi there! Go ahead and say something:" on the Message Board
    When the user clicks the_link labeled "My Account" on the Navigation Bar
    And the user clicks the_delete_account_button on the My Account Page
    And the user enters "123456" into the password_field on the Delete Account Form
    And the user clicks the_button labeled "Delete" on the Delete Account Form
    Then the user should see the_invitation_to_log_in_or_sign_up on the Message Board

