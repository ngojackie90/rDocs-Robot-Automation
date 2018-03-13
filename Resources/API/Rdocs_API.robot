*** Settings ***
#Library  RequestsLibrary
Library  Selenium2Library
Library  Collections
Library  OperatingSystem
Library  HttpLibrary.HTTP

*** Variables ***


*** Keywords ***
Test
    Create Http Context  api.stage.myrdocs.com  http
    #Post  /api/V1/Identity/Ikey
    Set Request Header    apiKey  F16F4A4F-DDD6-44F4-87B5-1976B6FA9073
    Set Request Header  Content-Type  application/json
    ${result}=  Set Json Value  {"userName": "jngo"  "password": "aaaa"  "externalId": ""  "siteName": "abcrealty"}
    ${data}=  Create List
    Post  /api/V1/Identity/Ikey
    Log Response Body

Test2
    Create Http Context  api.stage.myrdocs.com  http
    #Post  /api/V1/Identity/Ikey
    Set Request Header    apiKey  F16F4A4F-DDD6-44F4-87B5-1976B6FA9073  #Content-Type=application/json
    Set Request Header  siteKey  3cb99eeda6dc8930cde75b396dd2f1e8
    #Set Request Body  userName=jngo&password=aaaa&externalId=&siteName=abcrealty
    Post  /api/V1/Tile/a6beff4b849b3caa86bef715c6a38da7
    Show Response Body In Browser

