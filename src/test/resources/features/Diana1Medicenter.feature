#Autor: Diana Akisheva
#Manual test cases are in Test Set Jira ticket JUN-108
@medicenter
  Feature: Medical Center Scenarios

 #Precondition for all scenarios in this feature
    Background:
      Given I open url "https://medicenter-qa2.vercel.app/"
      Then I click on element with xpath "//button[contains(text(),'Login')]"
      Then I wait for element with xpath "//label[contains(text(),'Email address')]" to be present
      Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
      Then I type "abc123" into element with xpath "//input[@id='password']"
      And I click on element with xpath "//button[contains(text(),'Sign in')]"
      Then I wait for 2 sec
      Then I wait for element with xpath "//h1[contains(text(),'Mary Poppins')]" to be present
      Then I wait for 2 sec

    Scenario: Login as an administrator
      # Given I open url "https://medicenter-qa2.vercel.app/"
      # Then I click on element with xpath "//button[contains(text(),'Login')]"
      # Then I wait for element with xpath "//label[contains(text(),'Email address')]" to be present
      # Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
      # Then I type "abc123" into element with xpath "//input[@id='password']"
      # And I click on element with xpath "//button[contains(text(),'Sign in')]"
      # Then I wait for 2 sec
      # Then I wait for element with xpath "//h1[contains(text(),'Mary Poppins')]" to be present
      # Then I wait for 2 sec

  #JUN-165
    Scenario: As an admin I cannot add a new specialist with empty field “First Name”
      Then I click on element with xpath "//button[contains(text(),'Add specialist')]"
      Then I wait for 2 sec
      Then I wait for element with xpath "//span[contains(text(),'New specialist')]" to be present
      Then I wait for 2 sec
      Then I type "House" into element with xpath "//input[@id='last_name']"
      Then I click on element with xpath "//option[@value='doctor']"
      Then I wait for 2 sec
      Then I click on element with xpath "//label[contains(text(),'Mon')]"
      Then I type "08:00" into element with xpath "//input[@id='working_hours.monday.from']"
      Then I wait for 2 sec
      Then I type "16:00" into element with xpath "//input[@id='working_hours.monday.to']"
      Then I wait for 2 sec
      Then I click on element with xpath "//button[contains(text(),'Save')]"
      Then I wait for 2 sec
      Then I wait for element with xpath "//h1[contains(text(),'Mary Poppins')]" to be present
      Then I wait for 2 sec










