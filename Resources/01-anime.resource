*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://dexscreener.com/solana/
${browser}    gc
${alias}    dexscreener

*** Keywords ***
Open DexScreener
    open browser    ${url}    ${browser}    ${alias}

Close DexScreener
    close browser
