*** Settings ***
Resource    ../../locators/userManagement/DashboardLocators.robot
Resource    ../common/CommonPo.robot
   
Library     SeleniumLibrary



*** Keywords ***
Create Call
    Click Element [Arguments] ${btnNewVisitOpenPopUp} ${SMALL_RETRY_COUNT}
    Sleep   1s
    #Click Element [Arguments] ${datePickerLocator} ${SMALL_RETRY_COUNT}
    #Click Element [Arguments] ${clientSelect} ${SMALL_RETRY_COUNT}
    Sleep   1s
    #${item}    Get Random Item [Arguments] ${itemsCustomers} ${SMALL_RETRY_COUNT}
    #Log     Valor item: ${item}  DEBUG
    #Select From Dropdown [Arguments] ${selectHelper} ${item} ${SMALL_RETRY_COUNT}
    Select From Dropdown And Click Element Random [Arguments] ${selectHelper} ${itemsCustomers} ${SMALL_RETRY_COUNT}
    Sleep   2s
    Click Element [Arguments] ${btnNewVisitCreate} ${SMALL_RETRY_COUNT} 

Enter The Call
    [Arguments]    ${call_code}
    [Documentation]        
	...  Va hacer click sobre el boton id=btnAgendaEnterCall con un cod call especifico...
    ${button}   Get ButtonAgendaEnterCall By Call Code  ${call_code}
    Click Element [Arguments] ${button} ${SMALL_RETRY_COUNT}




    