*** Settings ***
Library    SeleniumLibrary
Test Setup    Open web site     ${base_url}    ${browser}
Test Teardown    Close web site


*** Variables ***
${base_url}     http://www.qualifiez.fr/monPrestashop2/prestashop/index.php
${browser}      chrome


*** Keywords ***
Open web site
    [Arguments]    ${url}   ${browser}
    open browser    ${url}   ${browser}

Close web site
    close browser

Search For
    [Arguments]    ${text}
    wait until element is visible    name:s
    input text    name:s    ${text}
    press keys   name:s  RETURN

Check
    [Arguments]    ${selector}   ${text}
    wait until element is visible    ${selector}
    element text should be  ${selector}    ${text}

Check Elements
    [Arguments]    ${selector}    ${text}
    @{elements}    get webelements    ${selector}
    FOR    ${elem}    IN    @{elements}
        element should contain    ${elem}    ${text}
    END

*** Test Cases ***
Test Search For Item
    [Tags]    w1
    Search For    MUG
    Check    css:.col-lg-5 > p      Il y a 5 produits.

Test Search For Empty
    [Tags]    w2
    Search For    ${EMPTY}
    CHECK   css:#product-search-no-matches      Aucun produit ne correspond à votre recherche

Test Search
    [Tags]    w3
    Search For    Coussin
    Check Elements    //*[@id="js-product-list"]/div[1]/div/article/div/div[2]/h2/a    Coussin
