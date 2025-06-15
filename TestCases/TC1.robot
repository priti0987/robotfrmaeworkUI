*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}          https://www.saucedemo.com/
${browser}      Chrome
${userName}     standard_user
${password}     secret_sauce
*** Test Cases ***
LoginTest
    openBrower
    Enter Credentials
    ClickOnButton
    VerifyAfterloginPage
    #${text}=    Get Text    //div[@class='login_credentials']
    #${tTyype}=  Evaluate  type($text)
    #Log    ${text}[3]
    Sleep    5
*** Keywords ***
openBrower
    Open Browser    ${url}          ${browser}
    Maximize Browser Window

Enter Credentials
    Input Text      id:user-name    ${userName}
    Input Text      id:password     ${password}

ClickOnButton
    Click Button    id:login-button

VerifyAfterloginPage
    Wait Until Element Is Visible    //span[text()='Products']
    Element Should Be Enabled    //div[@class='app_logo']
