*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://web.animerco.org/
${browser}    gc
${alias}    anime

*** Keywords ***
Open AnimeRco
    open browser    ${url}    ${browser}    ${alias}

Close AnimeRco
    close browser
