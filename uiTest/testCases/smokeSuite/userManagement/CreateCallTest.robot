*** Setting ***
Resource   ../../../objectRepository/pageObjects/userManagement/LoginPo.robot
Resource   ../../../objectRepository/pageObjects/userManagement/DashboardPo.robot
Resource   ../../../objectRepository/pageObjects/common/CommonPo.robot

Library    SeleniumLibrary

Documentation    
...		This suite includes login smoke tests  ...

Suite Setup     Open Browser To Login Page
Suite Teardown  Close Browser


*** Variables ***
${validUserNameVal}     ${USERNAME}
${validPasswordVal}     ${PASSWORD}
${invalidUserNameVal}   pepe@mailcualquiera.com
${invalidPasswordVal}   test@12


*** Test Cases ***
Verify that a valid user can login to the system
    [Documentation]
	...  This testcase verified a valid login scenario  ...
    
    Login To The Application [Arguments] ${validUserNameVal} ${validPasswordVal}

    
Verificar que se haya creado creado la llamada exitosamente
    [Documentation]
	...  Este test case verifica que pueda levantar el data spciker  ...
    [Tags]          Funcional
    Create Call
    Sleep   3s
    #Element Should Be Visible       ${callCreatedSuccessfully}     ${SMALL_RETRY_COUNT}
    Wait Until Element Is Visible   ${callCreatedSuccessfully}
    
    
