*** Settings ***
Resource    ../../locators/userManagement/CallLocators.robot
Resource    ../common/CommonPo.robot
   
Library     SeleniumLibrary
Library    FakerLibrary

*** Keywords ***
Call Start
    [Documentation]
	...  Hace click en boton call start  ...

    Click Element [Arguments] ${btnCallStart} ${LARGE_RETRY_COUNT}

Video Cancel Call Popup
    [Documentation]
	...  Hace click en boton rojo de colgar la llamada  ...

    Click Element [Arguments] ${btnVideoCancelCallPopup} ${SMALL_RETRY_COUNT}

Cancel Call Close
    [Documentation]
	...  Sale de la llamada sin cerrarla  ...
    Click Element [Arguments] ${btnCancelCallClose} ${SMALL_RETRY_COUNT}

Write Note Random
    [Arguments]    ${max_chars}
    [Documentation]        
	...  Escribe texto random en el text area de note antes de finalizar la llamada ...

    ${text}=    FakerLibrary.Text  ${max_chars}
    Set Text [Arguments] ${note} ${text} ${SMALL_RETRY_COUNT}    
      
Cancel Call End And Click Bee Receptor
    [Documentation]
	...  Sale y cierra la llamada  ...

    Click Element [Arguments] ${btnCancelCallEnd} ${SMALL_RETRY_COUNT}  
    Wait Until Element Is Visible   ${beeReceptor}
    Click Link  ${beeReceptor}
 
Cancel Call Ignore
    [Documentation]
	...  Opcion de Cancelar (vuelve a la llamada) ...
    
    Click Element [Arguments] ${btnCancelCallIgnore} ${SMALL_RETRY_COUNT}  





    