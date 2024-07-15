# MediCenter V2 test scenarios for user stories 3 and 7
# Author : Anton Chukin
Feature: user stories # 3 and # 7

#  user story # 3 (Test set JUN-236) - As an administrator, I can add new specialist
  @functionality @Medicenter @user-story-3
  Scenario: Happy flow of adding new specialist
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
    Then I click on element with xpath "//button[starts-with(text(),'Specialist')]"
    Then antch click on "Add specialist" button
    Then I wait for element with xpath "//*[@role='dialog']" to be present
    Then element with xpath "//*[@role='dialog']//*[contains(text(),'New specialist')]" should be present
    Then I type "Sirano" into element with xpath "//*[@role='dialog']//input[@name='first_name']"
    Then I type "de Berzerak" into element with xpath "//*[@role='dialog']//input[@name='last_name']"
    Then I click on element with xpath "//*[@role='dialog']//option[@value='doctor']"
    Then I click on element with xpath "//*[@role='dialog']//label[contains(text(),'Mon')]/parent::button"
    Then I click on element with xpath "//*[@id='working_hours.monday.from']"
    Then I type "0900" into element with xpath "//*[@id='working_hours.monday.from']"
    Then I click on element with xpath "//*[@id='working_hours.monday.to']"
    Then I type "1100" into element with xpath "//*[@id='working_hours.monday.to']"
    Then I click on element with xpath "//*[@role='dialog']//*[@type='submit']"
    Then I wait for 4 sec
    Then I open url "https://medicenter-qa2.vercel.app/admin"
    Then I wait for element with xpath "//table[contains(@class,'full')]//td[contains(text(),'Sirano de Berzerak')]//parent::tr" to be present
    Then element with xpath "//td[contains(text(),'Sirano de Berzerak')]/following::td[1]" should contain text "octor"
    Then I click on element using JavaScript with xpath "//td[contains(text(),'Sirano de Berzerak')]/following::td[2]//*[contains(text(),'edit')]"
    Then I wait for element with xpath "//*[@id='working_hours.monday.from']" to be present
   # Then element with xpath "//*[@id='working_hours.monday.from']" should contain text "00:00"
    Then I wait for 4 sec
    Then I click on element with xpath "//*[@role='dialog']//button//*[contains(text(),'close')]"
    Then I click on element with xpath "//td[contains(text(),'Sirano de Berzerak')]/following::td[2]//*[contains(text(),'delete')]"

