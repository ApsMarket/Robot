*** Settings ***
Suite Teardown
Force Tags        run
Test Template
Library           Selenium2Library
Resource          ../LocatorsOY.robot
Resource          ../My_Keywords.robot
Library           DateTime
Resource          Angular.robot

*** Test Cases ***
Створити оголошення закупівлі, зберегти як чернетку
    Run Keyword    Keyword_Login
    Run Keyword    Keyword_New_Zakupka_Creation_1lot

Опублікувати оголошення в ЦБД

Внести зміни до оголошення

Опублікувати оголошення зі змінами в ЦБД

Отримати повідомлення про запитання/вимоги/звернення

Отримати нагадування про запитання/вимоги без відповіді

Надати відповідь на запитання, вимогу

Скасування процедури закупівлі
