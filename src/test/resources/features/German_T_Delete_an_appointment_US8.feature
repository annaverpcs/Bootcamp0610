@predefined
Feature: Smoke steps

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