*** Settings ***
Resource           ../Resources/Commun.robot
Resource           ../Data/Data.robot
Resource           ../Resources/HrmLogic.robot

Test Teardown       Closing Browser

*** Test Cases ***
Connexion Successfull
    [Tags]      valid
    Connexion       ${VALID_CREDENTIALS.username}       ${VALID_CREDENTIALS.password}


Connexion with invalid password
    [Tags]      invalid
    Connexion       ${INVALID_CREDENTIALS.username}       ${INVALID_CREDENTIALS.password}
    Verification Page       ${InvalidElement}