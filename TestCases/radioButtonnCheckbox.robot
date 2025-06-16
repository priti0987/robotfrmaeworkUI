*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://demoqa.com/

*** Test Cases ***
Home Page
    Open Browser    ${url}      Chrome
    Maximize Browser Window
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Element Is Visible    //h5[text()='Elements']
    Click Element    //h5[text()='Elements']
    Sleep    2
    Click Element    //span[text()='Radio Button']
    Sleep    2
    ${name_radio}    Get Element Attribute    //input[@type='radio']    name
#    Select Radio Button    group_name    value
    #Select Radio Button    like    Yes
    Sleep    5
