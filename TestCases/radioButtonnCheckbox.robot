*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://demowebshop.tricentis.com/register

*** Test Cases ***
Home Page
    Open Browser    ${url}      Chrome
    Maximize Browser Window
    Wait Until Element Is Visible    //input[@value='Register']
    Select Radio Button    Gender    M
    Sleep    5