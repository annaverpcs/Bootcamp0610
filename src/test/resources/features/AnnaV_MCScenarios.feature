#Session 16
#Author : Anna Verkhovskaya
# Manual test cases are in Test Set Jira ticket JUN-0
# Manual test is in JUN-0

Feature: Medical Center Scenarios

  #Precondition for all scenarios in this feature
  Background:
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//label[contains(text(),'Email address')]" to be present

  Scenario: Login as Administrator
   # Given I open url "https://medicenter-qa2.vercel.app/"
   # Then I click on element with xpath "//button[contains(text(),'Login')]"
   # Then I wait for element with xpath "//label[contains(text(),'Email address')]" to be present
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[contains(text(),'Sign in')]"

  Scenario: Login as Patient
   # Given I open url "https://medicenter-qa2.vercel.app/"
   # Then I click on element with xpath "//button[contains(text(),'Login')]"
   # Then I wait for element with xpath "//label[contains(text(),'Email address')]" to be present
    Then I type "patient1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[contains(text(),'Sign in')]"

  Scenario: Make an appointment as Patient and Delete an appointment
    Then I type "patient1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[contains(text(),'Sign in')]"
    Then I wait for element with xpath "//h1[contains(text(),'James Johnson')]" to be present
    #land on Home page
    #patient create an appointment
    Then I click on element with xpath "//button[contains(text(),'Make an appointment')]"
    When I wait for element with xpath "//span[contains(text(),'Make an appointment')]" to be present
    Then I type "Anna Unique appointment 12435" into element with xpath "//textarea[@id='note']"
    Then I wait for 1 sec
    #select a specialist
    Then I click on element with xpath "//select[@name='employee_id']/..//option[12]"
    #select time and date
    And I type "07/17/2024" into element with xpath "//input[@id='date']"
    Then I wait for 1 sec
    And I click on element with xpath "//button[contains(text(),'10:15 AM')]"
    #Save an appointment
    And I click on element with xpath "//button[contains(text(),'Save')]"
    #verify that the appointment is created
    And I wait for element with xpath "//p[contains(text(),'Anna Unique appointment 12435')]" to be present
    Then element with xpath "//p[contains(text(),'Anna Unique appointment 12435')]/ancestor::article/div[1]/h3" should contain text "Tuesday 16 July 2024, 10:15"
    #Delete the appointment
    Then I wait for element with xpath "//p[contains(text(),'Anna Unique appointment 12435')]/ancestor::article/div[2]/span" to be present
    And I click on element with xpath "//p[contains(text(),'Anna Unique appointment 12435')]/ancestor::article/div[2]/span"
    Then I wait for 1 sec
    #confirmation pop up window is present
    Then element with xpath "//h2[contains(text(),'Are you sure you want to cancel appointment?')]" should contain text 'Are you sure you want to cancel appointment?'
    Then I click on element with xpath "//button[contains(text(),'Cancel appointment')]"
    Then I wait for 1 sec
    #verify that the appointment is cancelled
    And element with xpath "//p[contains(text(),'Anna Unique appointment 12435')]" should not be present
