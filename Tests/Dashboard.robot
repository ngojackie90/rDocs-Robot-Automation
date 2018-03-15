*** Settings ***
Resource  ../Resources/Common.robot
Resource  ../Resources/PO/Dropdown.robot
Resource  ../Resources/PO/Contact.robot
Resource  ../Resources/PO/Property.robot
Resource  ../Resources/PO/Documents.robot
Resource  ../Resources/PO/Esign.robot
Resource  ../Resources/PO/Checklist.robot
Resource  ../Resources/PO/DashboardActions.robot


#(Test Entire Suite) pybot -d results tests/Dashboard.robot
#(Test Specific Case) pybot -d results -t "Delete Tile Check With Esign" tests/Dashboard.robot

Test Setup  Common.Login to rDocs
Test Teardown  Common.Logout rDocs

*** Test Cases ***
Delete Tile Check With Documents
    [Documentation]  Check Delete Tile Validation If Documents Are there
    Common.Create Tile
    DashboardActions.Select Documents From Dashboard
    Documents.Select Add Documents Button
    Documents.Upload Documents By Browser
    Documents.Upload Documents And Close
    Common.Back To Dashboard
    Sleep  2s
    DashboardActions.Trash Icon
    Wait Until Element Contains  xpath=//*[@id="MainContent_lblCannotRemoveReason"]  This tile cannot be removed because there are documents in the tile. Please choose from below:
    Sleep  2s
    DashboardActions.Go To Manage Documents
    Sleep  2s

Delete Tile Check With Esign And Documents
    Common.Create Tile
    DashboardActions.Select Documents From Dashboard
    Documents.Select Add Documents Button
    Documents.Upload Documents By Browser
    Documents.Upload Documents And Close
    Documents.Select First Documents
    Documents.Select Dropdown Work With Documents
    Documents.eSign Documents
    Esign.Select eSign Frame
    Esign.Step 1 eSign Create Session
    Esign.Step 2 eSign Add Signers
    Esign.Step 3 eSign Upload Documents
    Esign.Step 4 eSign Add Signing Fields
    Esign.Step 5 eSign Review Templates
    Esign.Step 6 eSign Confirm
    Esign.Close eSign Modal
    Common.Back To Dashboard
    DashboardActions.Trash Icon
    Wait Until Element Contains  xpath=//*[@id="MainContent_lblCannotRemoveReason"]  This tile cannot be removed because there are documents and pending eSign Sessions. All documents must be removed and all pending eSign Sessions must be cancelled first. Please choose from below:
    Sleep  2s
    DashboardActions.Go To Manage eSign
    Sleep  2s