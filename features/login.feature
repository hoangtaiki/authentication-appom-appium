Feature: Login
  Login into system for an user with email and password

  @login_fail
  Scenario Outline: Login with invalid credentials
    Given I fill in email with '<email>'
    And I fill in password with '<password>'
    When I press sign in button
    Then  Alert will show error "The email or password is incorrect"
  Examples:
    | email                | password |
    | hoangtaiki@gmail.com | 123456   |
    | duchoang.vp@gmil.com | 789101   |
    | him.lam@gmail.com    | nh8712   |

  @login_success
  Scenario: Login with valid credentials
    Given I fill in email with 'duchoang.vp@gmail.com'
    And  I fill in password with '12345678'
    When I press sign in button
    Then I see welcome label appear with title 'Welcome back, Parzival!'