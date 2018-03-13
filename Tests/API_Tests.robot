*** Settings ***
Documentation  These are some API Tests
Resource  ../Resources/API/Rdocs_API.robot


#pybot -d results/api -t "Test" tests/api_tests.robot

*** Variables ***


*** Test Cases ***
Test
    Rdocs_API.Test