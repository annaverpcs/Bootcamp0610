#Session 19
@medicenter
Feature: Medical Center Scenarios Data Driven

  Scenario Outline: Make an appointment as patient and Delete an appointment Data Driven
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//label[contains(text(),'Email address')]" to be present
    Then I type <email> into element with xpath "//input[@id='email']"
    Then I type <password> into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[contains(text(),'Sign in')]"
    Then I wait for element with xpath "//h1[contains(text(),'Rachel Green')]" to be present
    Then I click on element with xpath "//button[contains(text(),'Make an appointment')]"
    When I wait for element with xpath "//span[contains(text(),'Make an appointment')]" to be present
    Then I type <text2> into element with xpath "//textarea[@id='note']"
    Then I wait for <sec> sec
    Then I click on element with xpath "//select[@name='employee_id']/..//option[15]"
    Then I wait for <sec1> sec
    And I type <text3> into element with xpath "//input[@id='date']"
    Then I wait for <sec> sec
    Then I click on element with xpath "//button[contains(text(),'08:00 AM')]"
    Then I wait for <sec> sec
    Then I click on element with xpath "//button[contains(text(),'Save')]"
    And I wait for element with xpath "//p[contains(text(),'Heartache')]" to be present
    Then element with xpath "//p[contains(text(),'Heartache')]/ancestor::article/div[1]/h3" should contain text <text4>
    Then I wait for element with xpath "//p[contains(text(),'Heartache')]/ancestor::article/div[2]/span" to be present
    And I click on element with xpath "//p[contains(text(),'Heartache')]/ancestor::article/div[2]/span"
    Then I wait for <sec> sec
    Then element with xpath "//h2[contains(text(),'Are you sure you want to cancel appointment?')]" should contain text <text5>
    And I click on element with xpath "//button[contains(text(),'Cancel appointment')]"
    Then I wait for <sec> sec
    And element with xpath "//h3[contains(text(),'Tuesday 30 July 2024, 08:00')]" should not be present
    Then I wait for <sec> sec
    Examples:
      | email                   | password    | text2    | sec | sec1 | text3        | text4                        | text5                                          |
      | "plee821390@kinilu.com" | "abc123" | "Heartache" |  3  | 5    | "31.07.2024" | "Tuesday 30 July 2024, 08:00" | "Are you sure you want to cancel appointment?" |