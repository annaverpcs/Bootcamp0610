# MediCenter V2 test scenarios for user stories 3 and 7
# Author : Anton Chukin
@medicenter
Feature: user stories # 3 and # 7

  Background:
    Given antch launch MedicenterV2
    Then I wait for element with xpath "//header//button[contains(text(),'Login')]" to be present
    Then antch click on "Login" button
   # Then I click on element with xpath "//header//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//*[@type='submit']" to be present
    Then I type "administrator2@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    Then antch click on "Sign In" button
      # land on home page
    Then I wait for element with xpath "//button[starts-with(text(),'Specialist')]" to be present
    Then element with xpath "//header/div/*[not(contains(text(),'Medical Center')) and not(contains(text(),'Log'))]" should be present

#  user story # 3 (Test set JUN-236) - As an administrator, I can add new specialist
#  @functionality @medicenter @user-story-3 @positive
#  Scenario: Happy flow of adding new specialist
#    Then I click on element with xpath "//button[starts-with(text(),'Specialist')]"
#    Then antch click on "Add specialist" button
#    Then I wait for element with xpath "//*[@role='dialog']" to be present
#    Then element with xpath "//*[@role='dialog']//*[contains(text(),'New specialist')]" should be present
#    Then I type "Sirano" into element with xpath "//*[@role='dialog']//input[@name='first_name']"
#    Then I type "de Berzerak" into element with xpath "//*[@role='dialog']//input[@name='last_name']"
#    Then I click on element with xpath "//*[@role='dialog']//option[@value='doctor']"
#    Then I click on element with xpath "//*[@role='dialog']//label[contains(text(),'Mon')]/parent::button"
#    Then I click on element with xpath "//*[@id='working_hours.monday.from']"
#    Then I type "0900" into element with xpath "//*[@id='working_hours.monday.from']"
#    Then I click on element with xpath "//*[@id='working_hours.monday.to']"
#    Then I type "1100" into element with xpath "//*[@id='working_hours.monday.to']"
#    Then I click on element with xpath "//*[@role='dialog']//*[@type='submit']"
#    Then I wait for 4 sec
#    Then I open url "https://medicenter-qa2.vercel.app/admin"
#    Then I wait for element with xpath "//table[contains(@class,'full')]//td[contains(text(),'Sirano de Berzerak')]//parent::tr" to be present
#    Then element with xpath "//td[contains(text(),'Sirano de Berzerak')]/following::td[1]" should contain text "octor"
#    Then I click on element using JavaScript with xpath "//td[contains(text(),'Sirano de Berzerak')]/following::td[2]//*[contains(text(),'edit')]"
#    Then I wait for element with xpath "//*[@id='working_hours.monday.from']" to be present
#   # Then element with xpath "//*[@id='working_hours.monday.from']" should contain text "00:00"
#    Then I wait for 4 sec
#    Then I click on element with xpath "//*[@role='dialog']//button//*[contains(text(),'close')]"
#    Then I click on element with xpath "//td[contains(text(),'Sirano de Berzerak')]/following::td[2]//*[contains(text(),'delete')]"
#    Then I wait for 2 sec
#    Then I click on element with xpath "//button[contains(text(),'Remove specialist')]"
#    Then I wait for 2 sec
#    Then element with xpath "//table[contains(@class,'full')]//td[contains(text(),'Sirano de Berzerak')]//parent::tr" should not be present

