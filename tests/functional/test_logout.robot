*** Settings ***
Resource  ../../resource/pages/login_page.robot
Resource  ../../resource/common_resources.robot

Suite Setup  Load Environment
Test Setup  Open Application
Test Teardown  Close Application

*** Test Cases ***
TC_02 User Logout
    Login To Application
    Logout From Application