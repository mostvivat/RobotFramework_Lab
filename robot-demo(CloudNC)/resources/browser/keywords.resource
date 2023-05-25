*** Settings ***
Library    SeleniumLibrary
Resource    variables.resource

*** Keywords ***
Open Google
    Open Browser    ${HOMEPAGE}    ${BROWSER}