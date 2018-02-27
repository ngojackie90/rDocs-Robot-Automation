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
    Wait Until Page Contains  Opportunity/Transaction

Add Property
    Click Element  id=MainContent_lstFolders_ctrl0_btnAddProperty_0
    Wait Until Element is Visible  id=MdlProperty
    Input Text  id=MainContent_UCProperty_txtMlsNumber  OC18037224
    #Select From List  xpath=//*[@id="MainContent_UCProperty_ddlMlsBoard"]/option[1]  Multi-Regional Multiple Listing Service
    Click Element  id=MainContent_UCProperty_btnMlsSearch
    Sleep  4s
    #Wait Until Element Contains  id=MainContent_UCProperty_txtPropAddress1  1 Walnut Dr
    #Wait Until Page Contains  1 Walnut Dr
    Click Element  id=MainContent_UCProperty_btnSubmitProperty