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
${ValorCodeCall}        0

*** Test Cases ***
Verify that a valid user can login to the system
    [Tags]      PruebaExploratoria  Caso001
    [Documentation]
	...  This testcase verified a valid login scenario  ...
    
    Login To The Application [Arguments] ${validUserNameVal} ${validPasswordVal}


Verificar que haga click al boton especifico
    [Documentation]
	...  Este test case verifica que pueda hacer click al boton de entrar a la llamada del code call especifico  ...
    [Tags]          Funcional
    
    Create Call
    Sleep   3s
    #Element Should Be Visible       ${callCreatedSuccessfully}     ${SMALL_RETRY_COUNT}
    Wait Until Element Is Visible   ${callCreatedSuccessfully}
    ${ValorCodeCall}   Get Text   ${callCreatedSuccessfully}
    Log        Code Call copiado es: ${ValorCodeCall}    console=yes
    #Wait Until Element Is Visible   ${enterTheCall}
    #Element Should Be Focused   ${enterTheCall}
    #Set Focus To Element    ${enterTheCall}
    Wait Until Element Is Visible   ${kt-widget4__text}
    #@{nombresDeContenedores}    Get WebElements     ${kt-widget4__item}
    FOR    ${nombreDeContenedor}   IN      ${kt-widget4__item}
       #Wait Until Element Is Visible    ${nombreDeContenedor}   ${LARGE_RETRY_COUNT}
       ${copiaNombreDeContenedor}   Get Text   ${nombreDeContenedor}
       #Log To Console   ${nombreDeContenedor}
       #${nombreDeContenedor}    Catenate    //*[@id="btnAgendaEnterCall"]
       #Page Should Contain Element  ${enterTheCall}     #//*[@id="btnAgendaEnterCall"]   
       Log        ${copiaNombreDeContenedor}    console=yes
       #Wait Until Page Contains     2ZB6PC        # no funca dentro del for
       #Mouse Over   ${nombreDeContenedor}
       #Click Button     ${enterTheCall}
       ${elementCount}         Get Element Count   ${kt-widget4__item}
       Log  ${elementCount}
       #Run Keyword If	'${copiaNombreDeContenedor}' == '${ValorCodeCall}'	Exit For Loop
       #Click Element    ${enterTheCall}
       #Sleep    1s
    END
    Element Text Should Be   xpath=/html/body/div[1]/div[4]/div/div/div/div/div[2]/div[3]/div/p/b     Setembro 29


