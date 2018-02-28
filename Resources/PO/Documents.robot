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

Document Security Settings Private
    Click Element  id=MainContent_UCDocumentSecurity_RBLDocumentSecurity_0
    Sleep  1s
    Click Element  id=MainContent_btnSecurityChange
    Sleep  2s

Document Security Settings Public
    Click Element  id=MainContent_UCDocumentSecurity_RBLDocumentSecurity_1
    Sleep  1s
    Click Element  id=MainContent_btnSecurityChange
    Sleep  2s

Document Security Settings Shared
    Click Element  id=MainContent_UCDocumentSecurity_RBLDocumentSecurity_2
    Sleep  1s
    Click Element  id=MainContent_btnSecurityChange
    Sleep  2s

Upload Document Private Setting
    Click Element  id=MainContent_UCUploadDocBrowser_UCDocumentSecurity_RBLDocumentSecurity_0
    Sleep  1s

Upload Document Public Setting
    Click Element  id=MainContent_UCUploadDocBrowser_UCDocumentSecurity_RBLDocumentSecurity_1
    Sleep  1s

Upload Document Shared Setting
    Click Element  id=MainContent_UCUploadDocBrowser_UCDocumentSecurity_RBLDocumentSecurity_2
    Sleep  1s

Click Privilege Icon
    Click Element  id=MainContent_lvDocList_btnViewDocSecurity_0
    Sleep  2s

Upload File
    Choose File  id=MainContent_UCUploadDocBrowser_fuFileUpload  /Users/Work/Dropbox/github/FileTest/Datasheet.pdf

Click Extract Icon
    Click Element  id=MainContent_lvDocList_btnDocUtil_0
    Sleep  2s

#-------- Upload Documents ---------
Upload Documents And Close
    Input Text  id=MainContent_UCUploadDocBrowser_txtDisplayName  Datasheet
    Input Text  id=MainContent_UCUploadDocBrowser_TAUploadDocDescription  This is a test
    Upload File
    Sleep  2s
    Click Element  id=MainContent_UCUploadDocBrowser_btnUploadClose
    Sleep  5s

Upload Documents And Add
    Input Text  id=MainContent_UCUploadDocBrowser_txtDisplayName  Automation
    Input Text  id=MainContent_UCUploadDocBrowser_TAUploadDocDescription  This is a test
    Upload File
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
    Sleep  10s

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
    Select First Documents  #Uncheck First Documents
    Select First Documents  #Check First Documents Again
    Select Dropdown Work With Documents
    eSign Documents
    #Sleep  10s
    Click Element  xpath=//*[@id="MainContent_UCEsign_btnXCancel"]
    Sleep  10s

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
    Sleep  1s
    Click Element  id=MainContent_UCMoveCopy_btnCopy
    Sleep  2s

Moving Documents
    Select First Documents
    Select Dropdown Work With Documents
    Move Documents
    Select From List By Value  id=MainContent_UCMoveCopy_DDLMoveFileList  12810
    Sleep  1s
    Click Element  id=MainContent_UCMoveCopy_btnMove
    Sleep  2s

#---- Change Privilege Settings -----

Change Privilege To Public
    Click Privilege Icon
    Sleep  2s
    Document Security Settings Public

Change Privilege To Private
    Click Privilege Icon
    Sleep  2s
    Document Security Settings Private

Change Privilege To Shared
    Click Privilege Icon
    Sleep  2s
    Document Security Settings Shared

#----- Extract -------
Select Page 1 And 2
    Click Element  id=MainContent_ucDocumentUtil_rptDocumentPage_imgDocPage_0
    Sleep  1s
    Click Element  id=MainContent_ucDocumentUtil_rptDocumentPage_imgDocPage_1
    Sleep  1s

Name New Extract Document
    Input Text  xpath=//*[@id="MainContent_ucDocumentUtil_txtDocumentName"]  Automation Extract
    Sleep  1s
    Input Text  xpath=//*[@id="MainContent_ucDocumentUtil_txtDocumentDescription"]  This is a test
    Sleep  1s
    Click Element  id=ctl00_MainContent_ucDocumentUtil_lbExtract
    Sleep  10s
    Click Element  xpath=//*[@id="MainContent_ucDocumentUtil_lbClose"]
    Sleep  5s
    Wait Until Page Contains  Automation Extract