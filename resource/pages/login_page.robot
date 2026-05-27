*** Settings ***
Resource  ../../locators/login_locators.robot
Resource  ../common_resources.robot
Library  SeleniumLibrary

*** Keywords ***
Login To Application
    Wait Until Element Is Visible    ${login_button}
    Click Element    ${login_button}
    Sleep    2s
    Input Text    ${phone_input}  ${USER_PHONE}
    Sleep    25s
    Click Element    ${continue_button}
    Page Should Contain    World's Largest NoBrokerage Property Site
    Log    Verify successful login

Logout From Application
    Sleep    3s
    Mouse Over    ${profile_drop_down}
    Sleep    3s
    Click Element    ${signout_button}
    