*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}          https://www.saucedemo.com/
${browser}      Chrome
${userName}     standard_user
${password}     secret_sauce
*** Test Cases ***
LoginTest
    OpenBrower
    VerifyTitle
    ${email_text}   Set Variable        id:user-name
    Element Should Be Visible    ${email_text}
    Element Should Be Enabled    ${email_text}
    Input Text    ${email_text}    pritifuse
    Sleep    5
    Clear Element Text    ${email_text}
    Sleep    3
*** Keywords ***
OpenBrower
    Open Browser    ${url}          ${browser}
    Maximize Browser Window


VerifyTitle
    Title Should Be    Swag Labs

