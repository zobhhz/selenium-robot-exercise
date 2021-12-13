*** Settings ***
Documentation   A test suite with a single test for valid login
...
...             This test is for test case #1.
Resource        resources.robot

*** Test Cases ***
Valid Login
    # open browser and check if in login
    Open Login Page

    # input and submit credentials and check if in product page
    Go To Products Page

    # close browser
    [Teardown]    Close Browser
