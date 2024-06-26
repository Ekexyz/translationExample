
*** Settings ***

Documentation           Test suite for CRT starter.
Library                 QWeb
Suite Setup             Open Browser    about:blank    chrome
Suite Teardown          Close All Browsers
Resource    keywords.robot


*** Test Cases ***

#VARIANT 1 Where the test cases are still calling keywords so if a extra step is added Two test cases need to be adjusted


Test location search in DUTCH variant1
    [Documentation]     Go to the web shop, and verify that the slogan text appears on the page.
    Import Variables	${CURDIR}/variables.py    NL
    GoTo                ${URL}
    Close cookies
    Search Accomodation                        ${destination_field_Label}     ${destination_field_Value}    ${click_destination_Text}    ${search_Button}
    Verify Results     ${result_Text}                   

Test location search in ENGLISH variant1
    [Documentation]     Go to the web shop, and verify that the slogan text appears on the page.
    Import Variables	${CURDIR}/variables.py    ENG
    GoTo                ${URL}
    Close cookies
    Search Accomodation                        ${destination_field_Label}     ${destination_field_Value}    ${click_destination_Text}    ${search_Button}
    Verify Results     ${result_Text}     

#VARIANT 2 Test cases are calling keyword with all test steps test case will only import variables to load language
Test location search in DUTCH variant2
    [Documentation]     Go to the web shop, and verify that the slogan text appears on the page.
    Import Variables	${CURDIR}/variables.py    NL
    Test location search                  

Test location search in ENGLISH variant2
    [Documentation]     Go to the web shop, and verify that the slogan text appears on the page.
    Import Variables	${CURDIR}/variables.py    ENG
    Test location search  


*** Keywords ***
Test location search
    GoTo                ${URL}
    Close cookies
    Search Accomodation                        ${destination_field_Label}     ${destination_field_Value}    ${click_destination_Text}    ${search_Button}
    Verify Results     ${result_Text}  