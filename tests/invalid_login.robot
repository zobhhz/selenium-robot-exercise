*** Settings ***
Documentation   A test suite with a 3 test cases for invalid login.
...
...             This test is for test case #1.
Resource        resources.robot

*** Test Cases ***
Locked Out Login
    # open browser and check if in login
    Open Login Page

    Input Username  ${LOCKED OUT USER}
    Input Passwrd  ${VALID PASSWORD}
    Submit Credentials
    Check if Locked Out 

    # close browser
    [Teardown]    Close Browser

Wrong Password
    # open browser and check if in login
    Open Login Page

    Input Username  ${PROBLEM USER}
    Input Passwrd  ${INVALID PASSWORD}
    Submit Credentials
    Check if Invalid Password
    # close browser
    [Teardown]    Close Browser

Problem Login
    # open browser and check if in login
    Open Login Page

    Input Username  ${PROBLEM USER}
    Input Passwrd  ${VALID PASSWORD}
    Submit Credentials
    Check if in Products Page
    # close browser
    [Teardown]    Close Browser