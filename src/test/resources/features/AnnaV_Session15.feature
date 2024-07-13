Feature: Test Search Engines
  
  Scenario: Test duckduckgo.com functionality
    Given I open url "https://duckduckgo.com/"
    Then I type "tomato" into element with xpath "//input[@id='searchbox_input']"
    Then I click on element with xpath "//button[@type='submit']"
    Then element with xpath "//input[@value='tomato']" should be present
    Then element with xpath "//input[@value='search_form_input']" should have attribute "value" as 'tomato'

    Then element with xpath "//div[@id='react-layout']" should contain text 'tomato'
    Then I wait for 5 sec
