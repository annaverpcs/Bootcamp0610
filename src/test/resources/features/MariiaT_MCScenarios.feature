#Session 16:
#Author: Mariia Tupchii
#Manual test cases are in the Test Set Jira ticket
#Manual test is in JUN-10
  
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
      Then I type "patient1@gmail.com" into element with xpath "//input[@id='email']"
      Then I type "abc123" into element with xpath "//input[@id='password']"
      And I click on element with xpath "//button[contains(text(),'Sign in')]"