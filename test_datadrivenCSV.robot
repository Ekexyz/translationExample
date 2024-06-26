
*** Settings ***

Documentation              Test suite for CRT starter.
Library                    QWeb
Library                    DataDriver                  file=test-data.csv          #include=tagtoinclude       exclude=tagtoexclude
Suite Setup                Open Browser                about:blank                 chrome
Suite Teardown             Close All Browsers
Resource                   keywords.robot
Test Template              Test location search


*** Test Cases ***

Test location search with data ${URL}    ${cookies_Text}    ${cookies_Button}    ${destination_field_Label}    ${destination_field_Value}    ${click_destination_Text}    ${search_Button}    ${result_Text}



*** Keywords ***
Test location search    
    [Arguments]            ${URL}                      ${cookies_Text}             ${cookies_Button}           ${destination_field_Label}                              ${destination_field_Value}                      ${click_destination_Text}    ${search_Button}    ${result_Text}
    GoTo                   ${URL}
    Close cookies          ${cookies_Text}             ${cookies_Button}
    Search Accomodation    ${destination_field_Label}                              ${destination_field_Value}                              ${click_destination_Text}                               ${search_Button}
    Verify Results         ${result_Text}