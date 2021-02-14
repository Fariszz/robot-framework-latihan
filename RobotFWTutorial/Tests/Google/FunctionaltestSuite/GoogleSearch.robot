*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LOGIN URL}  https://www.google.com/
${BROWSER}  chrome

*** Test Cases ***
This is sample test case
    [documentation]  Google test
    [tags]  regression
    open browser  ${LOGIN URL}  ${BROWSER}
    close browser

*** Keywords ***
Provided precondition
    Setup system under test