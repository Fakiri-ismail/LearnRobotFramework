*** Settings ***
Documentation    Learn robotFramework : This is my first robotFramework script
Resource    ../../Resources/00-logMessage.resource

*** Variables ***
${var1}     my first
@{list}     one     two     tree
&{dict}     a=1     b=2

*** Keywords ***
Hello
    [Arguments]    ${arg1}
    log to console    ${\n}Hello,
    Log My Full Name

*** Test Cases ***
LOG MESSAGES
    [Documentation]    This is my first test case
    [Tags]    t1
    Hello   ${var1}
    log to console    Second element in the list is : ${list}[1]
    FOR    ${item}  IN  @{list}
        log to console    - ${item}
    END
    log to console    First element in the dict is : ${dict}[a]
