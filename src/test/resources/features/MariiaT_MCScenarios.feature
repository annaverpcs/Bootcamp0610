#Session 16:
#Author: Mariia Tupchii
#Manual test is in JUN-87, JUN-101
@medicenter
Feature: Medical Center Scenarios

    #Precondition for all scenarios in this feature
  Background:
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//label[contains(text(),'Email address')]" to be present

  Scenario: Login as an Administrator
#      Given I open url "https://medicenter-qa2.vercel.app/"
#      Then I click on element with xpath "//button[contains(text(),'Login')]"
#      Then I wait for element with xpath "//label[contains(text(),'Email address')]" to be present
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[contains(text(),'Sign in')]"


  Scenario: Login as a Patient
#      Given I open url "https://medicenter-qa2.vercel.app/"
#      Then I click on element with xpath "//button[contains(text(),'Login')]"
#      Then I wait for element with xpath "//label[contains(text(),'Email address')]" to be present
    Then I type "plee821390@kinilu.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[contains(text(),'Sign in')]"

  Scenario: Make an appointment as patient and Delete an appointment
    Then I type "plee821390@kinilu.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[contains(text(),'Sign in')]"
    Then I wait for element with xpath "//h1[contains(text(),'Rachel Green')]" to be present
# land on Home page
# patient create an appointment
    Then I click on element with xpath "//button[contains(text(),'Make an appointment')]"
    When I wait for element with xpath "//span[contains(text(),'Make an appointment')]" to be present
    Then I type "Heartache" into element with xpath "//textarea[@id='note']"
    Then I wait for 3 sec
    Then I click on element with xpath "//select[@name='employee_id']/..//option[52]"
    Then I wait for 5 sec
# select time and date
    And I type "16.07.2024" into element with xpath "//input[@id='date']"
    Then I wait for 3 sec
    Then I click on element with xpath "//button[contains(text(),'08:00 AM')]"
    Then I wait for 3 sec
    Then I click on element with xpath "//button[contains(text(),'Save')]"
# Verify that the appointment is created
    And I wait for element with xpath "//p[contains(text(),'Heartache')]" to be present
    Then element with xpath "//p[contains(text(),'Heartache')]/ancestor::article/div[1]/h3" should contain text "Monday 15 July 2024, 08:00"
# Delete an appointment
    Then I wait for element with xpath "//p[contains(text(),'Heartache')]/ancestor::article/div[2]/span" to be present
    And I click on element with xpath "//p[contains(text(),'Heartache')]/ancestor::article/div[2]/span"
    Then I wait for 3 sec
#    Confirmation pop up window is present
    Then element with xpath "//h2[contains(text(),'Are you sure you want to cancel appointment?')]" should contain text "Are you sure you want to cancel appointment?"
    And I click on element with xpath "//button[contains(text(),'Cancel appointment')]"
    Then I wait for 3 sec
#   Verify that appointment is canceled
    And element with xpath "//h3[contains(text(),'Tuesday 09 July 2024, 08:00')]" should not be present
    Then I wait for 3 sec
      Then I type "patient1@gmail.com" into element with xpath "//input[@id='email']"
      Then I type "abc123" into element with xpath "//input[@id='password']"
      And I click on element with xpath "//button[contains(text(),'Sign in')]"

    Scenario: Make an appointment as patient and Delete an appointment
      Then I type "plee821390@kinilu.com" into element with xpath "//input[@id='email']"
      Then I type "abc123" into element with xpath "//input[@id='password']"
      And I click on element with xpath "//button[contains(text(),'Sign in')]"
      Then I wait for element with xpath "//h1[contains(text(),'Rachel Green')]" to be present
# land on Home page
# patient create an appointment
      Then I click on element with xpath "//button[contains(text(),'Make an appointment')]"
      When I wait for element with xpath "//span[contains(text(),'Make an appointment')]" to be present
      Then I type "Heartache" into element with xpath "//textarea[@id='note']"
      Then I wait for 3 sec
      Then I click on element with xpath "//select[@name='employee_id']/..//option[52]"
      Then I wait for 5 sec
# select time and date
      And I type "16.07.2024" into element with xpath "//input[@id='date']"
      Then I wait for 3 sec
      Then I click on element with xpath "//button[contains(text(),'08:00 AM')]"
      Then I wait for 3 sec
      Then I click on element with xpath "//button[contains(text(),'Save')]"
# Verify that the appointment is created
      And I wait for element with xpath "//p[contains(text(),'Heartache')]" to be present
      Then element with xpath "//p[contains(text(),'Heartache')]/ancestor::article/div[1]/h3" should contain text "Monday 15 July 2024, 08:00"
# Delete an appointment
      Then I wait for element with xpath "//p[contains(text(),'Heartache')]/ancestor::article/div[2]/span" to be present
      And I click on element with xpath "//p[contains(text(),'Heartache')]/ancestor::article/div[2]/span"
      Then I wait for 3 sec
#    Confirmation pop up window is present
      Then element with xpath "//h2[contains(text(),'Are you sure you want to cancel appointment?')]" should contain text "Are you sure you want to cancel appointment?"
      And I click on element with xpath "//button[contains(text(),'Cancel appointment')]"
      Then I wait for 3 sec
#   Verify that appointment is canceled
      And element with xpath "//h3[contains(text(),'Tuesday 09 July 2024, 08:00')]" should not be present
      Then I wait for 3 sec

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
      Then I wait for 5 sec
      Then element with xpath "//td[contains(text(),'Kim123 Chiabc')]" should be present
      Then I wait for 3 sec

  Scenario Outline: Login as Data Driven Test
    Then I type <text> into element with xpath "//input[@id='email']"
    Then I type <text1> into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[contains(text(),'Sign in')]"
    Examples:
      | text                       | text1   |
      | "administrator1@gmail.com" | "abc123" |
      | "patient1@gmail.com" | "abc123" |
      | "patient2@gmail.com" | "abc123" |
      | "abcd@gmail.com" | "abc123" |
      | "" | "abc123" |
      | "administrator1@gmail.com" | "12345incorrect" |
      | "patient1@gmail.com" | "" |
