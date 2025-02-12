*** Settings ***
Documentation   This is the resources file

*** Variables ***
${my_first_name}  Ismail
${my_last_name}  FAKIRI

*** Keywords ***
Log My Full Name
    log to console    My first name is : ${my_first_name}
    log to console    My last name is : ${my_last_name}