# data-driven Test set (JUN-236) for user story # 3  - As an administrator, I can add new specialist
  @functionality @medicenter @user-story-3 @data-driven @positive
  Scenario Outline: adding new specialist
    Then I click on element with xpath "//button[starts-with(text(),'Specialist')]"
    Then antch click on "Add specialist" button
    Then I wait for element with xpath "//*[@role='dialog']" to be present
    Then element with xpath "//*[@role='dialog']//*[contains(text(),'New specialist')]" should be present
    Then I type <FN1> into element with xpath "//*[@role='dialog']//input[@name='first_name']"
    Then I type <LN1> into element with xpath "//*[@role='dialog']//input[@name='last_name']"
    Then I click on element with xpath <role_xpath1>
    Then I click on element with xpath "//*[@role='dialog']//label[contains(text(),'Mon')]/parent::button"
    Then I click on element with xpath "//*[@id='working_hours.monday.from']"
    Then I type <start from1> into element with xpath "//*[@id='working_hours.monday.from']"
    Then I click on element with xpath "//*[@id='working_hours.monday.to']"
    Then I type <finish at1> into element with xpath "//*[@id='working_hours.monday.to']"
    Then I click on element with xpath "//*[@role='dialog']//*[@type='submit']"
    Then I wait for 4 sec
    Then I open url "https://medicenter-qa2.vercel.app/admin"
    Then I wait for element with xpath "//table[contains(@class,'full')]//td[contains(text(),'Sirano') or contains(text(),'de Berzerak')]//parent::tr" to be present
    Then element with xpath "//td[contains(text(),'Sirano de Berzerak')]/following::td[1]" should contain text <role1>
    Then I click on element using JavaScript with xpath "//td[contains(text(),'Sirano') or contains(text(),'de Berzerak')]/following::td[2]//*[contains(text(),'edit')]"
    Then I wait for element with xpath "//*[@id='working_hours.monday.from']" to be present
   # Then element with xpath "//*[@id='working_hours.monday.from']" should contain text "09:00"
    Then I wait for 2 sec
    Then I click on element with xpath "//*[@role='dialog']//button//*[contains(text(),'close')]"
    Then I click on element with xpath "//td[contains(text(),'Sirano') or contains(text(),'de Berzerak')]/following::td[2]//*[contains(text(),'delete')]"
    Then I wait for 2 sec
    Then I click on element with xpath "//button[contains(text(),'Remove specialist')]"
    Then I wait for 2 sec
    Then element with xpath "//table[contains(@class,'full')]//td[contains(text(),'Sirano') or contains(text(),'de Berzerak')]//parent::tr" should not be present
    Examples:
    |    FN1     |     LN1    |         role_xpath1      |     role1     |   start from1    |  finish at1  |
#  JUN-347 Happy flow of adding new specialist
    | "Sirano" |"de Berzerak"|"//*[@role='dialog']//option[@value='doctor']"|"octor"|"0900"|"1100"|
#  JUN-244 New specialist's working hours can span the whole 24 hours day
    | "Sirano" |"de Berzerak"|"//*[@role='dialog']//option[@value='doctor']"|"octor"|"0000"|"2359"|
#  JUN-142 Specialist's working hours are at least 1 hour
    | "Sirano" |"de Berzerak"|"//*[@role='dialog']//option[@value='doctor']"|"octor"|"0900"|"1000"|

  @functionality @medicenter @user-story-3 @data-driven @negative
  Scenario Outline: adding new specialist
    Then I click on element with xpath "//button[starts-with(text(),'Specialist')]"
    Then antch click on "Add specialist" button
    Then I wait for element with xpath "//*[@role='dialog']" to be present
    Then element with xpath "//*[@role='dialog']//*[contains(text(),'New specialist')]" should be present
    Then I type <FN> into element with xpath "//*[@role='dialog']//input[@name='first_name']"
    Then I type <LN> into element with xpath "//*[@role='dialog']//input[@name='last_name']"
    Then I click on element with xpath <role_xpath>
    Then I click on element with xpath "//*[@role='dialog']//label[contains(text(),'Mon')]/parent::button"
    Then I click on element with xpath "//*[@id='working_hours.monday.from']"
    Then I type <start from> into element with xpath "//*[@id='working_hours.monday.from']"
    Then I click on element with xpath "//*[@id='working_hours.monday.to']"
    Then I type <finish at> into element with xpath "//*[@id='working_hours.monday.to']"
    Then I click on element with xpath "//*[@role='dialog']//*[@type='submit']"
    Then I wait for 3 sec
    Then element with xpath "//*[@role='dialog']//*[@type='submit']" should be present
    Then element with xpath "//table[contains(@class,'full')]//td[contains(text(),'Sirano') or contains(text(),'de Berzerak')]//parent::tr" should not be present
#    Then I open url "https://medicenter-qa2.vercel.app/admin"
#    Then I wait for element with xpath "//table[contains(@class,'full')]//td[contains(text(),'Sirano') or contains(text(),'de Berzerak')]//parent::tr" to be present
#    Then element with xpath "//td[contains(text(),'Sirano de Berzerak')]/following::td[1]" should contain text <role>
#    Then I click on element using JavaScript with xpath "//td[contains(text(),'Sirano') or contains(text(),'de Berzerak')]/following::td[2]//*[contains(text(),'edit')]"
#    Then I wait for element with xpath "//*[@id='working_hours.monday.from']" to be present
#    Then element with xpath "//*[@id='working_hours.monday.from']" should contain text "09:00"
#    Then I wait for 2 sec
#    Then I click on element with xpath "//*[@role='dialog']//button//*[contains(text(),'close')]"
#    Then I click on element with xpath "//td[contains(text(),'Sirano') or contains(text(),'de Berzerak')]/following::td[2]//*[contains(text(),'delete')]"
#    Then I wait for 2 sec
#    Then I click on element with xpath "//button[contains(text(),'Remove specialist')]"
#    Then I wait for 2 sec
#    Then element with xpath "//table[contains(@class,'full')]//td[contains(text(),'Sirano') or contains(text(),'de Berzerak')]//parent::tr" should not be present
    Examples:
      |    FN     |     LN    |         role_xpath      |     role     |   start from    |  finish at  |
