*** Settings ***
Documentation  rDocs Test
#Library  Selenium2Library
Resource  ../Resources/Common.robot
Resource  ../Resources/PO/Dropdown.robot
Resource  ../Resources/PO/Contact.robot

#(Test Entire Suite) pybot -d results tests/rdocs.robot
#(Test Specific Case) pybot -d results -t "User logout" tests/rdocs.robot

Test Setup  Common.Login to rDocs
Test Teardown  Common.Logout rDocs



*** Variables ***

*** Test Cases ***

Create Blank Tile
    Common.Create Tile

Create And Edit Contacts
    [Documentation]  To Create Buyer Contacts On Dashboard And Contact Page
    Common.Create Tile
    Contact.Create Primary Buyer Client From Dashboard
    Contact.Create Secondary Buyer Client
    Contact.Edit Primary Buyer Contact Details
    Contact.Edit Secondary Buyer Contact Details

Add Property
    [Documentation]  To Create Blank Tile And Add Property
    Common.Create Tile
    Common.Add Property

Add Property And Contact
    [Documentation]  To Create Blank Tile, Add Property, Add Primary Contact, And Secondary Contact
    Common.Create Tile
    Common.Add Property
    Contact.Create Primary Buyer Client From Dashboard
    Contact.Create Secondary Buyer Client
    Contact.Edit Primary Buyer Contact Details
    Contact.Edit Secondary Buyer Contact Details
    Common.Back To Dashboard


*** Keywords ***