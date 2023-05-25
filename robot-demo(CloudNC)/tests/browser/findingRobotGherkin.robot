*** Settings ***
Library    SeleniumLibrary
Suite Teardown  Close Browser

*** Test Cases ***
Searching "robot" on Google, the search result should contain Wikipedia
    Given The User Has Opened Google Webpage
    When The User Inputs "robot" at The Search Field
    And The User Presses the Enter Key
    Then The User Should See the Link    https://th.wikipedia.org/wiki/%E0%B8%AB%E0%B8%B8%E0%B9%88%E0%B8%99%E0%B8%A2%E0%B8%99%E0%B8%95%E0%B9%8C

Searching "robot" on Google, the search result should contain Longdo Directory
    Given The User Has Opened Google Webpage
    When The User Inputs "robot" at The Search Field
    And The User Presses the Enter Key
    Then The User Should See the Link   https://dict.longdo.com/search/ROBOT

*** Keywords ***
The User Has Opened Google Webpage
    Open Browser    http://www.google.com    Chrome

The User Inputs "robot" at The Search Field
    Input Text    id=APjFqb    robot

The User Presses the Enter Key
    Press Keys    id=APjFqb    ENTER

The User Should See the Link
    [Arguments]    ${WEBPAGE}
    Page Should Contain Link    ${WEBPAGE}