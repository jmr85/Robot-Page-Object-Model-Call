*** Settings ***
Resource    ../../locators/userManagement/CreateCallLocators.robot
Resource    ../common/CommonPo.robot
   
Library     SeleniumLibrary

*** Variables ***
${item}         1

*** Keywords ***
Create Call
    Click Element [Arguments] ${btnNewVisitOpenPopUp} ${SMALL_RETRY_COUNT}
    Sleep   1s
    Click Element [Arguments] ${datePickerLocator} ${SMALL_RETRY_COUNT}
    #Click Element [Arguments] ${clientSelect} ${SMALL_RETRY_COUNT}
    Select From Dropdown [Arguments] ${clientSelect} ${item} ${SMALL_RETRY_COUNT}
    Sleep   2s
    Click Element [Arguments] ${btnNewVisitCreate} ${SMALL_RETRY_COUNT} 
    
    
    



    