*** Settings ***
Documentation    This is my first test case
Library    OperatingSystem
Resource    ../Resources/resources.robot

*** Variables ***
${var1}     my first
@{list}     one     two     tree
&{dict}     a=1     b=2

*** Keywords ***
Hello
    [Arguments]    ${arg1}
    log to console    ${\n}Hello, this is ${arg1} test case

*** Test Cases ***
LOG MESSAGE
    [Documentation]    Learn robot framework
    [Tags]    f1
    Hello   ${var1}
    Log My Full Name
    log to console    Second element in the list is : ${list}[1]
    FOR    ${item}  IN  @{list}
        log to console    ${item}
    END
    log to console    First element in the dict is : ${dict}[a]
