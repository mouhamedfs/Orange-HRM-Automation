*** Settings ***
Library    SeleniumLibrary

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

Add a customer on Admin Page
    Connexion       ${VALID_CREDENTIALS.username}       ${VALID_CREDENTIALS.password}
    Click link      xpath=//a[@href="/web/index.php/admin/viewAdminModule"]
    Sleep       2
    Click Element   xpath: //*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div[1]/button
    Sleep       2
    Click Element   xpath: //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[1]/div/div[2]/div/div/div[2]/i
    Sleep       2
    Click Element    xpath: //*[contains(text(), "Admin")]
    Sleep       2
    Click Element   xpath: //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[3]/div/div[2]/div/div/div[2]/i
    Sleep       2
    Click Element    xpath: //*[contains(text(), "Enabled")]
    Sleep       5
    input text      xpath: //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[4]/div/div[2]/input        ${USER_ID}
    Sleep       2
    input text      xpath: //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[2]/div/div[1]/div/div[2]/input        ${PASSWORD}
    Sleep       2
    input text      xpath: //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[2]/div/div[2]/div/div[2]/input        ${PASSWORD}
    Sleep       2
    input text      xpath: //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[2]/div/div[2]/div/div/input      ${ROLE}
    Sleep       2
    Click Element   xpath: //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[3]/button[2]
    Sleep       2