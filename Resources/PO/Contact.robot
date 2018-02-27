*** Settings ***
Library  Selenium2Library

*** Keywords ***
Create Primary Buyer Client From Dashboard
    Create Tile
    Click Element  xpath=//*[@id="MainContent_lstFolders_ctrl0_btnAddClient_0"]
    Wait Until Element Is Visible  id=MdlContact
    Click Element  id=MainContent_rdoBuyerContact
    Click Element  xpath=//*[@id="MainContent_ddlContactDesc"]/option[11]
    Input Text  id=MainContent_txtFirstName  Jason
    Input Text  id=MainContent_txtLastName  Lee
    Input Text  id=MainContent_txtCompanyName  Jason Corporate
    Input Text  id=MainContent_txtAddress1  111 Main Street
    Input Text  id=MainContent_txtCity  Irvine
    Click Element  xpath=//*[@id="MainContent_ddlState"]/option[16]
    Input Text  id=MainContent_txtZip  92656
    Input Text  id=MainContent_txtEmail1  jngoqa@gmail.com
    Input Text  id=MainContent_txtWorkPhone  999-999-9999
    Input Text  id=MainContent_txtHomePhone  888-888-8888
    Input Text  id=MainContent_txtMobilePhone  777-777-7777
    Input Text  id=MainContent_txtFaxNumber  666-666-6666
    Click Element  id=MainContent_btnSubmitContact
    Wait Until Page Contains  Clients (Buyer)

Create Secondary Buyer Client
    Click Element  id=MainContent_btnAddContact
    Wait Until Element Is Visible  id=MdlContact
    Click Element  xpath=//*[@id="MainContent_ddlContactDesc"]/option[10]
    Input Text  id=MainContent_txtFirstName  Karen
    Input Text  id=MainContent_txtLastName  Lee
    Input Text  id=MainContent_txtCompanyName  Karen Corporate
    Input Text  id=MainContent_txtAddress1  111 Main Street
    Input Text  id=MainContent_txtCity  Irvine
    Click Element  xpath=//*[@id="MainContent_ddlState"]/option[16]
    Input Text  id=MainContent_txtZip  92656
    Input Text  id=MainContent_txtEmail1  jngoqa2@gmail.com
    Input Text  id=MainContent_txtWorkPhone  999-999-1234
    Input Text  id=MainContent_txtHomePhone  888-888-1234
    Input Text  id=MainContent_txtMobilePhone  777-777-1234
    Input Text  id=MainContent_txtFaxNumber  666-666-1234
    Click Element  id=MainContent_btnSubmitContact
    Wait Until Page Contains  Clients (Buyer)

Edit Primary Buyer Contact Details
    Sleep  3s
    Click Element  id=MainContent_lvClients_btnEditClient_0
    Wait Until Element Is Visible  id=MdlContact
    Input Text  id=MainContent_txtFirstName  Robert
    Click Element  id=MainContent_btnSubmitContact
    Wait Until Page Contains  Clients (Buyer)

Edit Secondary Buyer Contact Details
    Sleep  3s
    Click Element  id=MainContent_lvClients_btnEditClient_1
    Wait Until Element Is Visible  id=MdlContact
    Input Text  id=MainContent_txtFirstName  Julie
    Click Element  id=MainContent_btnSubmitContact
    Wait Until Page Contains  Clients (Buyer)


