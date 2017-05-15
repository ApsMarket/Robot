*** Settings ***
Library           Selenium2Library
Library           DateTime

*** Keywords ***
define_angular
    [Arguments]    ${model}    ${id}    ${descr}
    Execute Javascript    autotestmodel=angular.element(document.getElementById('${id}')).scope(); autotestmodel.${model}.${id}="${descr}";

define_date
    [Arguments]    ${model}    ${id}    ${dt_start}    ${dt_end}    ${name}
    Execute Javascript    ttt=angular.element(document.getElementById('${id}')).scope(); ttt.${model}.${name}={}; ttt.${model}.${name}.end="${dt_end}";ttt.${model}.${name}.start="${dt_start}";

Define angular +id_mod
    [Arguments]    ${model}    ${id}    ${descr}    ${id_mod}
    Execute Javascript    var autotestmodel=angular.element(document.getElementById('${id}')).scope(); autotestmodel.${model}.${id_mod}="${descr}";
