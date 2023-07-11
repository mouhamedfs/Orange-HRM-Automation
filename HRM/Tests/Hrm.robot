*** Settings ***
Resource           ../Resources/Commun.robot
Resource           ../Data/Data.robot
Resource           ../Resources/HrmLogic.robot
Resource           ../Resources/Pages/AdminLogic.robot
Resource           ../Resources/Pages/Newletter.robot
Resource           ../Resources/Pages/DirectoryPages.robot
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

Newsletter Page Test Cases
    [Tags]      test
    Newletter.NewLetter Page Post        ${textbox}
    Newletter.Get Most Liked Post
    Newletter.Get Most Commented Post

Directory test
    [Tags]      regression
    Connexion       ${INVALID_CREDENTIALS.username}       ${VALID_CREDENTIALS.password}
    DirectoryPages.Search for an specific user
