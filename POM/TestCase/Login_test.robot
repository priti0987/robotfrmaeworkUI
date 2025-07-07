*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/LoginKeyword.robot

*** Variables ***
${Browser}      Chrome
${SiteUrl}      https://demo.guru99.com/test/newtours/
${user}         Priti
${password}     Priti
*** Test Cases ***
LoginTest
    OpenMyBrowser   ${SiteUrl}      ${Browser}
    EnterUserName    ${user}
    EnterPassword    ${password}
