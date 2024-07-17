Feature: Medical Center Login using Selenium WebDriver methods
  @medicenter
  Scenario: Login to MediCenter with Selenium WebDriver method
    Given MarV launch "MediCenterV2"
    Then MarV page title is "MediCenter"
    Then I click on "Login" button
    Then I wait for element with xpath {string} to not be present
    Then I type "administrator1@gmail.com" into "Email" textfield
    Then I type "" into "" textfiled
    Then MarV click on "Sign In" button
