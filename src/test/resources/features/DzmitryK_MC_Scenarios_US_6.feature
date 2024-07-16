#Author : Dzmitry Kazlou
# Manual test cases are in Test Set Jira ticket JUN-136
@medicenter
Feature: Medical Center Scenarios for User Story#6
  #Preconditions for all scenarios in this feature
  Background:
    Given I open url "https://medicenter-qa2.vercel.app"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "katyachehovich@enunal.com" into element with xpath "//input[@id='email']"
    Then I type "test987" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[contains(text(),'Sign in')]"
    Then I wait for 3 sec
    Then element with xpath "//h1[contains(text(),'John Jay')]" should be present
    Then element with xpath "//h1[contains(text(),'Medical Center')]" should be displayed
    Then I wait for 2 sec

    # Manual test case is JUN-132

  Scenario: Creating an appointment like a patient
    Then I click on element with xpath "//button[@type='button']"
    And I wait for 2 sec
    Then element with xpath "//span[contains(text(), 'Make an appointment')]" should be displayed
    Then I type "automation test JUN-132" into element with xpath "//textarea[@id='note']"
    Then I click on element with xpath "//select[@name='employee_id']/..//option[12]"
    Then I type "10152024" into element with xpath "//input[@id='date']"
    Then I wait for 3 sec
    Then I click on element with xpath "//button[contains(text(),'03:15 PM')]"
    Then I wait for 3 sec
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for 3 sec
    Then element with xpath "//p[contains(text(),'automation test JUN-132')]/ancestor::article/div[1]/h3" should be displayed

            # Manual test case is JUN-289
      #Patient can cancel an appointment.

    Then I wait for element with xpath "//p[contains(text(),'automation test JUN-132')]/ancestor::article/div[2]/span" to be present
    And I click on element with xpath "//p[contains(text(),'automation test JUN-132')]/ancestor::article/div[2]/span"
    Then I wait for 1 sec
    Then element with xpath "//h2[contains(text(),'Are you sure you want to cancel appointment?')]" should be displayed
    Then I click on element with xpath "//button[contains(text(),'Cancel appointment')]"

      # Manual test case is JUN-290
  Scenario: Create an appointment without adding a specialist.
    Then I click on element with xpath "//button[@type='button']"
    And I wait for 5 sec
    Then element with xpath "//span[contains(text(), 'Make an appointment')]" should be displayed
    Then I type "automation test JUN-132" into element with xpath "//textarea[@id='note']"
    Then I type "10152024" into element with xpath "//input[@id='date']"
    Then I wait for 3 sec
    Then I wait for 3 sec
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for 3 sec
      #Then element with xpath "//button[@type='submit']" should be disabled
    Then element with xpath "//p[contains(text(),'automation test JUN-132')]/ancestor::article/div[1]/h3" should not be displayed
