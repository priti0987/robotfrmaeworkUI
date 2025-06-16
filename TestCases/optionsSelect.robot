*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://www.globalsqa.com/demo-site/select-dropdown-menu/#google_vignette

*** Test Cases ***
Home Page
    Open Browser    ${url}      Chrome
    Maximize Browser Window
    Select From List By Label    //select    Algeria
    Sleep    2
    Select From List By Label    //select    Bahamas
    Sleep    2