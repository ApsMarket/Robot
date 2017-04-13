*** Settings ***
Library           Selenium2Library
Resource          ViewKeywords.robot
Resource          Locators.robot

*** Variables ***
${tender_uid}     UA-2017-04-11-000097-2    # tender number

*** Test Cases ***
Login
    Keyword Login

Open tender
    Open tender Keyword    ${tender_uid}

Отримати інформацію про title
    Отримати інформацію про title

*** Keywords ***
Keyword Login
    Open Browser    http://192.168.90.170    chrome
    Comment    Wait Until Page Contains Element    xpath=.//i[@title='Login']
    Click Element    xpath=.//*[@id='logoutFormTop']//a[@href='/Account/Login']
    Click Element    ${loc_login}
    Input Text    id=Email    Aps.tester2017@gmail.com
    Input Text    id=Password    123123
    Click Button    ${loc_login_button}

Open tender Keyword
    [Arguments]    ${tender_uid}
    Click Element    id=
