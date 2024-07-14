#Session 16:
#Author: Mariia Tupchii
#Manual test is in JUN-87, JUN-101

Feature: Medical Center Scenarios

    #Precondition for all scenarios in this feature
  Background:
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//label[contains(text(),'Email address')]" to be present

  Scenario: Edit specialist information as an admin
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[contains(text(),'Sign in')]"
    And I wait for element with xpath "//h1[contains(text(),'Mary Poppins')]" to be present
#    An admin edits specialist info
    Then I wait for 2 sec
    Then I click on element with xpath "//label[contains(text(),'Edit')]/ancestor::tbody/tr[1]/td[3]/div/span"
    Then I wait for 3 sec
    Then element with xpath "//span[contains(text(),'Edit specialist info')]" should be present
    Then I type "123" into element with xpath "//input[@id='first_name']"
    And I type "abc" into element with xpath "//input[@id='last_name']"
    Then I wait for 3 sec
    And I click on element with xpath "//label[contains(text(),'Mon')]"
    Then I wait for 2 sec
    Then I click on element with xpath "//input[@id='working_hours.monday.from']"
    Then I type "0900" into element with xpath "//input[@id='working_hours.monday.from']"
    And I click on element with xpath "//input[@id='working_hours.monday.to']"
    And I type "1200" into element with xpath "//input[@id='working_hours.monday.to']"
    Then I wait for 2 sec
    Then I click on element with xpath "//button[contains(text(),'Save')]"
    And I wait for 3 sec
# Verify the information was edited
    Then I wait for element with xpath "//h1[contains(text(),'Mary Poppins')]" to be present
    Then I click on element with xpath "//span[contains(text(),'logout')]"
    And I wait for 3 sec
    Then element with xpath "//h1[contains(text(),'Medical Center')]" should be present
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//label[contains(text(),'Email address')]" to be present
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[contains(text(),'Sign in')]"
    Then I wait for 3 sec
    Then element with xpath "//td[contains(text(),'Kim123 Chiabc')]" should be present
    Then I wait for 3 sec