Feature: Medical Center login using Selenium WebDriver methods

  Scenario: Login to Medicenter with Selenium WebDriver methods
    Given AnnaV launch "MedicenterV2"
    Then AnnaV page title is "Medicenter"
    Then AnnaV click on "Login" button
    Then I wait for element with xpath "//label[contains(text(),'Email address')]" to be present
    Then AnnaV type "administrator1@gmail.com" into "Email" textfield
    Then AnnaV type "abc123" into "Password" textfield
    #Then AnnaV click Sign in button
    Then AnnaV click on "Sign in" button
