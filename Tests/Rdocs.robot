*** Settings ***
Documentation  rDocs Test
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
    DashboardActions.Select Add Contacts From Blank Tile
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
    DashboardActions.Select Add Contacts From Blank Tile
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
    DashboardActions.Select Add Contacts From Blank Tile
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
    DashboardActions.Select Documents From Dashboard
    Documents.Select Add Documents Button
    Documents.Upload Documents By Browser
    Documents.Upload Documents And Add
    Documents.Upload Documents And Close
    Common.Back To Dashboard

Work With Documents Action
    [Documentation]  Test Work With Documents Functionality Using First Document
    Common.Create Tile
    DashboardActions.Select Documents From Dashboard
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
    DashboardActions.Select Documents From Dashboard
    Documents.Select Add Documents Button
    Documents.Upload Documents By Browser
    Documents.Upload Documents And Close
    Documents.Change Privilege To Public
    Documents.Change Privilege To Private
    Documents.Change Privilege To Shared

Extract Documents
    [Documentation]  Upload First Document And Extract Page 1 And 2
    Common.Create Tile
    DashboardActions.Select Documents From Dashboard
    Documents.Select Add Documents Button
    Documents.Upload Documents By Browser
    Documents.Upload Documents And Close
    Documents.Click Extract Icon
    Documents.Select Page 1 And 2
    Documents.Name New Extract Document



#------ Checklist ---------
Creating Checklist
    [Documentation]  Creating a Checklist With Task
    Checklist.Create Checklist
    Checklist.Go To First Checklist Task
    Checklist.Add Task To First Checklist
    Checklist.Associate Required Documents To First Task First Checklist
    Checklist.Delete First Task
    Checklist.Return To Checklist
    Checklist.Delete First Checklist
    Common.Back To Dashboard

Verifying Created Checklist
    [Documentation]  Create a checklist and check if checklist exists in document page
    Checklist.Create Checklist
    Checklist.Go To First Checklist Task
    Checklist.Add Task To First Checklist
    Checklist.Associate Required Documents To First Task First Checklist
    Common.Back To Dashboard
    Common.Create Tile
    DashboardActions.Select Documents From Dashboard
    Documents.Add Checklist
    Dropdown.Select Dropdown
    Dropdown.Select Checklist
    Checklist.Delete First Checklist
