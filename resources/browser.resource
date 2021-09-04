*** Variables ***
${SERVER}         www.google.fi
${BROWSER}        Firefox
${DELAY}          3 seconds
${FRONT_PAGE}     http://${SERVER}/

*** Settings ***
Library           SeleniumLibrary

*** Keywords ***
Open Browser To Front Page
    Open Browser    ${FRONT_PAGE}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
