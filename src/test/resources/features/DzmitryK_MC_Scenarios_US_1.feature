#Author : Dzmitry Kazlou
# Manual test cases are in Test Set Jira ticket JUN-137
@predefined1
Feature: Medical Center Scenarios for User Story#1

#Manual test is in JUN-308
#Scenario:Email address validation for patient registration.

# M

  Scenario: Patient log in with valid credentials
    Given I open url "https://medicenter-qa2.vercel.app"
    Then I wait for 1 sec
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "katyachehovich@enunal.com" into element with xpath "//input[@id='email']"
    Then I type "test987" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[contains(text(),'Sign in')]"
    Then I wait for 1 sec
    Then I wait for element with xpath "//h1[contains(text(),'John Jay')]" to be present

    # Manual test is in JUN-138
  Scenario: Invalid email doesn't accept for registering as a patient
    Given I open url "https://medicenter-qa2.vercel.app"
    Then I wait for 1 sec
    Then I click on element with xpath "//button[contains(text(),'Create account')]"
    Then I type "katyachehovich@enunal;com" into element with xpath "//input[@id='email']"
    Then I type "test987" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[contains(text(),'Sign up')]"
    Then I wait for 2 sec
   #// BLOCKER JS element??  Then element with xpath "//" should contain text "A part"

  # Manual test is in JUN-201
  Scenario:Empty password for registering as a patient
    Given I open url "https://medicenter-qa2.vercel.app"
    Then I wait for 1 sec
    Then I click on element with xpath "//button[contains(text(),'Create account')]"
    Then I type "katyachehovich@enunal.com" into element with xpath "//input[@id='email']"
    Then I type "" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[contains(text(),'Sign up')]"
    Then I wait for 2 sec
    Then element with xpath "//span[contains(text(),'Signup requires a valid password')]" should be present

    #Manual test is in JUN-202
  Scenario: The password is hidden by bullets
    Given I open url "https://medicenter-qa2.vercel.app"
    Then I wait for 1 sec
    Then I click on element with xpath "//button[contains(text(),'Create account')]"
    Then I type "katyachehovich@enunal.com" into element with xpath "//input[@id='email']"
    Then I type "123456" into element with xpath "//input[@id='password']"
    Then element with xpath "//input[@id='password']" should not contain text "123456"

    # Manual test is in JUN-237
  Scenario:The password has a minimum length of 6 characters
    Given I open url "https://medicenter-qa2.vercel.app"
    Then I wait for 1 sec
    Then I click on element with xpath "//button[contains(text(),'Create account')]"
    Then I type "katyachehovich@enunal.com" into element with xpath "//input[@id='email']"
    Then I type "test8" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[contains(text(),'Sign up')]"
    Then I wait for 2 sec
    Then element with xpath "//span[contains(text(),'Password should be at least 6 characters.')]" should be present

# Manual test is in JUN-239
  Scenario: Password can't contain a whitespace
    Given I open url "https://medicenter-qa2.vercel.app"
    Then I wait for 1 sec
    Then I click on element with xpath "//button[contains(text(),'Create account')]"
    Then I type "katyachehovich@enunal.com" into element with xpath "//input[@id='email']"
    Then I type "test 8" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[contains(text(),'Sign up')]"
    Then I wait for 2 sec
    Then element with xpath "//[contains(text(),'Password should not contain white space.')]" should be present

    #Manual test is in JUN-298
  Scenario: User can reset forgotten password
    Given I open url "https://medicenter-qa2.vercel.app"
    Then I wait for 1 sec
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I click on element with xpath "//a[contains(text(),'Forgot your password?')]"
    Then I type "katyachehovich@enunal.com" into element with xpath "//input[@id='email']"
    Then I click on element with xpath "//button[contains(text(),'Send reset password instructions')]"
    Then I wait for 1 sec
    Then element with xpath "//span[contains(text(),'Check your email for the password reset link')]" should be present