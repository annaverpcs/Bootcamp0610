@medicenter
Feature: Appointment creation by patient

  Background:
    Given I open url "https://medicenter-qa2.vercel.app"
    Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//button[text()='Sign in']" to be present


  # TC-JUN-158
  Scenario: Appointment schedule by patient flow

    Then I type "gromeroh@anadaratours.com" into element with xpath "//input[@id='email']"
    Then I type "123qwe" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[text()='Sign in']"
    Then I wait for element with xpath "//a[contains(text(),'My appointments')]" to be present
#    Then I wait for 4 sec
#    Make an appointment
    Then I click on element with xpath "//button[contains(text(),'Make an appointment')]"
    Then I wait for element with xpath "//select[@name='employee_id']" to be present
    Then I type "Auto appointment" into element with xpath "//textarea[@name='note']"
    Then I click on element with xpath "//select[@name='employee_id']"
    Then I wait for element with xpath "//option[@value='ca762cec-66f0-4353-a7e0-bfb86f17a2ea']" to be present
    Then I click on element with xpath "//option[@value='ca762cec-66f0-4353-a7e0-bfb86f17a2ea']"
    Then I type "07/31/2024" into element with xpath "//input[@id='date']"
    Then I wait for 2 sec
    Then I wait for element with xpath "//button[contains(text(),'12:30 PM')]" to be present
    Then I click on element with xpath "//button[contains(text(),'12:30 PM')]"
    Then I click on element with xpath "//button[contains(text(),'Save')]"
    Then I wait for element with xpath "//a[contains(text(),'My appointments')]" to be present
    And I wait for element with xpath "//p[contains(text(),'Auto appointment')]" to be present
    And element with xpath "//p[contains(text(),'Auto appointment')]/ancestor::article" should contain text "Wednesday 31 July 2024, 12:30"
    And element with xpath "//p[contains(text(),'Auto appointment')]/ancestor::article" should contain text "Max Wax"
    Then I click on element with xpath "//p[contains(text(),'Auto appointment')]/ancestor::article/div[2]/span"
    Then I click on element with xpath "//button[contains(text(),'Cancel appointment')]"
    Then I wait for 4 sec