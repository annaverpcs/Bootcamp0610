# Marianna Vozniuk
# Manual Test Cases for User Stories 5, 9

 #i can add tags for regression, for smoke or any other type of testing. with @.
@medicenter
Feature: Test Medical Center Scenarios

  Scenario: Test login functionality
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I wait for 2 sec
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for 2 sec
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    Then I wait for 2 sec
    Then I click on element with xpath "//button[contains(text(),'Sign in')]"
    Then I wait for 2 sec
    Then element with xpath "//h1[contains(text(),'Mary Poppins')]" should be present
    Then I wait for 3 sec

  Scenario: Test Add appt as admin functionality
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I wait for 2 sec
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for 2 sec
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    Then I wait for 2 sec
    Then I click on element with xpath "//button[contains(text(),'Sign in')]"
    Then I wait for 2 sec
    Then element with xpath "//h1[contains(text(),'Mary Poppins')]" should be present
    Then I wait for 3 sec
    Then I click on element with xpath "//button[@role='tab'][contains(text(),'Appointments')]"
    Then I wait for 2 sec
    Then I click on element with xpath "//button[@class='bg-teal-600 hover:bg-teal-700 focus:ring-teal-500 outline-teal-100 h-fit w-full whitespace-nowrap justify-center gap-2 inline-flex items-end rounded-md border border-transparent px-4 py-2 text-base font-medium text-white shadow-sm focus:outline-none focus:ring-2 focus:ring-offset-2 transition-all duration-200 ease-in-out']"

  Scenario: Test login as a patient


  Scenario: Make an appt as a patient and delete an appt
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I wait for 1 sec
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "patient2@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    Then I wait for 1 sec
    Then I click on element with xpath "//button[contains(text(),'Sign in')]"
    Then I wait for 2 sec
    Then element with xpath "//div/h1[contains(text(),'Alice Wonderland')]" should be present
    Then I wait for 5 sec
      #land on home page
    #patient creates an appt
    Then I type "Marianna UniqueAppt123" into element with xpath "//div/textarea[@name='note']"
    Then I type "07/16/2024" into element with xpath " //input[@id='date']"
    Then I click on element with xpath "{string}"
    Then I wait for 5 sec
    #delete an appt
    Then I wait for element with xpath "" to be present
    Then I wait for 2 sec
    Then I click on element with xpath ""
    Then I wait for 2 sec
    #confirmation popup window is present
    Then element with xpath "//h2[contains(text(),'Are you sure you want to cancel appointment?')]" should be present 
    Then I click on element with xpath "//button[contains(text(),'Cancel appointment')]"
    Then I wait for 2 sec
    #verify the appt is canceled
    Then I wait for element with xpath "" to not be present
    And element with xpath "" should not be present
    Then I wait for 2 sec



