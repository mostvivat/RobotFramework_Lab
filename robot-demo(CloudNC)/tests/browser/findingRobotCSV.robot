*** Settings ***
Library    SeleniumLibrary
Library                     Collections
Library                     CSVLibrary
Suite Setup     Open Browser    http://www.google.com    Chrome
Test Setup      Input Text    id=APjFqb    robot
Test Teardown   Go To  http://www.google.com
Suite Teardown  Close Browser

*** Test Cases ***
Searching "robot" on Google, the search result should contain Wikipedia
    ${dict}=    read csv file to associative  ./data/data.csv
    Set Suite Variable    ${dict}
    Press Keys    id=APjFqb    ENTER
    Page Should Contain Link    ${dict[0].WIKI}

Searching "robot" on Google, the search result should contain Longdo Directory
    Press Keys    id=APjFqb    ENTER
    Page Should Contain Link    ${dict[0].LONGDO}