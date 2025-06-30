*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Handling Frame
    Open Browser    https://demoqa.com/alertsWindows    Chrome
    Maximize Browser Window
    #Click Element    //*[contains(text(),'Alerts, Frame')]
    #Wait Until Element Is Visible    //span[text()='Frames']
    #Click Element    //span[text()='Frames']
    Sleep    5