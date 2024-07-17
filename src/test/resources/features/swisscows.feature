@predefined @medicenter
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Swisscows
    Given I open url "https://swisscows.com"
    Then I should see page title as "Your private and anonymous search engine Swisscows"
    Then element with xpath "//*[@name='query']" should be present
    When I type "Orange" into element with xpath "//*[@name='query']"
    Then I click on element using JavaScript with xpath "//button[@type='submit']"

    Then I wait for element with xpath "//div[@class='web-results']" to be present
    Then element with xpath "//div[@class='web-results']" should contain text "Orange"
