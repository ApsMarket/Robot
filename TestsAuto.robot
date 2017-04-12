*** Settings ***
Library           Selenium2Library
Resource          ViewKeywords.robot
Resource          Locators.robot

*** Test Cases ***
Login
    Keyword Login

Отримати інформацію про title
    Отримати інформацію про title

*** Keywords ***
Keyword Login
    Open Browser    http://192.168.90.170    chrome
    Click Element    id=logoutFormTop
    Click Element    ${loc_login}
    Input Text    id=Email    Aps.tester2017@gmail.com
    Input Text    id=Password    123123
    Click Button    ${loc_login_button}
    Click Element    id=purchase-page
