*** Settings ***
Library         ../Resources/Commun.robot
Resource           ../Data/Data.robot

Test Setup              Commun.Open HRM Browser     ${URL}    ${Browser}
Test Teardown           Commun.Closing Browser