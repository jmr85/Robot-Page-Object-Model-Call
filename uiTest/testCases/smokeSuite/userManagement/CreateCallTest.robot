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
    [Tags]      PruebaExploratoria  Caso001
    [Documentation]
	...  This testcase verified a valid login scenario  ...
    
    Login To The Application [Arguments] ${validUserNameVal} ${validPasswordVal}

Verificar que se vea el elemento
    Sleep   3s
    Element Should Be Visible   xpath=/html/body/div[1]/div[4]/div/div/div/div/div[1]/div[1]/h3

Verificar que se vea el texto Visitas
    [Tags]      PruebaExploratoria  Caso004
    
    Element Should Contain      xpath=/html/body/div[1]/div[4]/div/div/div/div/div[1]/div[1]/h3  visitas    ignore_case=true

# Verificar que se haya creado creado la llamada exitosamente
#     [Documentation]
# 	...  Este test case verifica que pueda levantar el data spciker  ...
#     [Tags]          Funcional
#     Create Call
#     Sleep   3s
#     #Element Should Be Visible       ${callCreatedSuccessfully}     ${SMALL_RETRY_COUNT}
#     Wait Until Element Is Visible   ${callCreatedSuccessfully}
    
#Verificar que se peuda entrar a una llamada OK
#    Enter The Call

