*** Settings ***
Resource    ../../locators/userManagement/DashboardLocators.robot
Resource    ../common/CommonPo.robot
   
Library     SeleniumLibrary

*** Variables ***
${item}         1

*** Keywords ***
Get Random Item [Arguments] ${items}
    [Documentation]    
    ...  Cuenta los items que tiene el Dropdow y luego selecciona uno al azar  ...
    Wait Until Page Contains Element    ${items}
    ${countItemsCustomers}  Get Element Count   ${items}
    Log ${countItemsCustomers} 
    ${ran int}  Evaluate    random.randint(1, ${countItemsCustomers})   random 
    Return from keyword ${ran int}

Create Call
    Click Element [Arguments] ${btnNewVisitOpenPopUp} ${SMALL_RETRY_COUNT}
    Sleep   1s
    Click Element [Arguments] ${datePickerLocator} ${SMALL_RETRY_COUNT}
    #Click Element [Arguments] ${clientSelect} ${SMALL_RETRY_COUNT}
    ${item} Get Random Item    ${itemsCustomers}
    Select From Dropdown [Arguments] ${clientSelect} ${item} ${SMALL_RETRY_COUNT}
    Sleep   2s
    Click Element [Arguments] ${btnNewVisitCreate} ${SMALL_RETRY_COUNT} 
    
    




    