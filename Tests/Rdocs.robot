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
    Contact.Create Primary Buyer Client From Dashboard
    Contact.Create Secondary Buyer Client
    Contact.Edit Primary Buyer Contact Details
    Contact.Edit Secondary Buyer Contact Details


*** Keywords ***