*** Settings ***
Resource  ../../resource/common_resources.robot
Resource  ../../resource/pages/search_page.robot
Resource    ../../resource/pages/contact_owner_page.resource

Suite Setup  Load Environment
Test Setup  Open Application
Test Teardown  Close Application

*** Test Cases ***
TC_05 Schedule Visit
    Login To Application
    Search Property
    Get Owner Details
    Schedule Visit