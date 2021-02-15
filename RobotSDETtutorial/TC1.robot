*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://lmsslc.polinema.ac.id/login/index.php

*** Test Cases ***
Login Test
    open browser  ${url}  ${browser}
    LoginToApplication
    close browser

*** Keywords ***
LoginToApplication
    input text  id:username  2031710150
    input text  id:password  2031710150
    click element  xpath://*[@id="loginbtn"]