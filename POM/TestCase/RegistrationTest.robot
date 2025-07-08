*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Registration_keywords.robot

*** Variables ***
${Browser}      Chrome
${SiteUrl}      https://demo.guru99.com/test/newtours/
${user}         Priti
${password}     Priti
*** Test Cases ***
LoginTest
    OpenMyBrowser   ${SiteUrl}      ${Browser}


