Feature: Medical Center Scenarios. Patient is able to cancel their appointment.

  Background:
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I should see page title contains "Medicenter"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//input[@id='email']" to be present
    Then I wait for element with xpath "//input[@id='password']" to be present
    When I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    When I type "abc123" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[contains(text(),'Sign in')]"
    Then I wait for element with xpath "//h1[contains(text(),'Mary Poppins')]" to be present


  Scenario: Create new specialist
    Then I wait for element with xpath "//button[contains(text(),'Add specialist')]" to be present
    Then I click on element with xpath "//button[contains(text(),'Add specialist')]"
    Then element with xpath "//div[@role='dialog']//span[contains(text(),'New specialist')]" should be present
    Then element with xpath "//input[@id='first_name']" should be present
    Then element with xpath "//input[@id='last_name']" should be present
    Then element with xpath "//div[@role='dialog']//select[@name='role']" should be present
    Then element with xpath "//fieldset[@id='workingDays']" should be present
    Then element with xpath "//div[@role='dialog']//button[contains(text(),'Save')]" should be present
    When I type "Tomb" into element with xpath "//input[@id='first_name']"
    When I type "Raider" into element with xpath "//input[@id='last_name']"
    Then I click on element with xpath "//div[@role='dialog']//select[@name='role']"
    Then I wait for 1 sec
    Then I click on element with xpath "//div[@role='dialog']//select[@name='role']/option[1]"
    Then I click on element with xpath "//fieldset[@id='workingDays']//button[@type='button' and label[@for='monday']]"
    Then I click on element with xpath "//input[@id='working_hours.monday.from']"
    Then I wait for 1 sec
    When I type "08:00" into element with xpath "//input[@id='working_hours.monday.from']"
    Then I click on element with xpath "//input[@id='working_hours.monday.to']"
    Then I wait for 1 sec
    When I type "16:00" into element with xpath "//input[@id='working_hours.monday.to']"
    Then I wait for 1 sec
    Then I click on element with xpath "//div[@role='dialog']//button[contains(text(),'Save')]"
    Then I wait for 3 sec

  Scenario: Edit specialist
    Then I wait for element with xpath "//td[contains(text(),'Tomb Raider')]" to be present
    Then I click on element with xpath "//td[contains(text(),'Tomb Raider')]/..//span[contains(text(),'edit')]"
    Then I wait for 1 sec
    Then element with xpath "//div[@role='dialog']//span[contains(text(),'Edit specialist info')]" should be present
    When I type "123" into element with xpath "//input[@id='first_name']"
    When I type "567" into element with xpath "//input[@id='last_name']"
    Then I click on element with xpath "//div[@role='dialog']//select[@name='role']/option[2]"
    Then I click on element with xpath "//fieldset[@id='workingDays']//button[@type='button' and label[@for='tuesday']]"
    Then I click on element with xpath "//input[@id='working_hours.tuesday.from']"
    Then I wait for 1 sec
    When I type "09:00" into element with xpath "//input[@id='working_hours.tuesday.from']"
    Then I click on element with xpath "//input[@id='working_hours.tuesday.to']"
    Then I wait for 1 sec
    When I type "15:00" into element with xpath "//input[@id='working_hours.tuesday.to']"
    Then I wait for 2 sec
    Then I click on element with xpath "//div[@role='dialog']//button[contains(text(),'Save')]"
    Then I wait for 3 sec

  Scenario: Verify Edited specialist
    Then I wait for element with xpath "//td[contains(text(),'Tomb123 Raider567')]" to be present
    Then I click on element with xpath "//td[contains(text(),'Tomb123 Raider567')]/..//span[contains(text(),'edit')]"
    Then I wait for 2 sec
    Then element with xpath "//input[@id='first_name']" should have attribute "value" as "Tomb123"
    Then element with xpath "//input[@id='last_name']" should have attribute "value" as "Raider567"
    Then element with xpath "//div[@role='dialog']//select[@name='role']/option[2]" should have attribute "value" as "nurse"
    Then element with xpath "//fieldset[@id='workingDays']//button[@type='button' and label[@for='monday']]" should have attribute "value" as "on"
    Then element with xpath "//input[@id='working_hours.monday.from']" should have attribute "value" as "08:00"
    Then element with xpath "//input[@id='working_hours.monday.to']" should have attribute "value" as "16:00"
    Then element with xpath "//fieldset[@id='workingDays']//button[@type='button' and label[@for='tuesday']]" should have attribute "value" as "on"
    Then element with xpath "//input[@id='working_hours.tuesday.from']" should have attribute "value" as "09:00"
    Then element with xpath "//input[@id='working_hours.tuesday.to']" should have attribute "value" as "15:00"
    Then I click on element with xpath "//div[@role='dialog']//span[contains(text(),'close')]"
    Then I click on element with xpath "//td[contains(text(),'Tomb123 Raider567')]/..//span[contains(text(),'delete')]"
    Then I wait for element with xpath "//div[@role='dialog']//button[contains(text(), 'Remove specialist')]" to be present
    Then I click on element with xpath "//div[@role='dialog']//button[contains(text(), 'Remove specialist')]"
    Then I wait for 3 sec

    