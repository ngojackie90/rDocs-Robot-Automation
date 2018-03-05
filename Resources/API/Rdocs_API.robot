*** Settings ***
Library  RequestsLibrary
Library  Selenium2Library
Library  Collections
Library  OperatingSystem

*** Variables ***


*** Keywords ***
Check rDocs Username
    #Create the Session
    Create Session  my_rDocs  http://api.stage.myrdocs.com
    &{data}=  Create Dictionary    "userName"= "jngo"  "password"= "aaaa"  "externalId"= ""  "siteName"= "abcrealty"
    &{headers}=  Create Dictionary  Content-Type=application/json  apiKey=F16F4A4F-DDD6-44F4-87B5-1976B6FA9073
    ${resp}=  Post Request  my_rDocs  /post  data=${data}  headers=${headers}
    Dictionary Should Contain Value  ${resp.json()['form']}  218d459bb4f34ccb31b628ee66902e6b


Load Json
    ${json}=  Get File  /Users/Work/Desktop/api.stage.myrdocs.com.postman_collection.json
    ${object}=  Evaluate  json.loads('''${json}''')  json
    Should Contain  ${object["owner"]}  3168102