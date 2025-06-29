*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Handling Alert
    Open Browser    https://testautomationpractice.blogspot.com/    Chrome
    Maximize Browser Window
    Click Button    //button[text()='Simple Alert']
    Sleep    2
    Handle Alert    action=accept
    Sleep    2
    Click Button    //button[text()='Simple Alert']
    Sleep    2
    Handle Alert    action=dismiss
    Sleep    2
    Click Button    //button[text()='Simple Alert']
    Sleep    2
    Handle Alert    action=leave
    Sleep    2
