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
