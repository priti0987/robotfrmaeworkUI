*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://yatra.in/

*** Test Cases ***
Home Page
    Open Browser    ${url}      Chrome
    Maximize Browser Window

Click on Train
    Click Element    //button[contains(@aria-label,'Trains')]
    Sleep    1
    Click Element    //p[text()='Depart From']

Select sourceDestination
    Input Text    //input[@type='text']    CSTM
    Sleep    1
    Click Element    //div[contains(text(),'(CSTM)')]
    Sleep    1
    Click Element    //p[text()='Going To']
    Sleep    1
    Input Text    //input[@type='text']    HYB
    Sleep    1
    Click Element    //div[contains(text(),'(HYB)')]



