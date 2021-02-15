*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://demo.automationtesting.in/Register.html

*** Test Cases ***
Testing Radio Buttons and Check Boxes
    open browser  ${url}  ${browser}
    maximize browser window
    set selenium speed  2seconds

    #selecting Radio Buttons
    select radio button  radiooptions  Male
#    select radio button  name value

    #Selecting check Box
    select checkbox  Cricket
    select checkbox  Movies

    unselect checkbox  Movies
*** Keywords ***
Provided precondition
    Setup system under test