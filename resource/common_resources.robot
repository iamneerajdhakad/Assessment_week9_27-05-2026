*** Settings ***
Library  SeleniumLibrary
Library  ../config/env_loader.py

*** Variables ***
${BROWSER}  chrome
${ENV}  qa
*** Keywords ***
Load Environment
    Load Env  ${ENV}
    ${url}  Get Env    baseurl
    ${phone}  Get Env    user_phone

    Set Global Variable    ${BASE_URL}  ${url}
    Set Global Variable    ${USER_PHONE}  ${phone}

Open Application
    [Documentation]  opens the browser
    Open Browser  ${BASE_URL}  ${BROWSER}
    Maximize Browser Window

Close Application
    Close All Browsers