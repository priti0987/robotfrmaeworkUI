*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py

*** Keywords ***
OpenMyBrowser
    [Arguments]     ${SiteUrl}     ${Browser}
    Open Browser    ${SiteUrl}     ${Browser}
    Maximize Browser Window

EnterUserName
    [Arguments]     ${username}
    Input Text    ${txt_loginUserName}    ${username}
   
EnterPassword
    [Arguments]     ${password}
    Input Text    ${txt_loginPassword}    ${password}

ClickSign
    Click Button    ${btnSignIn}

VerifyLogin
    Title Should Be    title