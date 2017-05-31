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
    Input Text    ${locator_minstep_value_money}    810
    Comment    Input Text    ${locator_tender_guarantee}    150
    Log To Console    666666666666666666666
    #период уточнения старт дата
    Click Element    ${locator_clarification_period_start}
    Log To Console    999999999999999999999999
    ${periodEnquiry_start}=    Get Current Date    UTC    +2 hours    exclude_millis=yes
    ${periodEnquiry_start}=    Convert To String    ${periodEnquiry_start}
    ${periodEnquiry_start}=    String.Replace String    ${periodEnquiry_start}    integer    string
    Press Key    ${locator_clarification_period_start}    ${periodEnquiry_start}
    Press Key    ${locator_clarification_period_start}    \\\13
    Log To Console    ${periodEnquiry_start}
    Click Element    ${locator_clarification_period_start}
    Log To Console    aaaaaaaaaaaaaaaaaaaa
    #период уточнения конечная дата
    Click Element    ${locator_clarification_period_end}
    ${periodEnquiry_end}=    Get Current Date    UTC    +2 hours    exclude_millis=yes
    ${periodEnquiry_end}=    Add Time To Date    ${periodEnquiry_end}    3 days    exclude_millis=yes
    Log To Console    ${periodEnquiry_end}
    Comment    ${periodEnquiry_end}=    Convert To String    ${periodEnquiry_end}
    Comment    ${periodEnquiry_end}=    String.Replace String    ${periodEnquiry_end}    integer    string
    Press Key    ${locator_clarification_period_end}    ${periodEnquiry_end}
    Press Key    ${locator_clarification_period_end}    \\\13
    Comment    ${periodEnquiry_end}=    Get Current Date    UTC    +2 hours    exclude_millis=yes
    Comment    define_date    purchase    period_enquiry_start    ${periodEnquiry_start}    ${periodEnquiry_end}    periodEnquiry
    Comment    Sleep    20
    #Переход на след.страницу
    Wait Until Element Is Enabled    ${locator_next_step_frst}
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
    Comment    Select From List By Label
    #Выбор ДК021:2015
    Click Button    ${locator_button_classifier}
    Input Text    ${locator_search_goodsfield}    18000000
    Click Button    ${locator_add_classifier}
    Click Button    id=otherClassifier
    Click Button    ${locator_add_classifier}
    Click Element    xpath=.//*[@id='is_delivary_00']/div[1]/div[1]
    \    ${periodEnquiry_end}

Keyword_Second_variant_Zakupka
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
    Execute Javascript    window.scroll(2000,2000)
    #Выбор стоимости закупки
    Select From List By Label    ${locator_Currency_field_choose}    UAH
    Input Text    ${locator_expected_value}    12345
    Execute Javascript    window.scroll(2000,2000)
    Input Text    ${locator_minstep_value_money}    78
    Log To Console    666
    #период уточнения старт дата
    Click Element    ${locator_clarification_period_start}
    Log To Console    999
    ${periodEnquiry_start}=    Get Current Date    UTC    +2 hours    exclude_millis=yes
    ${periodEnquiry_start}=    Convert To String    ${periodEnquiry_start}
    ${periodEnquiry_start}=    String.Replace String    ${periodEnquiry_start}    integer    string
    Click Element At Coordinates    ${locator_clarification_period_start}    -200    -10
    Press Key    ${locator_clarification_period_start}    ${periodEnquiry_start}
    Comment    Press Key    ${locator_clarification_period_start}    \\\13
    Log To Console    ${periodEnquiry_start}
    Click Element    ${locator_clarification_period_start}
    Log To Console    aaa
    #период уточнения конечная дата
    Click Element    ${locator_clarification_period_end}
    ${periodEnquiry_end}=    Get Current Date    UTC    +2 hours    exclude_millis=yes
    ${periodEnquiry_end}=    Add Time To Date    ${periodEnquiry_end}    +1 day    exclude_millis=yes
    Log To Console    ${periodEnquiry_end}
    ${periodEnquiry_end}=    Convert To String    ${periodEnquiry_end}
    ${periodEnquiry_end}=    String.Replace String    ${periodEnquiry_end}    integer    string
    Click Element At Coordinates    ${locator_clarification_period_end}    -200    -10
    Press Key    ${locator_clarification_period_end}    ${periodEnquiry_end}
    Comment    Press Key    ${locator_clarification_period_end}    \\\13
    #период начало приема предложений
    Click Element    ${locator_period_tender_start}
    ${periodTender_start}=    Get Current Date    UTC    +2 hours    exclude_millis=yes
    ${periodTender_start}=    Add Time To Date    ${periodTender_start}    +1 day    exclude_millis=yes
    ${periodTender_start}=    Convert To String    ${periodTender_start}
    ${periodTender_start}=    String.Replace String    ${periodTender_start}    integer    string
    Click Element At Coordinates    ${locator_period_tender_start}    -200    -10
    Press Key    ${locator_period_tender_start}    ${periodTender_start}
    Comment    Press Key    ${locator_period_tender_start}    \\\13
    #период окончание приема предложений
    Click Element    ${locator_period_tender_end}
    ${periodTender_end}=    Add Time To Date    ${periodTender_start}    +3 days    exclude_millis=yes
    ${periodTender_end}=    Convert To String    ${periodTender_end}
    ${periodTender_end}=    String.Replace String    ${periodTender_end}    integer    string
    Click Element At Coordinates    ${locator_period_tender_end}    -200    -10
    Press Key    ${locator_period_tender_end}    ${periodTender_end}
    #Переход на след.страницу
    Click Element    id=createOrUpdatePurchase
    Wait Until Element Is Visible    ${locator_next_step_frst}
    Click Element    ${locator_next_step_frst}
    Wait Until Element Is Enabled    ${locator_add_positionButton}
    Log To Console    do klika
    Sleep    3
    Click Button    ${locator_add_positionButton}
    Log To Console    posle klika
    #Ввод конкр.название
    Wait Until Page Contains Element    ${locator_exactname_tenderPosition}
    Wait Until Element Is Enabled    ${locator_exactname_tenderPosition}
    ${title}=    Set Variable    Тест111
    Press Key    ${locator_exactname_tenderPosition}    ${title}
    ${titleEng}=    Set Variable    Test222
    Press Key    ${locator_exactname_tenderPosition_eng}    ${titleEng}
    #К-во товара
    ${goodsQuantity}=    Set Variable    1590
    Press Key    ${locator_goods_quantity}    ${goodsQuantity}
    #Выбор единицы измерения
    Select From List By Label    ${locator_measure}    пара
    Execute Javascript    window.scroll(1000,1000)
    #Выбор ДК
    Click Button    ${locator_buttonDK021}
    Wait Until Element Is Visible    ${locator_search-classifier-text}
    ${dkpp}=    Set Variable    16000000-5
    Press Key    ${locator_search-classifier-text}    ${dkpp}
    Clear Element Text    ${locator_search-classifier-text}
    Click Button    ${locator_add-classifier_DK}
    #Выбор другого ДК
    sleep    2
    Wait Until Element Is Enabled    ${locator_otherDKButton}
    Click Button    ${locator_otherDKButton}
    ${dkpp2}=    Set Variable    000
    Sleep    2
    Press Key    ${locator_search-classifier-text2}    ${dkpp2}
    Click Button    ${locator_add-classifier_DK}
