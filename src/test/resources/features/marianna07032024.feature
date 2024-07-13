Feature: Test search engines

  Scenario: Test https://duckduckgo.com/ functionality
    Given I open url "https://duckduckgo.com/"
    Then I type "solar system" into element with xpath "//input[@id='searchbox_input']"
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for 3 sec
    Then I wait for element with xpath "//input[@value='solar system']" to be present
    Then element with xpath "//div[@id='react-layout']" should contain text "solar system"
    Then I wait for 5 sec

  Scenario: Test https://swisscows.com functionality
    Given I open url "https://swisscows.com/en"
    Then element with xpath "//div/img[@class='logo mobile-only']" should be displayed
    Then I wait for 5 sec

  Scenario: Test https://www.givewater.com functionality
    Given I open url "https://www.givewater.com"
    Then element with xpath "//nav/a[@class='navbar-brand']" should be present
    Then I wait for 3 sec

  Scenario: Test www.gibiru.com functionality
    Given I open url "https://gibiru.com/"
    Then element with xpath "//div/img[@title='Gibiru']" should be present
    Then I wait for 3 sec
    Then I click on element with xpath "//input[@id='q']"
    Then I type "flowers" into element with xpath "//input[@id='q']"
    Then I click on element with xpath "//div/button[@id='button-addon2']"
    Then I wait for 4 sec





