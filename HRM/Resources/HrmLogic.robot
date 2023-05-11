*** Settings ***

Resource           ../Resources/Commun.robot
Resource           ../Data/Data.robot

*** Keywords ***
Connexion
    [Arguments]     ${USERNAME}         ${PASSWORD}
    Open HRM Browser    ${URL}    ${Browser}
    Click Element    xpath: //*[contains(text(), "Username")]
    input text      name=username       ${USERNAME} 
    input text      password     ${PASSWORD}
    Sleep       3
    Click Element    xpath: /html/body/div/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
    Sleep       3

Verification Page
    [Arguments]    ${Element}
    Page Should Contain     ${Element}