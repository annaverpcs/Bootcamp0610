@predefined @medicenter
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Gibiru
    Given I open url "https://www.gibiru.com"
    Then I should see page title as "Gibiru – Protecting your privacy since 2009"
    Then element with xpath "//*[@name='q']" should be present
    When I type "Tomato" into element with xpath "//*[@name='q']"
    Then I click on element using JavaScript with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//div[@class='gsc-control-cse gsc-control-cse-en']" to be present
    Then element with xpath "//div[@class='gsc-control-cse gsc-control-cse-en']" should contain text "Tomato"
