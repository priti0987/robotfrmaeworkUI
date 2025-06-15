*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}          https://www.saucedemo.com/
${browser}      Chrome
${userName}     standard_user
${password}     secret_sauce
*** Test Cases ***
LoginTest
    Open Browser    ${url}          ${browser}
    Maximize Browser Window
    Input Text      id:user-name    ${userName}
    Input Text      id:password     ${password}
    Click Button    id:login-button
    Wait Until Element Is Visible    //span[text()='Products']
    Element Should Be Enabled    //div[@class='app_logo']
    #${text}=    Get Text    //div[@class='login_credentials']
    #${tTyype}=  Evaluate  type($text)
    #Log    ${text}[3]
    Sleep    5
*** Keywords ***
