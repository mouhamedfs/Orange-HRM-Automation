*** Settings ***
Library            SeleniumLibrary
Resource           ../../Resources/Commun.robot
Resource           ../../Data/Data.robot
Resource           ../../Resources/HrmLogic.robot

*** Keywords ***
Search for an specific user
    Wait Until Element Is Visible    xpath: //a[@class="oxd-main-menu-item active"]
    Click Element    xpath: //a[@class="oxd-main-menu-item active"]
    Wait Until Element Is Visible       xpath: //div[@class="oxd-autocomplete-text-input oxd-autocomplete-text-input--active"]//input
    Input Text        xpath: //div[@class="oxd-autocomplete-text-input oxd-autocomplete-text-input--active"]//input     Adalwin
    Wait Until Element Is Visible    xpath: //div[@class="oxd-autocomplete-text-input--after"]
    Click Element    xpath: //div[@class="oxd-autocomplete-text-input--after"]