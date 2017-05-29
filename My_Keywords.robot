*** Settings ***
Library           Selenium2Library
Resource          LocatorsOY.robot
Library           DateTime
Resource          Допорогові_закупівлі_1/Angular.robot
Library           String

*** Keywords ***
Keyword_Login
    Open Browser    http://192.168.90.169:90    chrome
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
    #Ввод названия закупки
    Click Button    ${locator_button_create_plus}
    Wait Until Element Is Enabled    ${locator_dopzakupka_creation}
    Sleep    3
    Click Element    ${locator_dopzakupka_creation}
    Input Text    ${locator_zakupka_name_ukr}    Тест1
    Comment    define_angular    purchase    title    Тест1
    Input Text    ${locator_zakupka_note_ukr}    Test1
    #Выбор условия закупки
    Comment    Select From List By Label    name=purchaseType    cт. 35, п. 1 Закупівля творів мистецтва або закупівля, пов’язана із захистом прав інтелектуальної власності, або укладення договору про закупівлю з переможцем архітектурного чи мистецького конкурсу.
    Execute Javascript    window.scroll(2000,2000)
    #Выбор стоимости закупки
    Select From List By Label    ${locator_Currency_field_choose}    GBP
    Input Text    ${locator_expected_value}    125890
    Execute Javascript    window.scroll(2000,2000)
    Input Text    ${locator_minstep_value_money}    5
    Comment    Input Text    ${locator_tender_guarantee}    150
    Log To Console    666666666666666666666
    #период уточнения старт дата
    ${periodEnquiry_start}=    Get Current Date    UTC    +2 hours    exclude_millis=yes
    ${periodEnquiry_start}=    Convert To String    ${periodEnquiry_start}
    ${periodEnquiry_start}=    String.Replace String    ${periodEnquiry_start}    integer    string
    Log To Console    ${periodEnquiry_start}
    Input Text    ${locator_clarification_period_start}    ${periodEnquiry_start}
    #период уточнения конечная дата
    ${periodEnquiry_end}=    Get Current Date    UTC    +2 hours    exclude_millis=yes
    Input Text    ${locator_clarification_period_start}    ${periodEnquiry_start}
    Comment    define_date    purchase    period_enquiry_start    ${periodEnquiry_start}    ${periodEnquiry_end}    periodEnquiry
    Sleep    20
    #Переход на след.страницу
    Click Button    ${locator_next_step_frst}
    Wait Until Element Is Enabled    ${locator_add_positionButton}
    Log To Console    do klika
    Click Button    ${locator_add_positionButton}
    Log To Console    posle klika
    #Ввод конкр.название
    Wait Until Element Is Enabled    ${locator_exactname_tender}
    ${title}=    Set Variable    test111
    Input Text    ${locator_exactname_tender}    ${title}
    Comment    Define angular +id_mod    procurementSubject    procurementSubject_description00    ${title}    description
    #ввод к-во товаров и единица измерения
    Input Text    ${locator_quantity_goods}    125890
    Select From List By Label
    Comment    angular
    #Выбор ДК021:2015
    Click Button    ${locator_button_classifier}
    Input Text    ${locator_search_goodsfield}    18000000
    Click Button    ${locator_add_classifier}
    Click Button    id=otherClassifier
    Click Button    ${locator_add_classifier}
    Click Element    xpath=.//*[@id='is_delivary_00']/div[1]/div[1]
