
Feature: User resets password
  As a user
  I want to be able to sign up/sign in/sign out

  - Standard email/password signup without email confirmation
  - Standard password reset via. email
  - Standard login/logout

  Background:
    Given the user "user@email.com" with "password"

  Scenario: A
    Given I am on the sign in page
    Then I should see "Remember me"
    Then I should see "Forgot your password?"
    When I click "Forgot your password?"
    And I fill in "user_email" with "user@email.com"
    And I press "Send me reset password instructions"
    Then "user@email.com" should receive an email
    When I open the email
    Then I should see "Change my password" in the email body
    When I follow "Change my password" in the email
    Then I should see "Change your password"
    When I fill in "New password" with "secret!!"
    And I fill in "Confirm new password" with "secret!!"
    And I press "Change my password"
    Then I should see "Your password was changed successfully. You are now signed in."
    When I click "Sign Out"
    Then I should see "Sign In"
    When I click "Sign In"
    When I fill in "Email" with "user@email.com"
    And I fill in "Password" with "secret!!"
    And I press "Sign in"
    Then I should see "Signed in successfully."

  Scenario: B
    Given I am on the sign in page
    Then I should see "Forgot your password?"
    When I click "Forgot your password?"
    And I fill in "user_email" with "user@email.com"
    And I press "Send me reset password instructions"
    Then "user@email.com" should receive an email
    When I open the email
    Then I should see "Change my password" in the email body
    When I follow "Change my password" in the email
    Then I should see "Change your password"
    When I fill in "New password" with "secret"
    And I fill in "Confirm new password" with "secret!!"
    And I press "Change my password"
    Then I should see "Password confirmation doesn't match Password"