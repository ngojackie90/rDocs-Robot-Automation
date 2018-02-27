*** Settings ***
Library  Selenium2Library

*** Keywords ***
Select Dropdown
    Click Element  xpath=//*[@id="pnlDateMenu"]/div/div/a
    Wait Until Element is Visible  xpath=//*[@id="pnlDateMenu"]/div/div/ul

Select My Profile

Select Print Queue

Select Forms Manager

Select eSign Preferences

Select Help

Select Checklist