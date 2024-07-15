Feature: Medical Center login using Selenium WebDriver methods

  Scenario: Login to Medicenter with Selenium WebDriver methods
    Given MariiaT launch "MedicenterV2"
    Then MariiaT page title is "Medicenter"
    Then MariiaT click on "Login" button
    Then I wait for element with xpath "//label[contains(text(),'Email address')]" to be present
    Then MariiaT type "administrator1@gmail.com" into "Email" textfield
    Then MariiaT type "abc123" into "Password" textfield
    Then MariiaT click on "Sign in" button