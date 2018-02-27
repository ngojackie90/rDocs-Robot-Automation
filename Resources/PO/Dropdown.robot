*** Settings ***
Library  Selenium2Library

*** Keywords ***
Select Dropdown
    Click Element  xpath=//*[@id="pnlDateMenu"]/div/div/a
    Sleep  3s
    Wait Until Element is Visible  xpath=//*[@id="pnlDateMenu"]/div/div/ul

Select My Profile
    Click Element  id=pnlMenuMyProfile

Select Print Queue
    Click Element  id=pnlMenuPrintQueue

Select Forms Manager
    Click Element  id=pnlFormsLibrary

Select eSign Preferences
    Click Element  id=pnlEsignPref

Select Help
    Click Element  id=pnlMenuHelp

Select Checklist
    Click Element  id=pnlMenuChecklists

Select Logout
    Click Element  id=btnLogout

