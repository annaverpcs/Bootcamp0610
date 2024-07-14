#Session 16:
#Author: German Tereshchenko
#Manual test cases are in the Test Set Jira ticket
#Manual test set is in JUN-111
Feature: Medicenter US#8

  Scenario: As a patient I want to create an appointment
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I should see page title as "Medicenter"
    Then element with xpath "//h1[contains(text(),'Medical Center')]" should be present
    Then I click on element using JavaScript with xpath "(//button[contains(text(),'Login')])"
    When I type "peseh98845@lapeds.com" into element with xpath "//input[@id='email']"
    When I type "pass123" into element with xpath "//input[@id='password']"
    Then I click on element using JavaScript with xpath "//button[contains(text(),'Sign in')]"
    Then I wait for element with xpath "//h1[contains(text(),'Phil Foden')]" to be present
    Then I click on element using JavaScript with xpath "//button[contains(text(),'Make an appointment')]"
    When I type "test" into element with xpath "//textarea[@id='note']"
    Then I click on element with xpath "//select[@name='employee_id']"
    Then I wait for 2 sec
    Then I click on element with xpath "//option[@value='d29e6b50-b315-4884-ab8f-3147d5ce3e3d']"
    When I type "08/27/2024" into element with xpath "//input[@id='date']"
    Then I wait for 2 sec
    Then I click on element using JavaScript with xpath "//button[contains(text(),'08:30 AM')]"
    Then I click on element using JavaScript with xpath "//button[contains(text(),'Save')]"
    Then I wait for element with xpath "//p[contains(text(),'test')]" to be present

  @predefined1
  Scenario: As a patient I want to cancel an appointment
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I should see page title as "Medicenter"
    Then element with xpath "//h1[contains(text(),'Medical Center')]" should be present
    Then I click on element using JavaScript with xpath "(//button[contains(text(),'Login')])"
    When I type "peseh98845@lapeds.com" into element with xpath "//input[@id='email']"
    When I type "pass123" into element with xpath "//input[@id='password']"
    Then I click on element using JavaScript with xpath "//button[contains(text(),'Sign in')]"
    Then I wait for element with xpath "//h1[contains(text(),'Phil Foden')]" to be present
    Then I wait for element with xpath "//h2[contains(text(),'Your appointments')]" to be present
    Then I click on element using JavaScript with xpath "//span[contains(text(),'update')]"
    Then I wait for element with xpath "//h2[contains(text(),'Are you sure you want to cancel appointment?')]" to be present
    Then I click on element using JavaScript with xpath "//button[contains(text(),'Cancel appointment')]"