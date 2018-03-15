*** Settings ***
Library  Selenium2Library

*** Keywords ***
eSign Icon
    Click Element  xpath=//*[@id="MainContent_lstFolders_ctrl0_lnkQuickEsign_0"]

Email Icon

Copy Icon

Active Icon

Archived Icon

History Icon



Select Documents From Dashboard
    Click Element  xpath=//*[@id="MainContent_lstFolders_ctrl0_pnlDocsBadge_0"]/div/span[2]/a
    Sleep  2s

Select Contacts Link From Dashboard
    Click Element  xpath=//*[@id="MainContent_lstFolders_ctrl0_pnlContactsBadge_0"]/div/span[2]/a

Select Add Contacts From Blank Tile
    Click Element  xpath=//*[@id="MainContent_lstFolders_ctrl0_btnAddClient_0"]
    Wait Until Element Is Visible  id=MdlContact

#----- Remove Tile ------
Trash Icon
    Click Element  xpath=//*[@id="MainContent_lstFolders_ctrl0_lnkRemoveTile_0"]

Go to Manage Documents
    Click Element  xpath=//*[@id="MainContent_btnGoDocs"]

Go to Manage eSign
    Click Element  xpath=//*[@id="MainContent_btnGoEsign"]