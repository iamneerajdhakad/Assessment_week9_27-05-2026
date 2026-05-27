*** Settings ***
Resource  ../../resource/pages/search_page.robot
Resource  ../../resource/common_resources.robot

Suite Setup  Load Environment
Test Setup  Open Application
Test Teardown  Close Application
*** Test Cases ***
TC_03 Property Search
    Search Property
