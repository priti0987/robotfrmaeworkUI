*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Handling Alert
    Open Browser    https://testautomationpractice.blogspot.com/    Chrome
    Maximize Browser Window
    Click Button    //button[text()='Simple Alert']