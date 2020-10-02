*** Setting ***
Resource   ../../../objectRepository/pageObjects/userManagement/AuthRegistration.robot
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
${ValorCodeCall}        0

*** Test Cases ***
Verify that a valid user can login to the system
    [Tags]      PruebaExploratoria  Caso001
    [Documentation]
	...  This testcase verified a valid login scenario  ...
    
    Login To The Application [Arguments] ${validUserNameVal} ${validPasswordVal}

Verificar que se vea el elemento
    Sleep   3s
    Element Should Be Visible   xpath=/html/body/div[1]/div[4]/div/div/div/div/div[1]/div[1]/h3     ${SMALL_RETRY_COUNT}

Verificar que se vea el texto Visitas
    [Tags]      PruebaExploratoria  Caso004
    
    Element Should Contain      xpath=/html/body/div[1]/div[4]/div/div/div/div/div[1]/div[1]/h3  visitas    ignore_case=true

Verificar que se haya creado creado la llamada exitosamente
    [Documentation]
	...  Este test case verifica que pueda levantar el data spciker  ...
    [Tags]          Funcional
    Create Call
    Sleep   3s
    #Element Should Be Visible       ${callCreatedSuccessfully}     ${SMALL_RETRY_COUNT}
    Wait Until Element Is Visible   ${callCreatedSuccessfully}
    ${ValorCodeCall}   Get Text   ${callCreatedSuccessfully}
    Log        El texto copiado es: ${ValorCodeCall}    console=yes

    Sleep    2s
    Wait Until Element Is Visible   ${kt-widget4__text}
    @{nombresDeContenedores}    Get WebElements     ${kt-widget4__item}
    FOR    ${nombreDeContenedor}   IN      @{nombresDeContenedores}
       Wait Until Element Is Visible    ${nombreDeContenedor}   ${LARGE_RETRY_COUNT}
       ${copiaNombreDeContenedor}   Get Text   ${nombreDeContenedor}
       Log To Console   ${nombreDeContenedor}
       #${nombreDeContenedor}    Catenate    //*[@id="btnAgendaEnterCall"]
       Page Should Contain Element  ${enterTheCall}     #//*[@id="btnAgendaEnterCall"]   
       Log        El texto copiado es: ${copiaNombreDeContenedor}    console=yes
       Log        Valor code call: ${ValorCodeCall}     console=yes
       #Run Keyword If	'${copiaNombreDeContenedor}' == '${ValorCodeCall}'	Exit For Loop
       Click Element    ${enterTheCall}
       Sleep    1s
    END
    Sleep   0.5s
    Set Focus To Element    ${nombreDeContenedor}
    Log        Focus: ${nombreDeContenedor}     console=yes
    Sleep   1s
    Set Focus To Element    ${enterTheCall}
    ${boton}    Get Button Locator Agendar [Arguments] 3
    Click Element   ${boton}
    #Enter The Call

    
# Verificar textos de cada Item llamada agendada
#     Sleep    3s     #Si se deja menos de tres segundos solo me itera los primeros elementos
#     Wait Until Element Is Visible   ${kt-widget4__text}
#     @{nombresDeContenedores}    Get WebElements     ${kt-widget4__text}
#     FOR    ${nombreDeContenedor}   IN      @{nombresDeContenedores}
#        #Wait Until Element Is Visible    ${nombreDeContenedor}   ${LARGE_RETRY_COUNT}
#        ${copiaNombreDeContenedor}   Get Text   ${nombreDeContenedor}
#        Log        El texto copiado es: ${copiaNombreDeContenedor}    console=yes
#        Log        Valor code call: ${ValorCodeCall}     console=yes
#     END
#Verificar que se peuda entrar a una llamada OK
#    Enter The Call

