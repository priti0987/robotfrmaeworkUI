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
    ${getim_wait}       Get Selenium Implicit Wait
    Set Browser Implicit Wait    2
    ${getim_wait}       Get Selenium Implicit Wait
    Title Should Be    Swag Labs
    Input Text    user-name    ${userName}
    Input Text    password    ${password}
    Click Element    login-button
    Sleep    2
    Wait Until Element Is Visible    //span[text()='Products']
    Set Selenium Speed    1
    ${sTime}    Get Selenium Speed
    Log    ${sTime}
    Set Selenium Timeout    5
    Sleep    2