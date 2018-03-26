*** Settings ***
Library  Selenium2Library

*** Variables ***
@{Agent_Package_Name} =  Personal Package1  Personal Package2
${Choose_File} =  /Users/Work/Dropbox/github/FileTest/Datasheet.pdf

*** Keywords ***
Forms Library Tab
    Click Element  xpath=//*[@id="form1"]/div[5]/center/div[1]/ul/li[1]/a

Forms Package Tab
    Click Element  xpath=//*[@id="form1"]/div[5]/center/div[1]/ul/li[2]/a

Forms Template Tab
    Click Element  xpath=//*[@id="form1"]/div[5]/center/div[1]/ul/li[3]/a

My Forms Package Tab
    Click Element  xpath=//*[@id="form1"]/div[5]/center/div[1]/ul/li[4]/a

Clauses Tab
    Click Element  xpath=//*[@id="form1"]/div[5]/center/div[1]/ul/li[5]/a

#-- Forms Library --

#-- Forms Package --

#-- Forms Template --

#-- My Forms Package --
My Forms Package Add Package Btn
    [Documentation]  Clicking Add Package
    Click Element  xpath=//*[@id="MainContent_PnlPackages"]/div/div/div/div/div[1]/div[2]  #My Forms Package - Add Package Btn
    Sleep  1s
    Wait Until Element Contains  xpath=//*[@id="MdlCreatePackage"]/div[1]/h3  Add Package

Create Agent Package1
    [Documentation]  Creating Package
    Input Text  xpath=//*[@id="MainContent_tbPackageName"]  @{Agent_Package_Name}[0]
    Sleep  1s
    Click Element  xpath=//*[@id="MainContent_BtnCreatePackage"]
    Wait Until Page Contains  @{Agent_Package_Name}[0]

Create Agent Package2
    [Documentation]  Creating Package
    Input Text  xpath=//*[@id="MainContent_tbPackageName"]  @{Agent_Package_Name}[1]
    Sleep  1s
    Click Element  xpath=//*[@id="MainContent_BtnCreatePackage"]
    Wait Until Page Contains  @{Agent_Package_Name}[1]

Edit Name Agent Package1
    [Documentation]  Editing Agent Package Name
    Click Element  xpath=//*[@id="MainContent_GVPackageList_lnkPackageSettings_0"]/i
    Sleep  1s
    Wait Until Element Contains  xpath=//*[@id="MdlUpdatePackage"]/div[1]/h3  Update Package
    Input Text  xpath=//*[@id="MainContent_tbUpdPackageName"]  Personal Package1 Revision
    Click Element  xpath=//*[@id="MainContent_BtnUpdatePackage"]

Edit Name Agent Package2
    [Documentation]  Editing Agent Package Name
    Click Element  xpath=//*[@id="MainContent_GVPackageList_lnkPackageSettings_1"]/i
    Sleep  1s
    Wait Until Element Contains  xpath=//*[@id="MdlUpdatePackage"]/div[1]/h3  Update Package
    Input Text  xpath=//*[@id="MainContent_tbUpdPackageName"]  Personal Package2 Revision
    Click Element  xpath=//*[@id="MainContent_BtnUpdatePackage"]

Inactive Agent Package
    [Documentation]  Make Package Inactive
    Click Element  xpath=//*[@id="MainContent_GVPackageList_lnkMakeActiveInactive_0"]/i

Upload New Form
    [Documentation]  Uploading Own Form
    Click Element  xpath=//*[@id="MainContent_btnUploadToPackage"]
    Sleep  1s
    Wait Until Element Contains  xpath=//*[@id="MainContent_UPAddPackageForm"]/div[1]/h3  Upload Form to My Package
    Sleep  1s
    Choose File  id=MainContent_fuFormUpload  ${Choose_File}
    Sleep  1s
    Click Element  id=MainContent_BtnUploadForm

Update Package Forms Name
    [Documentation]  Editing Package Name
    Input Text  xpath=//*[@id="MainContent_tbUpdPackageFormName"]  DatabaseEdit
    Sleep  1s
    Click Element  xpath=//*[@id="MainContent_BtnUpdatePackageFormName"]  #Update Btn for Update Package Form Name
    Wait Until Page Contains  DatabaseEdit

Add Library Forms Agent Package
    [Documentation]  Add Library Forms
    Click Element  xpath=//*[@id="MainContent_btnAddToPackage"]
    Sleep  1s
    Wait Until Element Contains  xpath=//*[@id="MainContent_UCAddForms_upnlNLibList"]/div[1]/h5  Add Forms to Package


#-- Clauses --