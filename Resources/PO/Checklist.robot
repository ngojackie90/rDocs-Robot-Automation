*** Settings ***
Library  Selenium2Library
Resource  Dropdown.robot

*** Test Cases ***
Create Checklist
    Dropdown.Select Dropdown
    Dropdown.Select Checklist
    Wait Until Page Contains  Checklist
    Input Text  Checklist Automation
    Wait  2s
    Click Element  id=MainContent_btnAddChecklistItem
    Wait Until Page Contains  Checklist Automation
