*** Settings ***
Library  Selenium2Library

*** Variables ***


*** Keywords ***
Login to rDocs
    Open Browser    https://abcrealty.stage.myrdocs.com  firefox
    Wait Until Page Contains    Username
    Agent Login
    Click Button  id=btnLogin

Broker Login
    Input Text  id=txtUserName  broker.automation
    Input Text  id=txtPassword  aaaa

Agent Login
    Input Text  id=txtUserName  agent.automation
    Input Text  id=txtPassword  password123

Logout rDocs
    Sleep  3s
    Dropdown.Select Dropdown
    Dropdown.Select Logout
    Wait Until Page Contains  Username
    Close Browser

Create Tile
    Click Element  id=MainContent_btnCreateNew
    Sleep  2s

Back To Dashboard
    Click Link  xpath=//*[@id="pnlReturnToDashboard"]/div/a









