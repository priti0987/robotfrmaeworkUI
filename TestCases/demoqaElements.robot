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
    Click Element    //span[text()='Check Box']
    Sleep    5
    Click Element    //button[@title='Expand all']
    Sleep    2
    Click Element    //button[@title='Collapse all']
    Sleep    2
    Click Element    //button[@title='Toggle']
    
    Sleep    5
