*** Settings ***
Library  Selenium2Library

*** Keywords ***

Select Add Contacts Button
    Click Element  id=MainContent_btnAddContact
    Wait Until Element Is Visible  id=MdlContact

Select Buyer Type
    Click Element  id=MainContent_rdoBuyerContact

Select Buyer-Side
    Click Element  id=MainContent_rdoBuyerSide

Select Seller Type
    Click Element  id=MainContent_rdoSellerContact

Select Seller-Side
    Click Element  id=MainContent_rdoSellerSide

Create Primary Client
    Click Element  xpath=//*[@id="MainContent_ddlContactDesc"]/option[11]  #+Contact Btn From Dashboard
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
    Wait Until Page Contains  Clients

Create Secondary Client
    Sleep  2s
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
    Sleep  2s
    Wait Until Page Contains  Clients

Edit Primary Contact Details
    Sleep  2s
    Click Element  id=MainContent_lvClients_btnEditClient_0
    Wait Until Element Is Visible  id=MdlContact
    Input Text  id=MainContent_txtFirstName  Robert
    Click Element  id=MainContent_btnSubmitContact
    Wait Until Page Contains  Clients (Buyer)
    Sleep  2s

Edit Secondary Contact Details
    Sleep  2s
    Click Element  id=MainContent_lvClients_btnEditClient_1
    Wait Until Element Is Visible  id=MdlContact
    Input Text  id=MainContent_txtFirstName  Julie
    Click Element  id=MainContent_btnSubmitContact
    Wait Until Page Contains  Clients (Buyer)
    Sleep  2s

Allow Primary Contact To Upload
    Sleep  2s
    Click Element  xpath=//*[@id="MainContent_lvClients_btnAllowUploadClient_0"]/i
    Sleep  2s

Email Primary Contact Credentials
    Click Element  id=MainContent_lvClients_btnEmailLoginClient_0
    Sleep  2s
    Click Element  id=MainContent_btnSubmitSendLogin
    Sleep  2s
    Click Element  id=MainContent_btnCloseSendLogin

Delete Primary Contact
    Sleep  2s
    Click Element  id=MainContent_lvClients_btnTrash_0
    Sleep  2s
    Click Element  id=MainContent_btnSubmitDeleteClient

Delete Secondary Contact
    Sleep  2s
    Click Element  id=MainContent_lvClients_btnTrash_1
    Sleep  2s
    Click Element  id=MainContent_btnSubmitDeleteClient
    Sleep  2s