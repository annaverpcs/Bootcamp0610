@medicenter
Feature: Medical Center Scenarios. Patient is able to cancel their appointment.

  Background:
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I should see page title contains "Medicenter"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then element with xpath "//input[@id='email']" should be present
    Then element with xpath "//input[@id='password']" should be present
    When I type "patient1@gmail.com" into element with xpath "//input[@id='email']"
    When I type "abc123" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[contains(text(),'Sign in')]"
    Then I wait for element with xpath "//h1[contains(text(),'James Johnson')]" to be present

  Scenario: Make an appointment
    Then I wait for element with xpath "//button[contains(text(),'Make an appointment')]" to be present
    Then I click on element with xpath "//button[contains(text(),'Make an appointment')]"
    Then I wait for element with xpath "//div[@role='dialog']//span[contains(text(), 'Make an appointment')]" to be present
    Then element with xpath "//div[@role='dialog']//textarea[@name='note']" should be present
    Then element with xpath "//div[@role='dialog']//select[@name='employee_id']" should be present
    Then element with xpath "//div[@role='dialog']//input[@id='date']" should be present
    Then element with xpath "//div[@role='dialog']//button[contains(text(),'Save')]" should be present
    Then I type "test pain" into element with xpath "//div[@role='dialog']//textarea[@name='note']"
    Then I click on element with xpath "//div[@role='dialog']//select[@name='employee_id']"
    Then I wait for 1 sec
    Then element with xpath "//div[@role='dialog']//select[@name='employee_id']/option[2]" should be present
    Then I click on element with xpath "//div[@role='dialog']//select[@name='employee_id']/option[2]"
    #ToDo: How to select Date with available appointment's hours? Solution: create new step definition function
    Then I type "07/16/2024" into element with xpath "//div[@role='dialog']//input[@id='date']"
    Then I wait for element with xpath "//div[@role='dialog']//div[@role='radiogroup']/button[1]" to be present
    Then I click on element with xpath "//div[@role='dialog']//div[@role='radiogroup']/button[1]"
    Then element with xpath "//div[@role='dialog']//div[@role='radiogroup']/button[1]" should have attribute "data-state" as "checked"
    #Click to save button
    Then I click on element with xpath "//div[@role='dialog']//button[contains(text(),'Save')]"
    #Check if appointment was created
    Then I wait for element with xpath "//div[@data-state='closed' and ancestor::article//p/text() [contains(., 'test pain')]]" to be present

  Scenario: Cancel appointment cancellation
    Then I wait for element with xpath "//div[@data-state='closed' and ancestor::article//p[contains(text(), 'test pain')]]" to be present
    Then I click on element with xpath "//div[@data-state='closed' and ancestor::article//p[contains(text(), 'test pain')]]"
    Then element with xpath "//button[ancestor::div[@role='dialog'] and contains(text(), 'Cancel appointment')]" should be present
    Then I click on element with xpath "//button[ancestor::div[@role='dialog'] and span[contains(text(), 'close')]]"
    Then I wait for 1 sec
    Then element with xpath "//p[contains(text(), 'test pain')]" should be present

  Scenario: Appointment cancellation
    Then I wait for element with xpath "//div[@data-state='closed' and ancestor::article//p[contains(text(), 'test pain')]]" to be present
    Then I click on element with xpath "//div[@data-state='closed' and ancestor::article//p[contains(text(), 'test pain')]]"
    Then element with xpath "//button[ancestor::div[@role='dialog'] and contains(text(), 'Cancel appointment')]" should be present
    Then I click on element with xpath "//button[ancestor::div[@role='dialog'] and contains(text(), 'Cancel appointment')]"
    Then I wait for 2 sec
    Then element with xpath "//p[contains(text(), 'test pain')]" should not be present
