*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary

*** Variables ***
${ALIAS}        chuck
${BASE URL}     https://api.chucknorris.io/
${URL}          jokes/random

*** Keywords ***
Create Session Chuck
    Create Session    ${ALIAS}      ${BASE URL}

Display Content
    ${resp_json}     GET On Session  ${ALIAS}   ${URL}
    ${value}    get value from json    ${resp_json.json()}    value
    log to console    ${value}

*** Test Cases ***
Test1
    [Tags]    s1
    Create Session Chuck
    Display Content