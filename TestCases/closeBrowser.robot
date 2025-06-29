*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
myTest
    Open Browser    https://demowebshop.tricentis.com/register      Chrome
    Maximize Browser Window

    Open Browser    https://www.icicibank.com       Chrome
    Maximize Browser Window

    #Close Browser
    Close All Browsers
    Sleep    2