# data-driven Test set (JUN-236) for user story # 3  - As an administrator, I can add new specialist
  @functionality @Medicenter @user-story-3 @data-driven
  Scenario Outline: adding new specialist with various inputs
    Given antch launch MedicenterV2
    Then I wait for element with xpath <xpath> to be present
    Then antch click on <sSmthName> button
    Then I wait for element with xpath <xpath1> to be present
    Then I type <text> into element with xpath <xpath2>
    Then I type <text1> into element with xpath <xpath3>
    Then antch click on <sSmthName1> button
    Then I wait for element with xpath <xpath4> to be present
    Then element with xpath <xpath5> should be present
    Then I click on element with xpath <xpath4>
    Then antch click on <sSmthName2> button
    Then I wait for element with xpath <xpath6> to be present
    Then element with xpath <xpath7> should be present
    Then I type <text2> into element with xpath <xpath8>
    Then I type <text3> into element with xpath <xpath9>
    Then I click on element with xpath <xpath10>
    Then I click on element with xpath <xpath11>
    Then I click on element with xpath <xpath12>
    Then I type <text4> into element with xpath <xpath12>
    Then I click on element with xpath <xpath13>
    Then I type <text5> into element with xpath <xpath13>
    Then I click on element with xpath <xpath14>
    Then I wait for 4 sec
    Then I open url <url>
    Then I wait for element with xpath <xpath15> to be present
    Then element with xpath <xpath16> should contain text <text6>
    Then I click on element using JavaScript with xpath <xpath17>
    Then I wait for element with xpath <xpath12> to be present
    Then I wait for <sec> sec
    Then I click on element with xpath <xpath18>
    Then I click on element with xpath <xpath19>
    Examples:
      | xpath                                        | sSmthName | xpath1                | text                       | xpath2                 | text1    | xpath3                    | sSmthName1 | xpath4                                       | xpath5                                                                                   | sSmthName2       | xpath6                | xpath7                                                      | text2    | xpath8                                           | text3         | xpath9                                          | xpath10                                        | xpath11                                                             | xpath12                                | text4  | xpath13                              | text5  | xpath14                                  | sec | url                                       | xpath15                                                                                   | xpath16                                                        | text6   | xpath17                                                                                    | xpath18                                                    | xpath19                                                                                      |
      | "//header//button[contains(text(),'Login')]" | "Login"   | "//*[@type='submit']" | "administrator2@gmail.com" | "//input[@id='email']" | "abc123" | "//input[@id='password']" | "Sign In"  | "//button[starts-with(text(),'Specialist')]" | "//header/div/*[not(contains(text(),'Medical Center')) and not(contains(text(),'Log'))]" | "Add specialist" | "//*[@role='dialog']" | "//*[@role='dialog']//*[contains(text(),'New specialist')]" | "Sirano" | "//*[@role='dialog']//input[@name='first_name']" | "de Berzerak" | "//*[@role='dialog']//input[@name='last_name']" | "//*[@role='dialog']//option[@value='doctor']" | "//*[@role='dialog']//label[contains(text(),'Mon')]/parent::button" | "//*[@id='working_hours.monday.from']" | "0000" | "//*[@id='working_hours.monday.to']" | "2359" | "//*[@role='dialog']//*[@type='submit']" | 4   | "https://medicenter-qa2.vercel.app/admin" | "//table[contains(@class,'full')]//td[contains(text(),'Sirano de Berzerak')]//parent::tr" | "//td[contains(text(),'Sirano de Berzerak')]/following::td[1]" | "octor" | "//td[contains(text(),'Sirano de Berzerak')]/following::td[2]//*[contains(text(),'edit')]" | "//*[@role='dialog']//button//*[contains(text(),'close')]" | "//td[contains(text(),'Sirano de Berzerak')]/following::td[2]//*[contains(text(),'delete')]" |
      | "//header//button[contains(text(),'Login')]" | "Login"   | "//*[@type='submit']" | "administrator2@gmail.com" | "//input[@id='email']" | "abc123" | "//input[@id='password']" | "Sign In"  | "//button[starts-with(text(),'Specialist')]" | "//header/div/*[not(contains(text(),'Medical Center')) and not(contains(text(),'Log'))]" | "Add specialist" | "//*[@role='dialog']" | "//*[@role='dialog']//*[contains(text(),'New specialist')]" | "Sirano" | "//*[@role='dialog']//input[@name='first_name']" | "de Berzerak" | "//*[@role='dialog']//input[@name='last_name']" | "//*[@role='dialog']//option[@value='doctor']" | "//*[@role='dialog']//label[contains(text(),'Mon')]/parent::button" | "//*[@id='working_hours.monday.from']" | "0900" | "//*[@id='working_hours.monday.to']" | "0959" | "//*[@role='dialog']//*[@type='submit']" | 4   | "https://medicenter-qa2.vercel.app/admin" | "//table[contains(@class,'full')]//td[contains(text(),'Sirano de Berzerak')]//parent::tr" | "//td[contains(text(),'Sirano de Berzerak')]/following::td[1]" | "octor" | "//td[contains(text(),'Sirano de Berzerak')]/following::td[2]//*[contains(text(),'edit')]" | "//*[@role='dialog']//button//*[contains(text(),'close')]" | "//td[contains(text(),'Sirano de Berzerak')]/following::td[2]//*[contains(text(),'delete')]" |
      | "//header//button[contains(text(),'Login')]" | "Login"   | "//*[@type='submit']" | "administrator2@gmail.com" | "//input[@id='email']" | "abc123" | "//input[@id='password']" | "Sign In"  | "//button[starts-with(text(),'Specialist')]" | "//header/div/*[not(contains(text(),'Medical Center')) and not(contains(text(),'Log'))]" | "Add specialist" | "//*[@role='dialog']" | "//*[@role='dialog']//*[contains(text(),'New specialist')]" | "Sirano" | "//*[@role='dialog']//input[@name='first_name']" | "de Berzerak" | "//*[@role='dialog']//input[@name='last_name']" | "//*[@role='dialog']//option[@value='doctor']" | "//*[@role='dialog']//label[contains(text(),'Mon')]/parent::button" | "//*[@id='working_hours.monday.from']" | "    " | "//*[@id='working_hours.monday.to']" | "1100" | "//*[@role='dialog']//*[@type='submit']" | 4   | "https://medicenter-qa2.vercel.app/admin" | "//table[contains(@class,'full')]//td[contains(text(),'Sirano de Berzerak')]//parent::tr" | "//td[contains(text(),'Sirano de Berzerak')]/following::td[1]" | "octor" | "//td[contains(text(),'Sirano de Berzerak')]/following::td[2]//*[contains(text(),'edit')]" | "//*[@role='dialog']//button//*[contains(text(),'close')]" | "//td[contains(text(),'Sirano de Berzerak')]/following::td[2]//*[contains(text(),'delete')]" |
      | "//header//button[contains(text(),'Login')]" | "Login"   | "//*[@type='submit']" | "administrator2@gmail.com" | "//input[@id='email']" | "abc123" | "//input[@id='password']" | "Sign In"  | "//button[starts-with(text(),'Specialist')]" | "//header/div/*[not(contains(text(),'Medical Center')) and not(contains(text(),'Log'))]" | "Add specialist" | "//*[@role='dialog']" | "//*[@role='dialog']//*[contains(text(),'New specialist')]" | "Sirano" | "//*[@role='dialog']//input[@name='first_name']" | "de Berzerak" | "//*[@role='dialog']//input[@name='last_name']" | "//*[@role='dialog']//option[@value='doctor']" | "//*[@role='dialog']//label[contains(text(),'Mon')]/parent::button" | "//*[@id='working_hours.monday.from']" | "0900" | "//*[@id='working_hours.monday.to']" | "    " | "//*[@role='dialog']//*[@type='submit']" | 4   | "https://medicenter-qa2.vercel.app/admin" | "//table[contains(@class,'full')]//td[contains(text(),'Sirano de Berzerak')]//parent::tr" | "//td[contains(text(),'Sirano de Berzerak')]/following::td[1]" | "octor" | "//td[contains(text(),'Sirano de Berzerak')]/following::td[2]//*[contains(text(),'edit')]" | "//*[@role='dialog']//button//*[contains(text(),'close')]" | "//td[contains(text(),'Sirano de Berzerak')]/following::td[2]//*[contains(text(),'delete')]" |

