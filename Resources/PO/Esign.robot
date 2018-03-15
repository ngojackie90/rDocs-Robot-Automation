*** Settings ***
Library  Selenium2Library

*** Keywords ***
Select eSign Frame
    Select Frame  xpath=//*[@id="MainContent_UCEsign_frameEsign"]  #Select eSign iFrame
    Sleep  2s

eSign Add Package Frame
    Select Frame  xpath=//*[@id="RadWindowWrapper_ctl00_ContentPlaceHolder1_sDocuments_AddPackage"]/table/tbody/tr[2]/td[2]/iframe\  #Select Add Template/
    Sleep  2s

Include Me As A Signer
    Click Element  id=ctl00_ContentPlaceHolder1_firstsigner  #Check Include Me As Signer
    Sleep  1s

Close eSign Modal
    Unselect Frame
    Click Element  xpath=//*[@id="MainContent_UCEsign_btnXCancel"]
    Sleep  10s

#---- eSign Next Icon -----

Step 1 Next
    Click Element  xpath=//*[@id="ctl00_ContentPlaceHolder1_nextImg"]
    Sleep  3s

Step 2 Next
    Click Element  xpath=//*[@id="ctl00_ContentPlaceHolder1_sSigners_Signers_grid_ctl00"]/thead/tr[1]/td/table/tbody/tr/td[2]/a[2]/img
    Sleep  3s

Step 3 Next
    Click Element  xpath=//*[@id="ctl00_ContentPlaceHolder1_sDocuments_sDocument_Grid_ctl00"]/thead/tr[1]/td/table/tbody/tr/td[2]/a[2]/img
    Sleep  3s

Step 4 Next
    Click Element  xpath=//*[@id="ctl00_ContentPlaceHolder1_ctlTagger_nextBtn"]
    Sleep  3s

Step 5 Next
    Click Element  xpath=//*[@id="ctl00_ContentPlaceHolder1_ctlTagger_nextBtn"]
    Sleep  3s

Step 6 Next
    Click Element  xpath=//*[@id="ctl00_ContentPlaceHolder1_fnshImg"]
    Sleep  10s

#----- Template -------

Apply Template Icon
    Click Image  xpath=//*[@id="ctl00_ContentPlaceHolder1_sDocuments_sDocument_Grid_ctl00__0"]/td[9]/div/a[1]/img
    Sleep  4s

Select Template
    Click Element  xpath=//*[@id="packagetoadd_ctl00_ctl05_columnSelectCheckBox"]
    #//*[@id="packagetoadd_ctl00__0"]
    Sleep  1s

Apply Template Next
    Click Element  xpath=//*[@id="btn_save"]/img
    Sleep  3s

#------- Designate Signer --------
Add Signers Icon
    Click Element  xpath=//*[@id="ctl00_ContentPlaceHolder1_sSigners_Signers_grid_ctl00_ctl02_ctl00_lbInsert"]

Select Designate Signers
    #Select Frame  xpath=//*[@id="packagetoadd_GridData"]
    Sleep  3s
    Click Element  xpath=//*[@id="packagetoadd_ctl00_ctl04_assignedtoid_Arrow"]
    Sleep  2s
    #Select From List By Value  xpath=//*[@id="packagetoadd_ctl00_ctl04_assignedtoid_DropDown"]/div/ul  John Awesome
    Click Element  xpath=//*[@id="packagetoadd_ctl00_ctl04_assignedtoid_DropDown"]/div/ul/li[2]
    Sleep  2s

Designate Signers Next
    Click Element  xpath=//*[@id="HyperLink1"]
    Sleep  3s

#---- Drag And Drop ----
Drag Signature
    Sleep  3s
    Drag And Drop By Offset  xpath=//*[@id="ctl00_ContentPlaceHolder1_ctlTagger_Image1"]  300  500
    Sleep  5s


#---- etc ----
Add Session Title
    Input Text  xpath=//*[@id="ctl00_ContentPlaceHolder1_sessionTitle"]  rDocs eSign Automation
    Input Text  xpath=//*[@id="sessionDescriptionHidden"]  This is a test

Add Signers
    Input Text  xpath=//*[@id="ctl00_ContentPlaceHolder1_sSigners_Signers_grid_ctl00_ctl02_ctl02_txtFirstName"]  John
    Input Text  xpath=//*[@id="ctl00_ContentPlaceHolder1_sSigners_Signers_grid_ctl00_ctl02_ctl02_txtLastName"]  Awesome
    Input Text  xpath=//*[@id="ctl00_ContentPlaceHolder1_sSigners_Signers_grid_ctl00_ctl02_ctl02_emailAddress"]  jngoqa2@gmail.com
    Click Element  xpath=//*[@id="ctl00_ContentPlaceHolder1_sSigners_Signers_grid_ctl00_ctl02_ctl02_okButton"]
    Sleep  5s


#---- eSign Steps -----

Step 1 eSign Create Session
    Add Session Title
    Step 1 Next

Step 2 eSign Add Signers
    Add Signers Icon
    Sleep  5s
    Add Signers
    Step 2 Next

Step 3 eSign Upload Documents
    Step 3 Next

Step 3 Assigning Template
    eSign Add Package Frame
    Select Template
    Apply Template Next
    Sleep  2s

Step 3 Assigning Signer
    Select Designate Signers
    Designate Signers Next
    Sleep  3s

Step 4 eSign Add Signing Fields
    Drag Signature
    Sleep  3s
    Step 4 Next

Step 5 eSign Review Templates
    Step 5 Next

Step 6 eSign Confirm
    Step 6 Next


