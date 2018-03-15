*** Settings ***
Resource  ../Resources/Common.robot
Resource  ../Resources/PO/Dropdown.robot
Resource  ../Resources/PO/Contact.robot
Resource  ../Resources/PO/Property.robot
Resource  ../Resources/PO/Documents.robot
Resource  ../Resources/PO/Esign.robot
Resource  ../Resources/PO/Checklist.robot
Resource  ../Resources/PO/DashboardActions.robot


#(Test Entire Suite) pybot -d results tests/rdocs.robot
#(Test Specific Case) pybot -d results -t "User logout" tests/rdocs.robot

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
    Common.Trash Icon
    Wait Until Element Contains  This tile cannot be removed because there are documents in the tile. Please choose from below:
    Sleep  2s
