@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for DuckDuckgo
    Given I open url "https://duckduckgo.com"
    Then I should see page title as "DuckDuckGo — Privacy, simplified."
    Then element with xpath "//input[@id='searchbox_input']" should be present
    When I type "Avocado" into element with xpath "//input[@id='searchbox_input']"
    Then I click on element using JavaScript with xpath "//button[@aria-label='Search']"
    Then I wait for element with xpath "//section[@data-area='mainline']" to be present
    Then element with xpath "//section[@data-area='mainline']" should contain text "Avocado"
