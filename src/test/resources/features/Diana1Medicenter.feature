#Autor: Diana Akisheva
#Manual test cases are in Test Set Jira ticket JUN-108

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




