*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://amazon.in/

*** Test Cases ***
Home Page
    Open Browser    ${url}      Chrome
    Maximize Browser Window
    Input text      //input[@type='text']       mobile
    CliCk Button    //input[contains(@id,'submit-button')]
    ${listOfCheckBox}   get webelement    //input[@type='checkbox']
    sleep   5

