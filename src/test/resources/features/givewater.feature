@predefined @medicenter
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Givewater
    Given I open url "https://givewater.com"
    Then I should see page title as "Search the Web to Give Clean Water to Those in Need » giveWater Search Engine"
    Then element with xpath "//*[@name='q']" should be present
    When I type "Apple" into element with xpath "//*[@name='q']"
    Then I click on element using JavaScript with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//div[@class='mainline-results mainline-results__web']" to be present
    Then element with xpath "//div[@class='mainline-results mainline-results__web']" should contain text "Apple"
