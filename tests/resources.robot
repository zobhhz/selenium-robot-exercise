*** Settings ***
Documentation    A resource file with reusable keywords and variables
...
...              Creating system specific keywords from default keywords
...              from SeleniumLibrary
Library          SeleniumLibrary

*** Variables ***
${SERVER}             www.saucedemo.com
${BROWSER}            chrome
${DELAY}              0
${VALID USER}         standard_user
${LOCKED OUT USER}    locked_out_user
${PROBLEM USER}       problem_user
${VALID PASSWORD}     secret_sauce
${INVALID PASSWORD}   12345
${LOGIN URL}          https://${SERVER}/
${HOME URL}           https://${SERVER}/inventory.html

*** Keywords ***
Open Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Check if in Login Page

Check if in Login Page
    Page Should Contain Element    login-button

Check if in Products Page
    Element Text Should Be      class:title     PRODUCTS

Input Username
    [Arguments]     ${username}
    Input Text      user-name   ${username} 

Input Passwrd
    [Arguments]     ${password}
    Input Password  password    ${password}

Submit Credentials
    Click Button    login-button

Go To Products Page
    Input Username  ${VALID USER}
    Input Passwrd   ${VALID PASSWORD}
    Submit Credentials
    Check if in Products Page

Check if Locked Out 
    Element Text Should Be  xpath://*[@id="login_button_container"]/div/form/div[3]/h3  Epic sadface: Sorry, this user has been locked out.

Check if Invalid Password
    Element Text Should Be  xpath://*[@id="login_button_container"]/div/form/div[3]/h3  Epic sadface: Username and password do not match any user in this service