*** Settings ***
Library                    QWeb
Library                    DataDriver                  reader_class=TestDataApi    name=airbnb_test_data.xlsx

Suite Setup                Open Browser                about:blank                 Chrome
Suite Teardown             Close All Browsers
Test Template              AirBnb Test

*** Test Cases ***
AirBnb Test with ${URL} ${cookies_Text} ${cookies_Button}

*** Keywords ***
AirBnb Test
    [Arguments]            ${URL}                      ${cookies_Text}             ${cookies_Button}           ${destination_field_label}                              ${destination_field_value}                      ${click_destination_Text}    ${search_Button}    ${result_Text}

    GoTo                   ${URL}
    Close cookies          ${cookies_Text}             ${cookies_Button}
    Search Accomodation    ${destination_field_Label}                              ${destination_field_Value}                              ${click_destination_Text}                               ${search_Button}
    Verify Results         ${result_Text}

Close cookies
    [Arguments]            ${cookies_Text}             ${cookies_Button}
    ${cooies_open}=        Run Keyword And Return Status                           VerifyText                  ${cookies_Text}
    IF                     ${cooies_open}
        ClickText          ${cookies_Button}           partial_match=False
    END

Search Accomodation
    [Arguments]            ${destination_field_Label}                              ${destination_field_Value}                              ${click_destination_Text}                               ${search_Button}
    ClickText              ${destination_field_Label}
    TypeText               ${destination_field_Label}                              ${destination_field_Value}
    ClickText              ${click_destination_Text}
    ClickText              ${search_Button}

Verify Results
    [Arguments]            ${result_Text}
    VerifyText             ${result_Text}