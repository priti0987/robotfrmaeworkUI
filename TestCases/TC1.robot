*** Settings ***
Library     SeleniumLibrary

*** Variables ***


*** Test Cases ***
LoginTest
    Open Browser    https://www.saucedemo.com/      Chrome
    Maximize Browser Window
    
    Input Text    id:user-name    standard_user
    Input Text    id:password    secret_sauce
    Click Button    id:login-button

    #${text}=    Get Text    //div[@class='login_credentials']
    #${tTyype}=  Evaluate  type($text)
    #Log    ${text}[3]
    Sleep    5
*** Keywords ***
