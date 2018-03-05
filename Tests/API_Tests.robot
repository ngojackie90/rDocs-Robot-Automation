*** Settings ***
Documentation  These are some API Tests
Resource  ../Resources/API/Rdocs_API.robot

#pybot -d results/api -t "Check Username" tests/api_tests.robot

*** Variables ***


*** Test Cases ***
Check Username
    Check rDocs Username

Test
    Load Json