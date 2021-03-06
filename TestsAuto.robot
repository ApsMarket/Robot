*** Settings ***
Library           Selenium2Library
Resource          ViewKeywords.robot
Resource          LocatorsOY.robot
Library           DateTime

*** Variables ***
${tender_uid}     UA-2017-04-11-000097-2    # tender number

*** Test Cases ***
Login
    Log To Console    uitruyryutryur
    Run Keyword    Keyword_Login2

Open tender
    Open tender Keyword    ${tender_uid}

Отримати інформацію про title
    Отримати інформацію про title

*** Keywords ***
Keyword Login
    Open Browser    http://192.168.90.170/    chrome
    Comment    Wait Until Page Contains Element    xpath=.//i[@title='Login']
    Click Element    xpath=.//*[@id='logoutFormTop']//a[@href='/Account/Login']
    Click Element    ${loc_login}
    Input Text    id=Email    Aps.tester2017@gmail.com
    Input Text    id=Password    123123
    Click Button    ${loc_login_button}

Open tender Keyword
    [Arguments]    ${tender_uid}
    Click Element    id=

Keyword_Login2
    Open Browser    http://192.168.90.170/    chrome
    Wait Until Element Is Enabled    ${locator_entrance_arrow}
    Click Element    ${locator_entrance_arrow}
    Click Element    ${locator_login_dropdown}
    Input Text    ${locator_emailField}    qa2@gmail.com
    Input Password    ${locator_passwordField}    qwerty123
    Click Button    ${locator_button_login}

Keyword_Zakupka_Creation_1lot
    Log To Console    qqqqqqq
    Wait Until Element Is Enabled    ${locator_button_create_plus}
    Log To Console    12344566
    Click Button    ${locator_button_create_plus}
    Click Element    ${locator_dopzakupka_creation}
    Input Text    ${locator_zakupka_name_ukr}    Тест1
    Input Text    ${locator_zakupka_name_eng}    Test1
    Select From List By Label    ${locator_Currency_field_choose}    *GBP
    Input Text    ${locator_expected_value}    125890
    Input Text    ${locator_minstep_value_money}    5
    Input Text    ${locator_tender_guarantee}    150
    Get Current Date    ${locator_clarification_period_start}    UTC    +2 hours
    Add Time To Time    ${locator_clarification_period_end}    24 hours
