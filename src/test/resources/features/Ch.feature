Feature: Test Search Engines

  Scenario: testing duckduckgo
    Given I open url "https://duckduckgo.com/"
    Then I type "apples and oranges" into element with xpath "//input[contains(@class,'searchbox')]"
    Then I wait for 3 sec
    Then I click on element with xpath "//button[@aria-label='Search']"
    Then element with xpath "//input[@value='apples and oranges']" should have attribute "value" as "apples and oranges"
    Then element with xpath "//ol[@class='react-results--main']" should contain text "apples and oranges"
    Then I wait for 3 sec

  Scenario: testing swisscows.com
    Given I open url "https://swisscows.com/en"
    Then I type "akimbo" into element with xpath "//input[@class and @placeholder]"
    Then I wait for 3 sec
    Then I click on element with xpath "//button[@class='search-submit']"
    Then element with xpath "//input[@class='input-search']" should have attribute "value" as "akimbo"
    Then I wait for 3 sec
    Then element with xpath "//div[@class='web-results']" should contain text "Akimbo"
    Then I wait for 3 sec

  Scenario: make an appointment as patient and then cancel the appointment
    Given I open url {string}
    Then I type {string} into element with xpath {string}
    Then I type {string} into element with xpath {string}
    And I click on element using JavaScript with xpath {string}
    Then I wait for element with xpath {string} to be present
    # land on home page
    #
    Then I click on element with xpath {string}
    Then I wait for element with xpath {string} to be present
    Then I type {string} into element with xpath {string}
    Then I click on element with xpath {string}
    Then I 