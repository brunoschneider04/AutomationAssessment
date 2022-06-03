#language: en

Feature: Login into the system

  Background:
    Given the user is on the login page

  @login @login_success
  Scenario: TC001 - Login (Positive)
    When he enters a valid username and password and clicks on the Login button
    Then the Invoice List Page should be displayed

  @login @login_fail
  Scenario Outline: TC002 - Login (Negative)
    When he enters an invalid "<email>" and "<password>" and clicks on the Login button
    Then an error message should be displayed
    Examples:
    | email     | password |
    | Demouser  | abc123   |
    | demouser_ | xyz      |
    | demouser  | nananana |
    | demouser  | abc123   | #will fail because the credentials are valid
