#Session 19

Feature: Medical Center Scenarios Data Driven
  @medicenter
  Scenario Outline: Make an appointment as Patient and Delete an appointment Data Driven
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//label[contains(text(),'Email address')]" to be present
    Then I type <email> into element with xpath "//input[@id='email']"
    Then I type <password> into element with xpath "//input[@id='password']"
    And I click on element with xpath <xpath2>
    Then I wait for element with xpath <xpath3> to be present
    Then I click on element with xpath <xpath4>
    When I wait for element with xpath <xpath5> to be present
    Then I type <text2> into element with xpath <xpath6>
    Then I wait for <sec> sec
    Then I click on element with xpath <xpath7>
    And I type <text3> into element with xpath <xpath8>
    Then I wait for <sec> sec
    And I click on element with xpath <xpath9>
    And I click on element with xpath <xpath10>
    And I wait for element with xpath <xpath11> to be present
    Then element with xpath <xpath12> should contain text <text4>
    Then I wait for element with xpath <xpath13> to be present
    And I click on element with xpath <xpath13>
    Then I wait for <sec> sec
    Then element with xpath <xpath14> should contain text <text5>
    Then I click on element with xpath <xpath15>
    Then I wait for <sec> sec
    And element with xpath <xpath11> should not be present
    Examples:
      | email                 |  password    | xpath2                                 | xpath3                                   | xpath4                                             | xpath5                                           | text2                           | xpath6                   | sec | xpath7                                         | text3        | xpath8                | xpath9                                  | xpath10                             | xpath11                                                 | xpath12                                                                             | text4                         | xpath13                                                                               | xpath14                                                                 | text5                                          | xpath15                                           |
      | "patient1@gmail.com" |  "abc123" | "//button[contains(text(),'Sign in')]" | "//h1[contains(text(),'James Johnson')]" | "//button[contains(text(),'Make an appointment')]" | "//span[contains(text(),'Make an appointment')]" | "Anna Unique appointment 12435" | "//textarea[@id='note']" | 1   | "//select[@name='employee_id']/..//option[12]" | "07/17/2024" | "//input[@id='date']" | "//button[contains(text(),'10:15 AM')]" | "//button[contains(text(),'Save')]" | "//p[contains(text(),'Anna Unique appointment 12435')]" | "//p[contains(text(),'Anna Unique appointment 12435')]/ancestor::article/div[1]/h3" | "Tuesday 16 July 2024, 10:15" | "//p[contains(text(),'Anna Unique appointment 12435')]/ancestor::article/div[2]/span" | "//h2[contains(text(),'Are you sure you want to cancel appointment?')]" | 'Are you sure you want to cancel appointment?' | "//button[contains(text(),'Cancel appointment')]" |
