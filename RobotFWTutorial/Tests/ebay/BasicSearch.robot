*** Settings ***
Documentation  Basic Search Functionality
Library  SeleniumLibrary

*** Variables ***
${LOGIN URL}  https://www.ebay.com/
${BROWSER}  chrome

*** Test Cases ***
Verify basic search functionality for ebay
    [Documentation]  This test case verifies the basic search
    [Tags]    Functional

    Start TestCase
    Verify Search Results
    Finish Test Case
    
*** Keywords ***

Start TestCase
    open browser  ${LOGIN URL}  ${BROWSER}
    maximize browser window

Verify Search Results
    input text  xpath://*[@id="gh-ac"]  mobile
#    press key  //*[@id="gh-btn"]  [Return]
    click element  xpath://*[@id="gh-btn"]
    page should contain  results for mobile

Finish Test Case
    close browser
