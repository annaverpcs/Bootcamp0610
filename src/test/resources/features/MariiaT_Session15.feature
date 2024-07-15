Feature: Test Search Engines

  Scenario: Test duckduckgo.com functionality
    Given I open url "https://duckduckgo.com/"
    Then I type "tomato" into element with xpath "//input[@id='searchbox_input']"
    Then I click on element with xpath "//button[@type='submit']"
    Then element with xpath "//input[@value='tomato']" should be present
    Then element with xpath "//input[@id='search_form_input']" should have attribute "value" as 'tomato'
    Then element with xpath "//div[@id='react-layout']" should contain text 'tomato'
    Then I wait for 5 sec

 Scenario: Test swisscows.com functionality
   Given I open url "https://swisscows.com"
   Then I type "broccoli" into element with xpath "//input[@type='search']"
   Then I click on element with xpath "//button[@type='submit']"
   Then element with xpath "//input[@value='broccoli']" should be present
   Then element with xpath "//input[@class='input-search']" should have attribute "value" as "broccoli"
   Then I wait for 5 sec

 Scenario: Test giveWater.com functionality
   Given I open url "https://www.givewater.com/"
   Then I type "cherry" into element with xpath "//input[@id='site-search']"
   Then I click on element with xpath "//i[@class='fas fa-search']"
   Then element with xpath "(//input[@value='cherry' and @title='Search'])[1]" should be present
   Then element with xpath "//div[@class='web-yahoo-wrap']" should contain text "cherry"
   Then I wait for 5 sec

 Scenario: Test gibiru.com functionality
   Given I open url "https://gibiru.com/"
   Then I type "pineapple" into element with xpath "//input[@type='text']"
   Then I click on element with xpath "//i[@class='fas fa-search new']"
   Then I click on element with xpath "//div[contains(text(),'Images')]"
   Then element with xpath "(//a[contains(text(),'Pineapple')])[3]" should be present
   Then I wait for 5 sec


    