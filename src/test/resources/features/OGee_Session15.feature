
Feature: Test Search Engines@predefined1

  Scenario: Test duckduckgo.com functionality

    Given I open url "https://duckduckgo.com/"
    Then I type "tomato" into element with xpath "//input[@class='searchbox_input__bEGm3']"
    Then I wait for 1 sec
    Then I click on element with xpath "//button[@type='submit']"
    Then I wait for 3 sec
    Then element with xpath "//input[@value='tomato']" should be present
    Then element with xpath "//input[@id='search_form_input']" should have attribute "value" as "tomato"
    Then element with xpath "//div[@class='site-wrapper  js-site-wrapper']" should contain text "tomato "
