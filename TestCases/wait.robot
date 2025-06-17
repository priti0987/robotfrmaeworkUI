*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://www.saucedemo.com/
${userName}     standard_user
${password}     secret_sauce

*** Test Cases ***
Login
    Open Browser    ${url}      Chrome
    Maximize Browser Window
    Title Should Be    Swag Labs
    Input Text    user-name    ${userName}
    Input Text    password    ${password}
    Click Element    login-button
    Wait Until Element Is Visible    //span[text()='Products']
    Element Should Be Visible    locator
    Sleep    15