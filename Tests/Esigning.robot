*** Settings ***
Resource  ../Resources/Common.robot
Resource  ../Resources/PO/Dropdown.robot
Resource  ../Resources/PO/Contact.robot
Resource  ../Resources/PO/Property.robot
Resource  ../Resources/PO/Documents.robot
Resource  ../Resources/PO/Esign.robot
Resource  ../Resources/PO/Checklist.robot


*** Test Cases ***
Documents eSign
    [Documentation]  Test eSign Without Contacts In Tile
    Common.Create Tile
    Documents.Select Documents From Dashboard
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

Documents eSign Assign Template And Signer
    [Documentation]  Test eSign Without Contacts In Tile, Apply Template and Apple Signer to Signature
    Common.Create Tile
    Documents.Select Documents From Dashboard
    Documents.Select Add Documents Button
    Documents.Upload Documents By Browser
    Documents.Upload Documents And Close
    Documents.Select First Documents
    Documents.Select Dropdown Work With Documents
    Documents.eSign Documents
    Esign.Select eSign Frame
    Esign.Step 1 eSign Create Session
    Esign.Step 2 eSign Add Signers
    Esign.Apply Template Icon
    Esign.Step 3 Assigning Template
    Esign.Step 3 Assigning Signer
    Unselect Frame
    Esign.Select eSign Frame
    Esign.Step 3 Next
    Esign.Step 4 Next
    Esign.Step 5 eSign Review Templates
    Esign.Step 6 eSign Confirm
    Esign.Close eSign Modal
    Common.Back To Dashboard
