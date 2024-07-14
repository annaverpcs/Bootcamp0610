@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Wiki
    Given I open url "https://www.wiki.com"
    Then I should see page title as "Wiki.com"
    Then element with xpath "//*[@name='q']" should be present
    When I type "Pineapple" into element with xpath "//*[@name='q']"
    Then I click on element using JavaScript with xpath "//input[@type='submit']"
    Then I click on element using JavaScript with xpath "//button[contains(text(),'Send anyway')]"
    Then I wait for element with xpath "//section[@data-area='mainline']" to be present
    Then element with xpath "//section[@data-area='mainline']" should contain text "Pineapple"