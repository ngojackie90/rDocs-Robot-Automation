*** Settings ***
Library  Selenium2Library

*** Variables ***

*** Keywords ***
Add Property Button
    Click Element  id=MainContent_lstFolders_ctrl0_btnAddProperty_0
    Wait Until Element Is Visible  id=MdlProperty

Property MLS Search
    Input Text  id=MainContent_UCProperty_txtMlsNumber  OC18037224
    Click Element  id=MainContent_UCProperty_btnMlsSearch
    Sleep  4s
    Click Element  id=MainContent_UCProperty_btnSubmitProperty
    Sleep  3s

Add Property Manual
    Input Text  id=MainContent_UCProperty_txtPropAddress1  111 Main Street
    Input Text  id=MainContent_UCProperty_txtPropAddress2  Suite 200
    Input Text  id=MainContent_UCProperty_txtPropCity  Irvine
    Click Element  xpath=//*[@id="MainContent_UCProperty_ddlPropState"]/option[6]
    Input Text  id=MainContent_UCProperty_txtPropZip  92656
    Click Element  id=MainContent_UCProperty_btnSubmitProperty
    Sleep  3s

