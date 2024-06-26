
*** Settings ***

Documentation           Test suite for CRT starter.
Library                 QWeb
Suite Setup             Open Browser    about:blank    chrome
Suite Teardown          Close All Browsers
Resource    keywords.robot


*** Test Cases ***


Test the home page in DUTCH
    [Documentation]     Go to the web shop, and verify that the slogan text appears on the page.
    Import Variables	${CURDIR}/variables.py    NL
    GoTo                ${URL}
    Close cookies
    Search Accomodation                        ${destination_field_Label}     ${destination_field_Value}    ${click_destination_Text}    ${search_Button}
    Verify Results     ${result_Text}                   

Test the home page in ENGLISH
    [Documentation]     Go to the web shop, and verify that the slogan text appears on the page.
    Import Variables	${CURDIR}/variables.py    ENG
    GoTo                ${URL}
    Close cookies
    Search Accomodation                        ${destination_field_Label}     ${destination_field_Value}    ${click_destination_Text}    ${search_Button}
    Verify Results     ${result_Text}     

# *** Keywords ***
# Close cookies
#     ${cooies_open}=    Run Keyword And Return Status    VerifyText    ${cookies_Text}
#     IF                 ${cooies_open}
#         ClickText     ${cookies_Button}     partial_match=False
#     END

# Search Accomodation
#     [Arguments]    ${destination_field_Label}     ${destination_field_Value}    ${click_destination_Text}    ${search_Button}
#     ClickText    ${destination_field_Label}
#     TypeText   ${destination_field_Label}    ${destination_field_Value}    
#     ClickText           ${click_destination_Text}
#     ClickText           ${search_Button}

# Verify Results
#     [Arguments]    ${result_Text}
#     VerifyText   ${result_Text}