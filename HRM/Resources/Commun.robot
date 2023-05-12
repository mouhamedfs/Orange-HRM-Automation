*** Settings ***
Library             SeleniumLibrary

*** Keywords ***
Open HRM Browser
    [Arguments]    ${URL}    ${Browser}
    open Browser       ${URL}         ${Browser}
    Maximize Browser Window
    Sleep       3

Closing Browser
    close all browsers

Log to console 
    log     This is a log