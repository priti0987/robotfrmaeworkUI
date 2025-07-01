*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Handling Frame
    Open Browser    https://demoqa.com    Chrome
    Maximize Browser Window
    Sleep    2
    Execute Javascript    window.scrollTo(0, window.scrollY+300)
    Click Element    //*[contains(text(),'Alerts, Frame')]
    Wait Until Element Is Visible    //span[text()='Frames']
    Execute Javascript    window.scrollTo(0, window.scrollY+150)
    Click Element    //span[text()='Frames']
    Sleep    2
    Select Frame    frame1
    ${text}=     Get Text    //h1[@id='sampleHeading']
    Unselect Frame
