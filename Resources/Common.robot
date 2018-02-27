*** Settings ***
Library  Selenium2Library


*** Variables ***


*** Keywords ***
Login to rDocs
    Open Browser    https://abcrealty.stage.myrdocs.com  chrome
    Wait Until Page Contains    Username
    Input Text  id=txtUserName  broker.automation
    Input Text  id=txtPassword  aaaa
    Click Button  id=btnLogin
    Wait Until Page Contains  Opportunity/Transaction

Logout rDocs
    Sleep  3s
    Dropdown.Select Dropdown
    Dropdown.Select Logout
    Close Browser

Create Tile
    Click Element  id=MainContent_btnCreateNew

Back To Dashboard
    Click Link  xpath=//*[@id="pnlReturnToDashboard"]/div/a
