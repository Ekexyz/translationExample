
*** Settings ***

Documentation           Test suite for CRT starter.
Library                 QWeb
Suite Setup             Open Browser    about:blank    chrome
Suite Teardown          Close All Browsers


*** Test Cases ***


Test the home page in DUTCH
    [Documentation]     Go to the web shop, and verify that the slogan text appears on the page.
    Import Variables	${CURDIR}/variables.py    NL
    GoTo                ${URL}
    Close cookies




*** Keywords ***
Close cookies
    ${cooies_open}=    isText    ${cookies_Text}
    IF                 ${cooies_open}
        ClickText     ${cookies_Button} 
    END