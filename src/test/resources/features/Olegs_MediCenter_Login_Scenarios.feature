Feature: Login

  Background:
    Given I open url "https://medicenter-qa2.vercel.app"
    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//button[text()='Sign in']" to be present


  # TC-JUN-212
  Scenario: Login with valid credentials

    Then I type "gromeroh@anadaratours.com" into element with xpath "//input[@id='email']"
    Then I type "123qwe" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[text()='Sign in']"
    Then I wait for element with xpath "//a[contains(text(),'My appointments')]" to be present
    Then I wait for 4 sec
    Then I click on element with xpath "//button[contains(text(),'Logout')]"
    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    Then I wait for 4 sec

#   TC-JUN-213
  Scenario: Login with invalid password

    Then I type "gromeroh@anadaratours.com" into element with xpath "//input[@id='email']"
    Then I type "12qwe" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[text()='Sign in']"
    Then I wait for element with xpath "//span[contains(text(),'Invalid login credentials')]" to be present
    Then I wait for 2 sec
#    Then I click on element with xpath "//button[contains(text(),'Logout')]"
#    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
#    Then I wait for 2 sec