*** Settings ***
Library  Selenium2Library
#Resource  Dropdown.robot

*** Variables ***


*** Keywords ***
Create Checklist
    Dropdown.Select Dropdown
    Dropdown.Select Checklist
    Sleep  2s
    Wait Until Page Contains  Checklist
    Input Text  id=MainContent_txtChecklistName  CList Automation
    Sleep  2s
    Click Element  xpath=//*[@id="MainContent_btnAddChecklistItem"]
    Wait Until Page Contains  CList Automation

Delete First Checklist
    Click Element  xpath=//*[@id="MainContent_lvChecklist_btnDeleteChecklist_0"]
    Sleep  2s
    Confirm Action
    Wait Until Page Does Not Contain  QA Automate Task

Go To First Checklist Task
    Click Element  xpath=//*[@id="MainContent_lvChecklist_btnChecklistTask_0"]
    Wait Until Page Contains  Checklist Tasks

Add Task To First Checklist
    Input Text  xpath=//*[@id="MainContent_txtTaskName"]  QA Automate Task
    Click Element  xpath=//*[@id="MainContent_btnAddChecklistTaskItem"]
    Wait Until Page Contains  QA Automate Task

Associate Required Documents To First Task First Checklist
    Click Element  xpath=//*[@id="MainContent_lvChecklistTask_btnManageDocNames_0"]
    Wait Until Element Is Visible  xpath=//*[@id="MdlAssociateDocNames"]
    Sleep  2s
    Input Text  xpath=//*[@id="MainContent_txtCustomDocName"]  QA Task - Create Test
    Sleep  1s
    Click Element  xpath=//*[@id="MainContent_lvDocNames_chkDocName_0"]
    Sleep  1s
    Click Element  xpath=//*[@id="MainContent_btnSave"]
    Wait Until Page Contains  QA Task - Create Test

Delete First Task
    Click Element  xpath=//*[@id="MainContent_lvChecklistTask_btnDeleteTask_0"]
    Sleep  2s
    Confirm Action
    Wait Until Page Does Not Contain  QA Task - Create Test

Return To Checklist
    Click Element  xpath=//*[@id="MainContent_pnlChecklistTask"]/div/a[2]
    Wait Until Page Contains  Checklist

