*** Settings ***
Library  Selenium2Library


*** Keywords ***
Select Documents From Dashboard
    Click Element  xpath=//*[@id="MainContent_lstFolders_ctrl0_pnlDocsBadge_0"]/div/span[2]/a
    Sleep  2s

Select First Documents
    Click Element  id=MainContent_lvDocList_chkSelect_0
    Sleep  1s

Select Second Documents
    Click Element  id=MainContent_lvDocList_chkSelect_1
    Sleep  1s

Select Add Documents Button
    Click Element  xpath=//*[@id="MainContent_pnlAddDocs"]/div/a
    Sleep  2s
    Wait Until Element is Visible  xpath=//*[@id="MainContent_pnlAddDocs"]/div/ul

Upload Documents By Browser
    Click Element  xpath=//*[@id="MainContent_btnUploadDocBrowserTop"]
    Sleep  2s

Upload Documents By Fax
    Click Element  xpath=//*[@id="MainContent_btnUploadDocFaxTop"]
    Sleep  2s

#-------- Upload Documents ---------
Upload Documents And Close
    Input Text  id=MainContent_UCUploadDocBrowser_txtDisplayName  Datasheet
    Input Text  id=MainContent_UCUploadDocBrowser_TAUploadDocDescription  This is a test
    Choose File  id=MainContent_UCUploadDocBrowser_fuFileUpload  /Users/Work/Dropbox/github/FileTest/Datasheet.pdf
    Sleep  2s
    Click Element  id=MainContent_UCUploadDocBrowser_btnUploadClose
    Sleep  5s

Upload Documents And Add
    Input Text  id=MainContent_UCUploadDocBrowser_txtDisplayName  Automation
    Input Text  id=MainContent_UCUploadDocBrowser_TAUploadDocDescription  This is a test
    Choose File  id=MainContent_UCUploadDocBrowser_fuFileUpload  /Users/Work/Dropbox/github/FileTest/Datasheet.pdf
    Sleep  2s
    Click Element  id=MainContent_UCUploadDocBrowser_btnUploadAdd
    Sleep  5s


#------- Work With Documents ---------
Select Dropdown Work With Documents
    Click Element  xpath=//*[@id="MainContent_pnlWorkWithDocs"]/div/a
    Sleep  2s

Remove Documents
    Click Element  id=MainContent_btnActionRemove
    Sleep  2s

Print Documents
    Click Element  id=MainContent_pnlActionPrint
    Sleep  2s

Move Documents
    Click Element  id=MainContent_pnlActionMoveCopy
    Sleep  2s

Copy Documents
    Click Element  id=MainContent_pnlActionMoveCopy
    Sleep  2s

Fax Documents
    Click Element  id=MainContent_pnlActionFax
    Sleep  2s

Email Documents
    Click Element  id=MainContent_pnlActionEmail
    Sleep  2s

eSign Documents
    Click Element  id=MainContent_pnlActionEsign
    Sleep  2s

Ready For Review Documents
    Click Element  id=MainContent_pnlActionReadyForReview
    Sleep  2s

Review Documents
    Click Element  id=MainContent_pnlActionReview
    Sleep  5s

Rename Documents
    Click Element  id=MainContent_pnlActionRename
    Sleep  2s


#---- Using Work With Documents Action ----

Renaming Documents
    Select First Documents
    Select Dropdown Work With Documents
    Rename Documents
    Input Text  id=MainContent_UCRenameDoc_lvRenameDocument_TBDocDisplayName_0  DatasheetRenamed
    Click Element  id=MainContent_UCRenameDoc_btnRename
    Sleep  2s
    Wait Until Page Contains  DatasheetRenamed

Removing Second Documents
    Select Second Documents
    Select Dropdown Work With Documents
    Remove Documents
    Click Element  xpath=//*[@id="MainContent_UCRemoveDoc_btnRemove"]
    Sleep  2s

Printing Documents
    Select First Documents
    Select Dropdown Work With Documents
    Print Documents
    Click Element  id=MainContent_btnPrintDocs
    Sleep  2s
    Click Element  xpath=//*[@id="MdlPrintMergedDoc"]/div[1]/a
    Sleep  2s

Faxing Documents
    Select First Documents
    Select Dropdown Work With Documents
    Fax Documents
    Input Text  id=MainContent_UCFaxDoc_lvFaxOtherContacts_TBFaxOutOtherContactName_0  rDocs Test
    Input Text  id=MainContent_UCFaxDoc_lvFaxOtherContacts_TBFaxOutOtherContactFaxNumber_0  999-999-9999
    Input Text  id=MainContent_UCFaxDoc_TBFaxOutSubject  rDocs Fax Test
    Input Text  id=MainContent_UCFaxDoc_TBFaxOutBody  This is a test
    Click Element  id=MainContent_UCFaxDoc_btnSubmit
    Sleep  2s

Emailing Documents
    Select First Documents
    Select Dropdown Work With Documents
    Email Documents
    Input Text  id=MainContent_TBReceipients  jngoqa@gmail.com
    Input Text  id=MainContent_TBSubject  Automation Email
    Input Text  id=MainContent_TBMessage  This is a test
    Click Element  id=MainContent_btnEmailDocs
    Sleep  2s

eSigning Documents
    Select First Documents
    Select Dropdown Work With Documents
    eSign Documents
    Sleep  10s
    Click Element  id=MainContent_UCEsign_btnXCancel
    Sleep  3s

Reviewing Documents
    Select First Documents
    Select Dropdown Work With Documents
    Review Documents
    Input Text  id=MainContent_UCReview_txtNoteArea  This is a test
    Click Element  xpath=//*[@id="aReviewEmail"]
    Sleep  2s
    Click Element  xpath=//*[@id="MainContent_UCReview_pnlReviewer"]/div/div/ul/li[2]/a
    Sleep  1s
    Click Element  id=MainContent_UCReview_lbReadyForReview
    Sleep  1s
    Click Element  id=MainContent_UCReview_btnCloseReview
    Sleep  3s

Ready for Reviewing Documents
    Select First Documents
    Select Dropdown Work With Documents
    Ready For Review Documents
    Click Element  xpath=//*[@id="MdlReadyforReview"]/div[2]/div/div/div[1]/div[2]/div/div[2]/div/a
    Sleep  2s
    Click Element  xpath=//*[@id="MdlReadyforReview"]/div[2]/div/div/div[1]/div[2]/div/div[2]/div/ul/li[4]/a
    Sleep  1s
    Click Element  xpath=//*[@id="aReadyReviewEmail"]
    Sleep  2s
    Click Element  xpath=//*[@id="MdlReadyforReview"]/div[2]/div/div/div[1]/div[2]/div/div[6]/div/ul/li[2]/a
    Sleep  1s
    Click Element  xpath=//*[@id="MainContent_UCReadyforReview_lnReadyForReview"]

Copying Documents
    Select First Documents
    Select Dropdown Work With Documents
    Copy Documents
    Select From List By Value  id=MainContent_UCMoveCopy_DDLMoveFileList  12809
    Sleep  2s
    Click Element  id=MainContent_UCMoveCopy_btnCopy

Moving Documents






