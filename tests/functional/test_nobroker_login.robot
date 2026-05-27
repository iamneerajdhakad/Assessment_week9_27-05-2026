*** Settings ***
Resource  ../../resource/pages/login_page.robot
Resource  ../../resource/common_resources.robot

Suite Setup  Load Environment
Test Setup  Open Application
Test Teardown  Close Application

*** Test Cases ***
TC_01 User Login
    Login To Application