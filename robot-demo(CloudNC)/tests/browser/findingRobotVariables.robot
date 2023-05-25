*** Settings ***
Library    SeleniumLibrary
Suite Setup     Open Browser    http://www.google.com    Chrome
Test Setup      Input Text    id=APjFqb    robot
Test Teardown   Go To  http://www.google.com
Suite Teardown  Close Browser

*** Variables ***
${WIKIPEDIA}    https://th.wikipedia.org/wiki/%E0%B8%AB%E0%B8%B8%E0%B9%88%E0%B8%99%E0%B8%A2%E0%B8%99%E0%B8%95%E0%B9%8C
${LONGDO}    https://dict.longdo.com/search/ROBOT

*** Test Cases ***
Searching "robot" on Google, the search result should contain Wikipedia
    Press Keys    id=APjFqb    ENTER
    Page Should Contain Link    ${WIKIPEDIA}

Searching "robot" on Google, the search result should contain Longdo Directory
    Press Keys    id=APjFqb    ENTER
    Page Should Contain Link    ${LONGDO}