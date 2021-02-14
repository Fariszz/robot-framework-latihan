*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Test Cases ***
This is sample test case
    [documentation]  Google test
    [tags]  regression

*** Keywords ***
Provided precondition
    Setup system under test