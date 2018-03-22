*** Settings ***
Library  Selenium2Library

*** Variables ***

*** Keywords ***

Select Add Contacts Button
    Click Element  id=MainContent_btnAddContact  #Contact Page Add Contact
    Sleep  2s
    Wait Until Element Is Visible  id=MdlContact  #Contact Modal

Select Buyer Type
    Click Element  id=MainContent_rdoBuyerContact  #Buyer Type

Select Buyer-Side
    Click Element  id=MainContent_rdoBuyerSide  #Buyer-Side Type

Select Seller Type
    Click Element  id=MainContent_rdoSellerContact  #Seller Type

Select Seller-Side
    Click Element  id=MainContent_rdoSellerSide  #Seller-Side Type

Create Primary Client
    [Documentation]  Creating Primary Contact Info
    Click Element  xpath=//*[@id="MainContent_ddlContactDesc"]/option[11]  #Contact Description - Home Inspector
    Input Text  id=MainContent_txtFirstName  Jason  #First Name
    Input Text  id=MainContent_txtLastName  Lee  #Last Name
    Input Text  id=MainContent_txtCompanyName  Jason Corporate  #Company Name
    Input Text  id=MainContent_txtAddress1  111 Main Street  #Address
    Input Text  id=MainContent_txtCity  Irvine  #City
    Click Element  xpath=//*[@id="MainContent_ddlState"]/option[16]  #State CA
    Input Text  id=MainContent_txtZip  92656  #Zip
    Input Text  id=MainContent_txtEmail1  jngoqa@gmail.com  #Email1
    Input Text  id=MainContent_txtWorkPhone  999-999-9999  #Work Phone
    Input Text  id=MainContent_txtHomePhone  888-888-8888  #Home Phone
    Input Text  id=MainContent_txtMobilePhone  777-777-7777  #Cell Phone
    Input Text  id=MainContent_txtFaxNumber  666-666-6666  #Fax Phone
    Click Element  id=MainContent_btnSubmitContact  #Contact Submit Button
    Wait Until Page Contains  Clients

Create Secondary Client
    [Documentation]  Creating Secondary Contact Info
    Click Element  xpath=//*[@id="MainContent_ddlContactDesc"]/option[10]  #Contact Description - File Admin
    Input Text  id=MainContent_txtFirstName  Karen  #First Name
    Input Text  id=MainContent_txtLastName  Lee  #Last Name
    Input Text  id=MainContent_txtCompanyName  Karen Corporate  #Company Name
    Input Text  id=MainContent_txtAddress1  111 Main Street  #Address
    Input Text  id=MainContent_txtCity  Irvine  #City
    Click Element  xpath=//*[@id="MainContent_ddlState"]/option[16]  #State CA
    Input Text  id=MainContent_txtZip  92656  #Zip
    Input Text  id=MainContent_txtEmail1  jngoqa2@gmail.com  #Email1
    Input Text  id=MainContent_txtWorkPhone  999-999-1234  #Work Phone
    Input Text  id=MainContent_txtHomePhone  888-888-1234  #Home Phone
    Input Text  id=MainContent_txtMobilePhone  777-777-1234  #Cell Phone
    Input Text  id=MainContent_txtFaxNumber  666-666-1234  #Fax Phone
    Click Element  id=MainContent_btnSubmitContact   #Contact Submit Button
    Sleep  2s
    Wait Until Page Contains  Clients

Edit Primary Contact Details
    [Documentation]  Editing Primary Contact Info
    Sleep  2s
    Click Element  id=MainContent_lvClients_btnEditClient_0  #Edit Primary Contact Icon
    Wait Until Element Is Visible  id=MdlContact
    Input Text  id=MainContent_txtFirstName  Robert  #First Name
    Click Element  id=MainContent_btnSubmitContact  #Contact Submit Button
    Wait Until Page Contains  Clients (Buyer)
    Sleep  2s

Edit Secondary Contact Details
    [Documentation]  Editing Secondary Contact Info
    Sleep  2s
    Click Element  id=MainContent_lvClients_btnEditClient_1  #Edit Secondary Contact Icon
    Wait Until Element Is Visible  id=MdlContact
    Input Text  id=MainContent_txtFirstName  Julie  #First Name
    Click Element  id=MainContent_btnSubmitContact  #Contact Submit Button
    Wait Until Page Contains  Clients (Buyer)
    Sleep  2s

Allow Primary Contact To Upload
    [Documentation]  Allowing Primary Contact to Upload
    Sleep  2s
    Click Element  xpath=//*[@id="MainContent_lvClients_btnAllowUploadClient_0"]/i  #Primary Contact Upload
    Sleep  2s

Email Primary Contact Credentials
    [Documentation]  Emailing Primary Contact Credentials
    Click Element  id=MainContent_lvClients_btnEmailLoginClient_0  #Priamry Contact Email Login Credential
    Sleep  2s
    Click Element  id=MainContent_btnSubmitSendLogin  #Primary Contact Email Login Credential - Submit
    Sleep  2s
    Click Element  id=MainContent_btnCloseSendLogin  #Primary Contact Email Login Credential - Closed

Delete Primary Contact
    [Documentation]  Deleteing Primary Contact
    Sleep  2s
    Click Element  id=MainContent_lvClients_btnTrash_0  #Primary Contact Delete Icon
    Sleep  2s
    Click Element  id=MainContent_btnSubmitDeleteClient  #Primary Contact Delete Submit Btn

Delete Secondary Contact
    [Documentation]  Deleteing Secondary Contact
    Sleep  2s
    Click Element  id=MainContent_lvClients_btnTrash_1  #Secondary Contact Delete Icon
    Sleep  2s
    Click Element  id=MainContent_btnSubmitDeleteClient  #Secondary Contact Delete Submit Btn
    Sleep  2s