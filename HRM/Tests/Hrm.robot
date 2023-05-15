*** Settings ***
Resource           ../Resources/Commun.robot
Resource           ../Data/Data.robot
Resource           ../Resources/HrmLogic.robot
Resource           Administration/AdminLogic.robot

Test Teardown       Closing Browser

*** Test Cases ***
Connexion Successfull
    [Tags]      valid
    Connexion       ${VALID_CREDENTIALS.username}       ${VALID_CREDENTIALS.password}


Connexion with invalid password
    [Tags]      invalid
    Connexion       ${INVALID_CREDENTIALS.username}       ${INVALID_CREDENTIALS.password}
    Verification Page       ${InvalidElement}

Loggout Successfull
    [Tags]      decon
    Connexion       ${VALID_CREDENTIALS.username}       ${VALID_CREDENTIALS.password}
    Deconnexion

Admin Page Administration
    [Tags]      admin
    Search User into Administration Page        ${USER}
    Add a customer on Admin Page