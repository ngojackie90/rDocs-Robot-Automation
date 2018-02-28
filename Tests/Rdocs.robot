*** Settings ***
Documentation  rDocs Test
Resource  ../Resources/Common.robot
Resource  ../Resources/PO/Dropdown.robot
Resource  ../Resources/PO/Contact.robot
Resource  ../Resources/PO/Property.robot
Resource  ../Resources/PO/Documents.robot



#(Test Entire Suite) pybot -d results tests/rdocs.robot
#(Test Specific Case) pybot -d results -t "User logout" tests/rdocs.robot

Test Setup  Common.Login to rDocs
Test Teardown  Common.Logout rDocs



*** Variables ***

*** Test Cases ***

Create Blank Tile
    Common.Create Tile

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

Add Property By MLS Search
    [Documentation]  To Create Blank Tile And Add Property
    Common.Create Tile
    Property.Add Property Button
    Property.Property MLS Search

Add Property Manually
    Common.Create Tile
    Property.Add Property Button
    Property.Add Property Manual

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
    Common.Create Tile
    Documents.Select Documents From Dashboard
    Documents.Select Add Documents Button
    Documents.Upload Documents By Browser
    #Documents.Upload Documents And Add
    Documents.Upload Documents And Close
    #Documents.Renaming Documents
    #Documents.Removing Second Documents
    #Documents.Printing Documents
    #Documents.eSigning Documents
    #Documents.Reviewing Documents
    #Documents.Ready for Reviewing Documents
    #Documents.Copying Documents
    Documents.Moving Documents

*** Keywords ***