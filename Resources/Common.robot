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
    Click Element  xpath=//*[@id="pnlDateMenu"]/div/div
    Sleep  2s
    Click Element  id=btnLogout
    Close Browser

End Web Test
    Close Browser


Select Dropdown
    Click Element  xpath=//*[@id="pnlDateMenu"]/div/div/a
    Wait Until Element is Visible  xpath=//*[@id="pnlDateMenu"]/div/div/ul

Create Tile
    Click Element  id=MainContent_btnCreateNew

Back To Dashboard
    Click Element  id=//*[@id="pnlReturnToDashboard"]/div/a