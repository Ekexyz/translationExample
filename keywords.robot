*** Settings ***

Documentation           Test suite for CRT starter.
Library                 QWeb

*** Keywords ***
Close cookies
    ${cooies_open}=    Run Keyword And Return Status    VerifyText    ${cookies_Text}
    IF                 ${cooies_open}
        ClickText     ${cookies_Button}     partial_match=False
    END

Search Accomodation
    [Arguments]    ${destination_field_Label}     ${destination_field_Value}    ${click_destination_Text}    ${search_Button}
    ClickText    ${destination_field_Label}
    TypeText   ${destination_field_Label}    ${destination_field_Value}    
    ClickText           ${click_destination_Text}
    ClickText           ${search_Button}

Verify Results
    [Arguments]    ${result_Text}
    VerifyText   ${result_Text}