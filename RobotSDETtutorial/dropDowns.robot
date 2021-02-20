*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://testautomationpractice.blogspot.com/

*** Test Cases ***
Handling DrpDowns and Lists

    open browser  ${url}  ${browser}
    maximize browser window

    select from list by label  speed  Slow
    sleep  3
    select from list by index  speed  2

#    select from list by value  speed


