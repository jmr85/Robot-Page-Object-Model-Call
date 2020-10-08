*** Setting ***
Resource   ../../objectRepository/pageObjects/userManagement/AuthRegistration.robot
Resource   ../../objectRepository/pageObjects/userManagement/DashboardPo.robot
Resource   ../../objectRepository/pageObjects/userManagement/CallPo.robot
Resource   ../../objectRepository/pageObjects/common/CommonPo.robot


Library    SeleniumLibrary

Documentation    
...		Esta suite testea los iconos de status de llamada  ...


Suite Setup     Open Browser To Login Page  # se ejecutara antes del inicio de la suite de pruebas o la ejecucion del caso de prueba
Suite Teardown  Close Browser   #se ejecutara después del inicio de la ejecución del conjunto de pruebas o del caso de prueba

*** Keywords ***
Set Selenium Speed      5s

*** Variables ***
${validUserNameVal}     ${USERNAME}
${validPasswordVal}     ${PASSWORD}
${ValorCodeCall}        0

*** Test Cases ***
Verify that a valid user can login to the system
    [Tags]      login user
    [Documentation]
	...  This testcase verified a valid login scenario  ...
    
    Login To The Application [Arguments] ${validUserNameVal} ${validPasswordVal}


22810 Verify call status icon without starting
    [Documentation]
	...  Verificar el icono de status de llamada sin iniciar  ...
    [Tags]          22810
    
    Create Call
    Sleep   2s
    Wait Until Element Is Visible   ${callCreatedSuccessfully}      #verifica que aparezca el popup de que se creo exitosamente
    ${ValorCodeCall}   Get Text   ${callCreatedSuccessfully}
    Log        Code Call generado es: ${ValorCodeCall}    console=yes
    
    Wait Until Element Is Visible   ${iconCallNotInitiatedLast}     #se ubica en el ultimo item agendado y verifica el icono de llamada NO iniciada
    Capture Element Screenshot  ${iconCallNotInitiatedLast}

22811 Verify initiated call status icon 
    [Documentation]
	...  Verifica que se visualice icono estatus de llamada iniciada  ...
    [Tags]          22811
    
    Click Element [Arguments] ${btnAgendaEnterCallLast} ${SMALL_RETRY_COUNT}   #se ubica en el ultimo item agendado y entra a la llamada
    Call Start
    Sleep   3s
    Video Cancel Call Popup
    Sleep   0.5s
    Cancel Call Close
    Sleep   1s
    Wait Until Element Is Visible   ${iconCallInitiatedLast}    #se ubica en el ultimo item agendado y verifica el icono de llamada iniciada
    Capture Element Screenshot  ${iconCallInitiatedLast}


22812 Verify closed call status icon 
    [Documentation]
	...  Verificar el icono de status despues de cerrar la llamada  ...
    [Tags]          22812
    
    Click Element [Arguments] ${btnAgendaEnterCallLast} ${SMALL_RETRY_COUNT}   #se ubica en el ultimo item agendado y entra a la llamada
    Call Start
    Sleep   3s
    Video Cancel Call Popup
    Sleep   1s
    Write Note Random           120
    Sleep   1s
    Cancel Call End And Click Bee Receptor
    Sleep   1s
    Wait Until Element Is Visible   ${iconCallClosedLast}    #se ubica en el ultimo item agendado y verifica el icono de llamada cerrada
    Capture Element Screenshot  ${iconCallClosedLast}