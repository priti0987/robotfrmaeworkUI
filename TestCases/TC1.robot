*** Settings ***
Library     SeleniumLibrary

*** Variables ***


*** Test Cases ***
LoginTest
    Open Browser    https://demo.nopcommerce.com/      Chrome
    Maximize Browser Window
    Sleep    5
*** Keywords ***
