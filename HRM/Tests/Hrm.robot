*** Settings ***
Resource           ../Resources/Commun.robot
Resource           ../Data/Data.robot
Resource           ../Resources/HrmLogic.robot
Resource           ../Resources/Pages/AdminLogic.robot
*** Test Cases ***
Connexion Successfull
    [Tags]      valid
    Connexion       ${VALID_CREDENTIALS.username}       ${VALID_CREDENTIALS.password}
