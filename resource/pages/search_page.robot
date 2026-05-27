*** Settings ***
Resource  ../../locators/search_loactors.robot
Resource    login_page.robot

*** Keywords ***
Search Property
#    Login To Application
    Wait Until Element Is Visible    ${PG_button}
    Click Element    ${PG_button}
    Wait Until Element Is Visible    ${search_locality}
    Input Text    ${search_locality}    kora
    Wait Until Element Is Visible    ${suggestion}
    Press Keys  ${suggestion}  ARROW_DOWN
    Wait Until Element Is Visible    ${search_button}
    Click Element    ${search_button}
    Sleep    3s