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
    @{listOfCheckBox}   get webelements    //input[@type='checkbox']/ancestor::div[contains(@class, 'a-checkbox')]/following-sibling::span
    FOR     ${item}     IN  @{listOfCheckBox}
    Log     ${item}.text
    ${text1}    Get Element Attribute    ${item}    text
    END

    sleep   5

