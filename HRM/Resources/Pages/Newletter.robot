*** Settings ***
Library    SeleniumLibrary

Resource           ../../Resources/Commun.robot
Resource           ../../Data/Data.robot
Resource           ../../Resources/HrmLogic.robot

*** Keywords ***

NewLetter Page Post
    [Arguments]     ${TextBox}
    Connexion       ${VALID_CREDENTIALS.username}       ${VALID_CREDENTIALS.password}
    Click link      xpath=//a[@href="/web/index.php/buzz/viewBuzz"]
    Wait Until Element Is Visible    class=oxd-buzz-post-input
    input text      class=oxd-buzz-post-input        ${TextBox}
    Click Element     xpath: //button[@type="submit"]
    Wait Until Page Contains    ${TextBox}
    Deconnexion

Get Most Liked Post
    Connexion       ${VALID_CREDENTIALS.username}       ${VALID_CREDENTIALS.password}
    Click link      xpath=//a[@href="/web/index.php/buzz/viewBuzz"]
    Wait Until Element Is Visible       xpath: //div[@class="orangehrm-post-filters"]//child::button[2]
    Click Element    xpath: //div[@class="orangehrm-post-filters"]//child::button[2]
    Deconnexion

Get Most Commented Post
    Connexion       ${VALID_CREDENTIALS.username}       ${VALID_CREDENTIALS.password}
    Click link      xpath=//a[@href="/web/index.php/buzz/viewBuzz"]
    Wait Until Element Is Visible       xpath: //div[@class="orangehrm-post-filters"]//child::button[3]
    Click Element    xpath: //div[@class="orangehrm-post-filters"]//child::button[3]
    Deconnexion