#  JUN-409 Adding new specialist with an empty Last name field
      | "Sirano" |""|"//*[@role='dialog']//option[@value='doctor']"|"octor"|"0900"|"1100"|
#  JUN-408 Adding new specialist with an empty first name field
      | "" |"de Berzerak"|"//*[@role='dialog']//option[@value='doctor']"|"octor"|"0900"|"1100"|
#  JUN-321 Add new specialist with pasting 99 chars in "Last Name" field
      | "Sirano" |"012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678"|"//*[@role='dialog']//option[@value='doctor']"|"octor"|"0900"|"1100"|
#  JUN-319 #Add new specialist with pasting 99 chars in "First Name" field
      | "012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678" |"de Berzerak"|"//*[@role='dialog']//option[@value='doctor']"|"octor"|"0900"|"1100"|
#  JUN-243 Specialist's working hours cannot finish past 23:59
      | "Sirano" |"de Berzerak"|"//*[@role='dialog']//option[@value='doctor']"|"octor"|"0900"|"2400"|
#  JUN-242 Specialist's working starting hours can not be after end hours
      | "Sirano" |"de Berzerak"|"//*[@role='dialog']//option[@value='doctor']"|"octor"|"0900"|"0800"|
#  JUN-241 Specialist's working hours cannot be less than 1 hour
      | "Sirano" |"de Berzerak"|"//*[@role='dialog']//option[@value='doctor']"|"octor"|"0900"|"0959"|

#  user story # 7 (Test set JUN-309) - As an administrator, I can cancel an appointment
#  JUN-311 Cancelling an appointment as an administrator
  @functionality @Medicenter @user-story-7 @positive
  Scenario: make an appointment as admin and then cancel the appointment
    Then I click on element with xpath "//button[.='Appointments']"
    Then antch click on "Add appointment" button
    Then I wait for element with xpath "//*[@role='dialog']" to be present
    Then element with xpath "//*[@role='dialog']//*[contains(text(),'New appointment')]" should be present
    Then I type "Ylvis Thornvalds" into element with xpath "//*[@role='dialog']//input[@id='user_name']"
    Then I type "check-up" into element with xpath "//*[@role='dialog']//*[@id='note']"
    Then I click on element with xpath "//*[@role='dialog']//select[@name='employee_id']"
    Then I click on element with xpath "//*[@role='dialog']//select[@name='employee_id']/option[contains(text(),'Antch')]"
    Then I click on element with xpath "//input[@name='date'][@id='date']"
    Then I type "15072024" into element with xpath "//input[@name='date'][@id='date']"
    Then I wait for 3 sec
    Then I click on element with xpath "//button[@type='button'][@role='radio'][1]"
    Then I click on element with xpath "//*[@role='dialog']//*[@type='submit']"
    Then I wait for element with xpath "//*[starts-with(@aria-label,'July 15,')]/..//following-sibling::div//*[text()='Ylvis Thornvalds']//..//parent::div" to be present
    Then I click on element with xpath "//button[@title='day view']"
    Then I wait for 3 sec
    # appointment is created
    Then I click on element with xpath "//button[@title='month view']"
    Then I wait for element with xpath "//*[starts-with(@aria-label,'July 15,')]/..//following-sibling::div//*[text()='Ylvis Thornvalds']//..//parent::div" to be present
    Then I click on element with xpath "//*[starts-with(@aria-label,'July 15,')]/..//following-sibling::div//*[text()='Ylvis Thornvalds']//..//parent::div"
    Then I wait for element with xpath "//button[contains(text(),'Cancel appointment')]" to be present
    Then element with xpath "//*[@role='dialog']//*[contains(text(),'Appointment summary')]" should be present
    Then I click on element with xpath "//button[contains(text(),'Cancel appointment')]"
    Then I wait for 3 sec
    Then I click on element with xpath "//button[@title='day view']"
    Then I wait for 3 sec
    Then element with xpath "//*[starts-with(@aria-label,'July 15,')]/..//following-sibling::div//*[text()='Ylvis Thornvalds']//..//parent::div" should not be present
    # appointment is cancelled
