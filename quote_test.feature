@test_prep
Feature: Quote_test predefined

  @quote_prep1
  Scenario: Validation of the fields
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"
    When I type "tester" into element with xpath "//input[@name='username']"
    Then I click on element with xpath "//input[@id='password']"
    Then I click on element with xpath "//input[@id='name']"
    Then I wait for element with xpath "//div[@aria-describedby='nameDialog']" to be present
    When I type "test" into element with xpath "//input[@id='firstName']"
    When I type "test" into element with xpath "//input[@id='middleName']"
    When I type "test" into element with xpath "//input[@id='lastName']"
    Then I click on element using JavaScript with xpath "//span[contains(text(),'Save')]"
    When I type "test@gmail.com" into element with xpath "//input[@name='email']"
    Then I click on element with xpath "//input[@id='password']"
    When I type "Tester123" into element with xpath "//input[@id='password']"
    And I type "Tester123" into element with xpath "//input[@id='confirmPassword']"
    Then element with xpath "//label[@class='required checkbox_radio']" should have attribute "aria-required" as "true"
    Then I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
    When I type "14708079647" into element with xpath "//input[@name='phone']"
    Then I click on element with xpath "//select[@name='countryOfOrigin']"
    And I click on element with xpath "//option[contains(text(),'United States of America')]"
    Then I click on element with xpath "//input[@value='female']"
    When I type "3470 Ronald Reagan Blvd. Duluth Georgia 45067 United States" into element with xpath "//textarea[@id='address']"
    Then I click on element with xpath "//option[contains(text(),'Ford')]"
    Then I click on element with xpath "//button[@id='thirdPartyButton']"
    Then I accept alert
    Then I click on element with xpath "//input[@id='dateOfBirth']"
    Then element with xpath "//div[@id='ui-datepicker-div']" should be displayed
    Then I click on element with xpath "//select[@class='ui-datepicker-year']"
    And I click on element with xpath "//option[contains(text(),'1987')]"
    And I click on element with xpath "//select[@class='ui-datepicker-month']"
    And I click on element with xpath "//a[contains(text(),'16')]"
    Then I click on element with xpath "//input[@name='allowedToContact']"
#    Validate that All fields was filled out!
    Then I take screenshot
    Then I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//legend[contains(text(),'Submitted Application')]" should be displayed
          #      Validation of the UserName
    Then element with xpath "//b[contains(text(),'tester')]" should be displayed
          #      Validation of the Name
    Then element with xpath "//input[@id='name']" should have attribute "value" as "test test test"
          #      Validation of the Email
    Then element with xpath "//b[contains(text(),'test@gmail.com')]" should be displayed
          #      Validation of the Phone Number
    Then element with xpath "//b[contains(text(),'14708079647')]" should be displayed
          #      Validation of the Country of Origin
    Then element with xpath "//b[contains(text(),'USA')]" should be displayed
          #      Validation of the Gender
    Then element with xpath "//b[contains(text(),'female')]" should be displayed
          #      Validation of the Allowed to Contact?
    Then element with xpath "//b[@name='allowedToContact']" should have text as 'true'
          #      Validation of the Address
    Then element with xpath "//b[contains(text(),'3470 Ronald Reagan Blvd')]" should be displayed
          #      Validation of the Car Make
    Then element with xpath "//b[contains(text(),'Ford')]" should be displayed
          #      Validation of the 3rd party agreement acceptance
    Then element with xpath "//span[contains(text(),'Third Party Agreement')]" should be displayed
    Then element with xpath "//b[@name='thirdPartyAgreement']" should have text as 'accepted'
          #      Validation of the Date of Birth
    Then element with xpath "//b[contains(text(),'1987')]" should be displayed
          #      Validation of the Password
    Then element with xpath "//b[contains(text(),'entered')]" should be displayed
    Then I take screenshot

    Then