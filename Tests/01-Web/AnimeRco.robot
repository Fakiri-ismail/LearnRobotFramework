*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/01-anime.resource
Test Setup    Open DexScreener

*** Test Cases ***
Test1
    [Tags]    dex
    log to console    Done