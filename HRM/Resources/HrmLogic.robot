*** Settings ***

Resource           ../Resources/Commun.robot
Resource           ../Data/Data.robot

*** Keywords ***
Connexion
    [Arguments]     ${USERNAME}         ${PASSWORD}
    Click Element    xpath: //*[contains(text(), "Username")]
    input text      name=username       ${USERNAME} 
    input text      password     ${PASSWORD}
    Sleep       3
    Click Element    xpath: //button[@type='submit']
    Sleep       3

Verification Page
    [Arguments]    ${Element}
    Page Should Contain     ${Element}

Deconnexion
    Click Element       class=oxd-userdropdown-name
    Click link          Logout
    Sleep       3