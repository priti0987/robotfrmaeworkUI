*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://www.saucedemo.com/
${userName}     standard_user
${password}     secret_sauce

*** Test Cases ***
HomePage
    Open Browser    ${url}      Chrome
    Maximize Browser Window
    Input Text    user-name    ${userName}
    Input Text    password    ${password}