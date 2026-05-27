*** Settings ***
Resource  ../../locators/contact_owner_locators.robot
Library    SeleniumLibrary

*** Keywords ***
Get Owner Details
    Click Element  ${contact_button}
Schedule Visit
    Click Element    ${schedule_visit_button}
    Sleep    2s
    Click Element    ${today_date}