*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://lmsslc.polinema.ac.id/login/index.php


*** Test Cases ***
Testing Input Box
    open browser  ${url}  ${browser}
    maximize browser window

    title should be  LMS Polinema: Log in to the site
    ${"user_txt"}  set variable  id:username

    element should be visible  ${"user_txt"}
    element should be enabled  ${"user_txt"}

    input text  ${"user_txt"}  #username
    sleep  5
    clear element text  ${"user_txt"}
    sleep  3
    close browser

*** Keywords ***
