*** Settings ***
Library  Selenium2Library

*** Variables ***

*** Keywords ***
Add Property Button
    [Documentation]  Clicking Add Property Modal For The First Tile
    Click Element  id=MainContent_lstFolders_ctrl0_btnAddProperty_0  #Add Property Modal First Tile
    Wait Until Element Is Visible  id=MdlProperty

Property MLS Search
    [Documentation]  Doing A Property Search
    Input Text  id=MainContent_UCProperty_txtMlsNumber  OC18037224  #MLS ID
    Click Element  id=MainContent_UCProperty_btnMlsSearch  #MLS Search
    Sleep  4s
    Wait Until Element Contains  id=MainContent_UCProperty_txtPropAddress1  1 Walnut Dr
    Click Element  id=MainContent_UCProperty_btnSubmitProperty  #Property Modal Submit Btn
    Sleep  3s

Add Property Manual
    [Documentation]  Adding Property Manual
    Input Text  id=MainContent_UCProperty_txtPropAddress1  111 Main Street  #Property Address1
    Input Text  id=MainContent_UCProperty_txtPropAddress2  Suite 200  #Property Address2
    Input Text  id=MainContent_UCProperty_txtPropCity  Irvine  #Property City
    Click Element  xpath=//*[@id="MainContent_UCProperty_ddlPropState"]/option[6]  #Property State
    Input Text  id=MainContent_UCProperty_txtPropZip  92656  #Property Zip
    Click Element  id=MainContent_UCProperty_btnSubmitProperty  #Property Modal Submit Btn
    Sleep  3s

