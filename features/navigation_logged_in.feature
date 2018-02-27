@navigation_logged_in
Feature: navigation (logged in)
  This feature will make sure the navigation is working properly while a user is logged in

  Background: user logs in and lands on message board
    Given the user navigates to the "message-board" page
    And the user clicks the_link labeled "Login" on the Navigation Bar
    And the user enters valid information on the Login Page:
      | email_input    | old@old.com |
      | password_input | 123456      |
    And the user clicks the_login_button on the Login Page

  Scenario: user clicks on my account link on navigation bar
    When the user clicks the_link labeled "My Account" on the Navigation Bar
    Then the user should see the_header that reads "Manage Account" on the My Account Page

  Scenario: user clicks on message board link on navigation bar
    When the user clicks the_link labeled "Message Board" on the Navigation Bar
    Then the user should see a_greeting that reads "Hi there! Go ahead and say something:" on the Message Board