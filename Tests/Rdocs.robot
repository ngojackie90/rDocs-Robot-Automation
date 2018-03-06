*** Settings ***
Documentation  rDocs Test
Resource  ../Resources/Common.robot
Resource  ../Resources/PO/Dropdown.robot
Resource  ../Resources/PO/Contact.robot
Resource  ../Resources/PO/Property.robot
Resource  ../Resources/PO/Documents.robot
Resource  ../Resources/PO/Esign.robot
Resource  ../Resources/PO/Checklist.robot


#(Test Entire Suite) pybot -d results tests/rdocs.robot
#(Test Specific Case) pybot -d results -t "User logout" tests/rdocs.robot

Test Setup  Common.Login to rDocs
Test Teardown  Common.Logout rDocs



*** Variables ***

*** Test Cases ***

#---- Property ----

Add Property By MLS Search
    [Documentation]  To Create Blank Tile And Add Property
    Common.Create Tile
    Property.Add Property Button
    Property.Property MLS Search

Add Property Manually
    Common.Create Tile
    Property.Add Property Button
    Property.Add Property Manual

#------- Contacts ---------

Create And Edit Buyer Contacts
    [Documentation]  To Create Buyer Contacts On Dashboard And Contact Page
    Common.Create Tile
    Contact.Select Add Contacts From Blank Tile
    Contact.Select Buyer Type
    Contact.Create Primary Client
    Contact.Select Add Contacts Button
    Contact.Create Secondary Client
    Contact.Edit Primary Contact Details
    Contact.Edit Secondary Contact Details
    Common.Back To Dashboard

Add Property And Buyer Contacts
    [Documentation]  To Create Blank Tile, Add Property, Add Primary Contact, And Secondary Contact
    Common.Create Tile
    Property.Add Property Button
    Property.Property MLS Search
    Contact.Select Add Contacts From Blank Tile
    Contact.Select Buyer Type
    Contact.Create Primary Client
    Contact.Select Add Contacts Button
    Contact.Create Secondary Client
    Contact.Edit Primary Contact Details
    Contact.Edit Secondary Contact Details
    Common.Back To Dashboard

Contact Actions
    [Documentation]  To Test All Contact Actions
    Common.Create Tile
    Contact.Select Add Contacts From Blank Tile
    Contact.Select Buyer Type
    Contact.Create Primary Client
    Contact.Select Add Contacts Button
    Contact.Create Secondary Client
    Contact.Delete Secondary Contact
    Contact.Email Primary Contact Credentials
    Contact.Allow Primary Contact To Upload
    Common.Back To Dashboard

#------ Documents ------

Upload Document Test
    [Documentation]  Upload and ReUpload Document
    Common.Create Tile
    Documents.Select Documents From Dashboard
    Documents.Select Add Documents Button
    Documents.Upload Documents By Browser
    Documents.Upload Documents And Add
    Documents.Upload Documents And Close
    Common.Back To Dashboard

Work With Documents Action
    [Documentation]  Test Work With Documents Functionality Using First Document
    Common.Create Tile
    Documents.Select Documents From Dashboard
    Documents.Select Add Documents Button
    Documents.Upload Documents By Browser
    Documents.Upload Documents And Add
    Documents.Upload Documents And Close
    Documents.Renaming Documents
    Documents.Removing Second Documents
    Documents.Printing Documents
    Documents.Select First Documents
    Documents.eSigning Documents
    Documents.Reviewing Documents
    Documents.Ready for Reviewing Documents
    Documents.Copying Documents
    Documents.Moving Documents
    Documents.Select Add Documents Button
    Documents.Upload Documents By Browser
    Documents.Upload Documents And Close

Change Privilege Settings
    [Documentation]  Upload First Document And Change Privilege Settings
    Common.Create Tile
    Documents.Select Documents From Dashboard
    Documents.Select Add Documents Button
    Documents.Upload Documents By Browser
    Documents.Upload Documents And Close
    Documents.Change Privilege To Public
    Documents.Change Privilege To Private
    Documents.Change Privilege To Shared

Extract Documents
    [Documentation]  Upload First Document And Extract Page 1 And 2
    Common.Create Tile
    Documents.Select Documents From Dashboard
    Documents.Select Add Documents Button
    Documents.Upload Documents By Browser
    Documents.Upload Documents And Close
    Documents.Click Extract Icon
    Documents.Select Page 1 And 2
    Documents.Name New Extract Document

Documents eSign
    [Documentation]  Test eSign Without Contacts In Tile
    Common.Create Tile
    Documents.Select Documents From Dashboard
    Documents.Select Add Documents Button
    Documents.Upload Documents By Browser
    Documents.Upload Documents And Close
    Documents.Esigning Documents
    Common.Back To Dashboard

Documents eSign Assign Template And Signer
    [Documentation]  Test eSign Without Contacts In Tile, Apply Template and Apple Signer to Signature
    Common.Create Tile
    Documents.Select Documents From Dashboard
    Documents.Select Add Documents Button
    Documents.Upload Documents By Browser
    Documents.Upload Documents And Close
    Documents.eSigning Documents Apple Template And Signer
    Common.Back To Dashboard

#------ Checklist ---------
Creating Checklist
    Checklist.Create Checklist
    #Checklist.Delete First Checklist
    Checklist.Go To First Checklist Task
    Checklist.Add Task To First Checklist
    Checklist.Associate Required Documents To First Task First Checklist
    Checklist.Delete First Task
    Checklist.Return To Checklist
    Checklist.Delete First Checklist
    Common.Back To Dashboard


Dashboard eSign  #Look Back Later
    Common.Create Tile
    Sleep  1s
    Click Element  xpath=//*[@id="MainContent_lstFolders_ctrl0_lnkQuickEsign_0"]/i
    Sleep  10s
    Esign.Select eSign Frame
    Esign.Step 1 eSign
    Sleep  3s







*** Keywords ***