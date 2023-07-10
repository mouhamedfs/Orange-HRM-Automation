*** Settings ***
Library    SeleniumLibrary

Resource           ../../Resources/Commun.robot
Resource           ../../Data/Data.robot
Resource           ../../Resources/HrmLogic.robot

*** Keywords ***

Go to NewLetter Page
    [Arguments]     ${TextBox}
    Connexion       ${VALID_CREDENTIALS.username}       ${VALID_CREDENTIALS.password}
    Click link      xpath=//a[@href="/web/index.php/buzz/viewBuzz"]
    Sleep       3
    input text      class=oxd-buzz-post-input        ${TextBox}
    Sleep       3
    Click Element     type=submit
    Sleep       3

*** Test Cases ***
 Test the app
    [Tags]      test
    Go to NewLetter Page        ${textbox}