#  JUN-409 Adding new specialist with an empty Last name field
#  JUN-408 Adding new specialist with an empty first name field
#  JUN-321 Add new specialist with pasting 99 chars in "Last Name" field
#  JUN-319 #Add new specialist with pasting 99 chars in "First Name" field
#  JUN-244 New specialist's working hours can span the whole 24 hours day
#  JUN-243 Specialist's working hours cannot finish past 23:59
#  JUN-242 Specialist's working starting hours can not be after end hours
#  JUN-241 Specialist's working hours cannot be less than 1 hour
#  JUN-142 Specialist's working hours are at least 1 hour

#  user story # 7 (Test set JUN-309) - As an administrator, I can cancel an appointment
#  JUN-311 Cancelling an appointment as an administrator
  @functionality @Medicenter @user-story-7
  Scenario: make an appointment as admin and then cancel the appointment
    Given antch launch MedicenterV2
    Then I wait for element with xpath "//header//button[contains(text(),'Login')]" to be present
    Then antch click on "Login" button
    # Then I click on element with xpath "//header//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//*[@type='submit']" to be present
    Then I type "administrator2@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    Then I wait for 2 sec
    Then antch click on "Sign In" button
    Then I wait for 4 sec
    # landed on home page
    Then I wait for element with xpath "//button[starts-with(text(),'Specialist')]" to be present
    Then element with xpath "//header/div/*[not(contains(text(),'Medical Center')) and not(contains(text(),'Log'))]" should be present
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
#   # appointment is cancelled