@medicenter
Feature: : Specialist

Scenario: Add New Specialist
 Given I open url "https://medicenter-qa2.vercel.app/"
  Then I wait for 1 sec
  Then I click on element with xpath "//button[contains(text(),'Login')]"
  Then I wait for 1 sec
  Then I type "administrator2@gmail.com" into element with xpath "//input[@id='email']"
  Then I wait for 1 sec
  Then I type "abc123" into element with xpath "//input[@id='password']"
  Then I click on element with xpath "//button[@type='submit']"
#  Then element with xpath "//h1[contains(text(),'Calvin Grant')]" should be present
  Then I click on element with xpath "//button[contains(text(),'Add specialist')]"
  Then I wait for 1 sec
  Then element with xpath "//span[contains(text(),'New specialist')]" should be present
  Then I type "Buddy" into element with xpath "//*[@id='first_name']"
  Then I wait for 1 sec
  Then I type "Buddy" into element with xpath "//*[@id='last_name']"
  Then I click on element with xpath "//option[contains(text(),'Doctor')]"
  Then I click on element with xpath "//label[contains(text(),'Mon')]" 
  Then I type "0900" into element with xpath "//input[@id='working_hours.monday.from']"
  Then I type "1000" into element with xpath "//input[@id='working_hours.monday.to']"
  Then I click on element with xpath "//button[contains(text(),'Save')]"
  Then element with xpath "//h1[contains(text(),'Medical Center')]" should be present
 Then element with xpath "//td[contains(text(),'Buddy Buddy')]" should be present
  Then I click on element with xpath "//span[@id=':r3b:']"
 Then I wait for 2 sec
 Then element with xpath "//button[contains(text(),'Remove specialist')]" should be present
 Then I click on element with xpath "//button[contains(text(),'Remove specialist')]"
 Then I wait for 2 sec
 Then element with xpath "//td[contains(text(),'Buddy Buddy')]" should not be present






 

