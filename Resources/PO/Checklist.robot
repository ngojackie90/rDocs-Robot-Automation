*** Settings ***
Library  Selenium2Library
#Resource  Dropdown.robot

*** Variables ***
${Check_List_Name} =  CList Automation
${Check_List_Task} =  QA Automate Task

*** Keywords ***
Create Checklist
    [Documentation]  Creating Checklist
    Dropdown.Select Dropdown
    Dropdown.Select Checklist
    Sleep  2s
    Wait Until Page Contains  Checklist
    Input Text  id=MainContent_txtChecklistName  ${Check_List_Name}
    Sleep  2s
    Click Element  xpath=//*[@id="MainContent_btnAddChecklistItem"]  #Create Checklist Btn
    Wait Until Page Contains  ${Check_List_Name}

Delete First Checklist
    [Documentation]  Delete Checklist
    Click Element  xpath=//*[@id="MainContent_lvChecklist_btnDeleteChecklist_0"]
    Sleep  2s
    Confirm Action
    Wait Until Page Does Not Contain  ${Check_List_Task}

Go To First Checklist Task
    Click Element  xpath=//*[@id="MainContent_lvChecklist_btnChecklistTask_0"]
    Wait Until Page Contains  Checklist Tasks

Add Task To First Checklist
    [Documentation]  Creating Task for Checklist
    Input Text  xpath=//*[@id="MainContent_txtTaskName"]  ${Check_List_Task}
    Click Element  xpath=//*[@id="MainContent_btnAddChecklistTaskItem"]  #Add Task Btn
    Wait Until Page Contains  ${Check_List_Task}

Associate Required Documents To First Task First Checklist
    [Documentation]  Adding Associate Require Document
    Click Element  xpath=//*[@id="MainContent_lvChecklistTask_btnManageDocNames_0"]  #Associate Required Document Btn
    Wait Until Element Is Visible  xpath=//*[@id="MdlAssociateDocNames"]
    Sleep  2s
    Input Text  xpath=//*[@id="MainContent_txtCustomDocName"]  QA Task - Create Test  #Add Custom Document Name
    Sleep  1s
    Click Element  xpath=//*[@id="MainContent_lvDocNames_chkDocName_0"]  #Select Additional Earnest Money Received
    Sleep  1s
    Click Element  xpath=//*[@id="MainContent_btnSave"]  #Save Btn
    Wait Until Page Contains  QA Task - Create Test

Delete First Task
    [Documentation]  Delete First Task
    Click Element  xpath=//*[@id="MainContent_lvChecklistTask_btnDeleteTask_0"]  #Delete First Task Icon
    Sleep  2s
    Confirm Action
    Wait Until Page Does Not Contain  QA Task - Create Test

Return To Checklist
    [Documentation]  Return to Checklist From Checklist Task
    Click Element  xpath=//*[@id="MainContent_pnlChecklistTask"]/div/a[2]  #Return to Checklist Btn
    Wait Until Page Contains  Checklist

