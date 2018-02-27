*** Settings ***
Library  Selenium2Library

*** Keywords ***
Include Me As A Signer
    Click Element  id=ctl00_ContentPlaceHolder1_firstsigner
    Sleep  1s

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
    Sleep  3s

Apply Template Next
    Click Element  xpath=//*[@id="btn_save"]/img
    Sleep  3s

Designate Signers Next
    Click Element  xpath=//*[@id="HyperLink1"]
    Sleep  3s

Step 1 eSign
    Input Text  xpath=//*[@id="ctl00_ContentPlaceHolder1_sessionTitle"]  rDocs eSign Automation
    Input Text  xpath=//*[@id="sessionDescriptionHidden"]  This is a test
    Step 1 Next

Step 2 eSign
    Click Element  xpath=//*[@id="ctl00_ContentPlaceHolder1_sSigners_Signers_grid_ctl00_ctl02_ctl00_lbInsert"]
    Sleep  2s
    Input Text  xpath=//*[@id="ctl00_ContentPlaceHolder1_sSigners_Signers_grid_ctl00_ctl02_ctl02_txtFirstName"]  John
    Input Text  xpath=//*[@id="ctl00_ContentPlaceHolder1_sSigners_Signers_grid_ctl00_ctl02_ctl02_txtLastName"]  Awesome
    Input Text  xpath=//*[@id="ctl00_ContentPlaceHolder1_sSigners_Signers_grid_ctl00_ctl02_ctl02_emailAddress"]  jngoqa2@gmail.com
    Click Element  xpath=//*[@id="ctl00_ContentPlaceHolder1_sSigners_Signers_grid_ctl00_ctl02_ctl02_okButton"]
    Sleep  2s
    Step 2 Next

Step 3 eSign
    Click Element  xpath=//*[@id="ctl00_ContentPlaceHolder1_sDocuments_sDocument_Grid_ctl00__0"]/td[9]/div/a[1]/img
    Sleep  2s
    Click Element  xpath=//*[@id="packagetoadd_ctl00_ctl05_columnSelectCheckBox"]
    Sleep  1s
    Apply Template Next
    Click Element  xpath=//*[@id="packagetoadd_ctl00_ctl04_assignedtoid_DropDown"]/div/ul/li[2]
    Sleep  2s
    Designate Signers Next
    Step 3 Next

Step 4 eSign
    Step 4 Next

Step 5 eSign
    Step 5 Next

Step 6 eSign
    Step 6 Next

Close eSign Modal
    Click Element  xpath=//*[@id="MainContent_UCEsign_btnXCancel"]
    Sleep  5s