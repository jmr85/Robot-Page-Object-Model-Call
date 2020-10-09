*** Setting ***
Resource   ../../objectRepository/pageObjects/userManagement/AuthRegistration.robot
Resource   ../../objectRepository/pageObjects/userManagement/DashboardPo.robot
Resource   ../../objectRepository/locators/userManagement/DashboardLocators.robot
Resource   ../../objectRepository/pageObjects/userManagement/CallPo.robot
Resource   ../../objectRepository/pageObjects/common/CommonPo.robot


Library    SeleniumLibrary

Documentation    
...		Esta suite testea los iconos de status de llamada  ...


Suite Setup     Open Browser To Login Page  # se ejecutara antes del inicio de la suite de pruebas o la ejecucion del caso de prueba
Suite Teardown  Close Browser   #se ejecutara después del inicio de la ejecución del conjunto de pruebas o del caso de prueba

*** Keywords ***
#Set Selenium Speed      2s

*** Variables ***
${validUserNameVal}     ${USERNAME}
${validPasswordVal}     ${PASSWORD}

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
    Wait Until Element Is Visible   ${callScheduledCorrectly}      #verifica que aparezca el popup de que se creo exitosamente
    ${ValorCodeCall}        Get Text   ${callScheduledCorrectly}
    Set Global Variable      ${ValorCodeCall} 
    Log        Code Call generado es: ${ValorCodeCall}    console=yes
    ${iconCallStatus}         Get Icon Status By Call Code And Locator       ${ValorCodeCall}        ${iconCallNotInitiated}
    Wait Until Element Is Visible   ${iconCallStatus}
    Capture Element Screenshot  ${iconCallNotInitiatedLast}

22811 Verify initiated call status icon 
    [Documentation]
	...  Verifica que se visualice icono estatus de llamada iniciada  ...
    [Tags]          22811
    
    Enter The Call  ${ValorCodeCall}
    Call Start
    Sleep   3s
    Video Cancel Call Popup
    Sleep   0.5s
    Cancel Call Close
    Sleep   1s
    ${iconCallStatus}         Get Icon Status By Call Code And Locator       ${ValorCodeCall}        ${iconCallInitiated}
    Wait Until Element Is Visible   ${iconCallStatus}
    Capture Element Screenshot  ${iconCallInitiatedLast}


22812 Verify closed call status icon 
    [Documentation]
	...  Verificar el icono de status despues de cerrar la llamada  ...
    [Tags]          22812
    
    Enter The Call  ${ValorCodeCall}
    Call Start
    Sleep   3s
    Video Cancel Call Popup
    Sleep   1s
    Write Note Random           120
    Sleep   1s
    Cancel Call End     #cancela y cierra la llamada
    Sleep   1s
    ${iconCallStatus}         Get Icon Status By Call Code And Locator       ${ValorCodeCall}        ${iconCallClosed}
    Wait Until Element Is Visible   ${iconCallStatus}
    Capture Element Screenshot  ${iconCallClosedLast}