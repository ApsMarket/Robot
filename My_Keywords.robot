*** Settings ***
Library           Selenium2Library
Resource          LocatorsOY.robot
Library           DateTime

*** Keywords ***
Keyword_Login
    Open Browser    http://192.168.90.169/    chrome
    Wait Until Element Is Enabled    ${locator_entrance_arrow}
    Click Element    ${locator_entrance_arrow}
    Click Element    ${locator_login_dropdown}
    Input Text    ${locator_emailField}    qa2@gmail.com
    Input Password    ${locator_passwordField}    qwerty123
    Click Button    ${locator_button_login}
    Log To Console    qqqqqqq

Keyword_New_Zakupka_Creation_1lot
    Log To Console    qqqqqqq
    Wait Until Element Is Enabled    ${locator_button_create_plus}
    Log To Console    12344566
    Click Button    ${locator_button_create_plus}
    Wait Until Element Is Enabled    ${locator_dopzakupka_creation}
    Sleep    3
    Click Element    ${locator_dopzakupka_creation}
    Input Text    ${locator_zakupka_name_ukr}    Тест1
    Input Text    ${locator_zakupka_name_eng}    Test1
    Select From List By Label    name=purchaseType    cт. 35, п. 1 Закупівля творів мистецтва або закупівля, пов’язана із захистом прав інтелектуальної власності, або укладення договору про закупівлю з переможцем архітектурного чи мистецького конкурсу.
    Execute Javascript    window.scroll(2000,2000)
    Select From List By Label    ${locator_Currency_field_choose}    GBP
    Input Text    ${locator_expected_value}    125890
    Execute Javascript    window.scroll(2000,2000)
    Input Text    ${locator_minstep_value_money}    5
    Input Text    ${locator_tender_guarantee}    150
    Log To Console    666666666666666666666
    ${dt}=    Get Current Date    UTC    +2 hours    exclude_millis=yes
    Log To Console    ${dt}
    Input Text    ${locator_clarification_period_start}    ${dt}
    Sleep    20
    Click Button