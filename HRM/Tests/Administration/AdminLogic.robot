*** Settings ***

Resource           ../../Resources/Commun.robot
Resource           ../../Data/Data.robot
Resource           ../../Resources/HrmLogic.robot

*** Keywords ***

Search User into Administration Page
    [Arguments]     ${USER}
    Connexion       ${VALID_CREDENTIALS.username}       ${VALID_CREDENTIALS.password}
    Click link      xpath=//a[@href="/web/index.php/admin/viewAdminModule"]
    Sleep       3
    input text      xpath: //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[1]/div/div[2]/input        ${USER}
    Sleep       3
    Click Element   xpath: //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[2]/button[2]
    Sleep       5

*** Test Cases ***
Test
    Search User into Administration Page        ${USER}
    Verification Page       ${USER}