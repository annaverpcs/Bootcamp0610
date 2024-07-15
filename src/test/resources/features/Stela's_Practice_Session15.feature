#Feature: Test Search Engines
#  Scenario: Test https://duckduckgo.com/ functionality
#    Given I open url "https://duckduckgo.com/"
#    Then I type "tomato" into element with xpath "//input[@id='searchbox_input']"
#    Then I click on element with xpath "//button[@type='submit']"
#    Then element with xpath "//input[@value='tomato']" should be present
#    Then I wait for 3 sec


#   Scenario: Testing https://swisscows.com/en
#  Given I open url "https://swisscows.com/en"
#  Then I type "baby" into element with xpath "//input[@class='input-search']"
#  Then I click on element with xpath "//button[@type='submit']"
#  Then element with xpath "//input[@value='baby']" should be present




Feature:Test Medical center
  Scenario:Test Login as admin in https://medicenter-qa2.vercel.app/
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I wait for 2 sec
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for 2 sec
    Then element with xpath "//a[contains(text(),'Back to home')]" should be present
    Then I wait for 2 sec
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I wait for 2 sec
    Then I type "abc123" into element with xpath "//input[@id='password']"
    Then I wait for 2 sec
    Then I click on element with xpath "//input[@id='password']"
    Then I wait for 2 sec
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for 2 sec
    Then element with xpath "//h1[contains(text(),'Mary Poppins')]" should be present
    Then I wait for 4 sec







