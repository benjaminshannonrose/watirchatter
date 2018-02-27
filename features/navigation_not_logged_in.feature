@navigation_not_logged_in
Feature: navigation (not logged in)
  This feature will make sure the navigation is working properly while no user is logged in

  Background: user lands on message board
    Given the user navigates to the "message-board" page

  Scenario: user clicks sign up link
    When the user clicks the_link labeled "Sign Up" on the Navigation Bar
    Then the user should see the_signup_form on the Signup Page

  Scenario: user clicks log in link
    When the user clicks the_link labeled "Login" on the Navigation Bar
    Then the user should see the_login_form on the Login Page

  Scenario: user clicks message board link
    When the user clicks the_link labeled "Message Board" on the Navigation Bar
    Then the user should see the_invitation_to_log_in_or_sign_up on the Message Board
  