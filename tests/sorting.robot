*** Settings ***
Documentation   A test suite with a 4 test cases for sorting.
...
...             This test is for test case #1.
Resource        resources.robot

*** Test Cases ***
Sort high to low
    Open Login Page
    Go To Products Page
    Select From List By Value   xpath://*[@id="header_container"]/div[2]/div[2]/span/select      hilo
    Element Text Should Be     xpath://html/body/div/div/div/div[2]/div/div/div/div[1]/div[2]/div[1]/a/div      Sauce Labs Fleece Jacket

Sort low to high
    Open Login Page
    Go To Products Page
    Select From List By Value   xpath://*[@id="header_container"]/div[2]/div[2]/span/select      hilo
    Element Text Should Be     xpath://html/body/div/div/div/div[2]/div/div/div/div[1]/div[2]/div[1]/a/div      Sauce Labs Onesie