*** Settings ***
Resource          browser.resource
Suite Setup        Open Browser To Front Page
Suite Teardown     Close Browser

*** Test Cases ***
Front Page Title Is Valid
    Title Should Be    Google

Cookies are confirmed
    Page Should Contain    Muokkaa
    Page Should Contain    Ennen kuin jatkat Google Hakuun
    Click Button    Hyväksyn

Front page is displayed
    Page Should Contain    Google-haku
