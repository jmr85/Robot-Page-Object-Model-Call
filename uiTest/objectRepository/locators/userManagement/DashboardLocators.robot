[Documentation]
...  Aca estan los Locators de /dashboard  ...

*** Variables ***
# una manera de verificar los locators en chrome es despues de abrir la consola y 
# estando en la pestaña de Elements Crl+F y poner el xpath en la caja de busqueda

# Boton Agendar
${btnNewVisitOpenPopUp}          //*[@id="btnNewVisitOpenPopUp"]
${datePickerLocator}    //*[@id="datetime-local"]
# para seleccionar customer
${selectHelper}         //*[@id="demo-simple-select-helper"]
# este itemsCustomers lo utilizo para luego contar la cantidad de items que despliega el combo select
#${itemsCustomers}       class=MuiButtonBase-root MuiListItem-root MuiMenuItem-root MuiMenuItem-gutters MuiListItem-gutters MuiListItem-button
${itemsCustomers}       xpath=//*[@id="menu-"]/div/ul/li
${btnNewVisitCreate}              //*[@id='btnNewVisitCreate']
${callScheduledCorrectly}                     xpath=//*[contains(@style,'background-color: green')]/div/b 
# Items de llamadas agendadas <div class="kt-widget4__item ">
${kt-widget4__item}               xpath=/html/body/div[1]/div[4]/div/div/div/div/div[2]/div[3]/div/div/div[1]
#lista de <p class="kt-widget4__text">
#en consola chrome se puede verificar este elemento con este comando $x("") en el parametro va el xpath
${kt-widget4__text}               xpath=/html/body/div[1]/div[4]/div/div/div/div/div[2]/div[3]/div/div/div[1]/div[2]/p
# Listado de botones Enter Call $x("/html/body/div[1]/div[4]/div/div/div/div/div[2]/div[3]/div/div/div/button")
${btnAgendaEnterCallList}         xpath=//*[@id="btnAgendaEnterCall"]    
#${btnAgendaEnterCallItem}        xpath=/html/body/div[1]/div[4]/div/div/div/div/div[2]/div[3]/div/div[{$item}]/div/button

# Ultimo boton de  la lista (es la llamada agendada mas nueva)
${btnAgendaEnterCallLast}         xpath=(//*[@id="btnAgendaEnterCall"])[last()]
# Boton entrar a la llamada
${enterTheCall}         xpath=//*[@id="btnAgendaEnterCall"]
# iconos de status de llamadas
${iconCallNotInitiated}     //*[@class='MuiSvgIcon-root MuiSvgIcon-fontSizeLarge']/*[name()="path"][starts-with(@d, "M3 5v14c0")]
${iconCallInitiated}    //*[@class='MuiSvgIcon-root MuiSvgIcon-fontSizeLarge']/*[name()="path"][starts-with(@d, "M13.05 9.79L10")]
${iconCallClosed}  //*[@class='MuiSvgIcon-root MuiSvgIcon-fontSizeLarge']/*[name()="path"][starts-with(@d, "M12 2C6.47")]
# iconos de status de llamadas obtiene el ultimo item de la lista de llamadas agendadas
${iconCallNotInitiatedLast}     xpath=(//*[@class='MuiSvgIcon-root MuiSvgIcon-fontSizeLarge']/*[name()="path"][starts-with(@d, "M3 5v14c0")])[last()]
${iconCallInitiatedLast}    xpath=(//*[@class='MuiSvgIcon-root MuiSvgIcon-fontSizeLarge']/*[name()="path"][starts-with(@d, "M13.05 9.79L10")])[last()]
${iconCallClosedLast}   xpath=(//*[@class='MuiSvgIcon-root MuiSvgIcon-fontSizeLarge']/*[name()="path"][starts-with(@d, "M12 2C6.47")])[last()]


*** Keywords ***
Get ButtonAgendaEnterCall By Call Code
    [Arguments]    ${call_code}
    [Documentation]    
    ...  Obtiene un boton para entrar a la llamada especifico por codigo de llamada  ...
                                                                              
    ${buttonLocator}   Set Variable   xpath=//*[@class='kt-widget4__text '][text()[contains(.,'${call_code}')]]/ancestor::div[@class='kt-widget4__info ']/following-sibling::button[@id='btnAgendaEnterCall']  
    Return from keyword    ${buttonLocator} 

Get Icon Status By Call Code And Locator
    [Arguments]    ${call_code}     ${locator}
    [Documentation]    
    ...  Recibe parametros call code y el xpath del icon status  ...
                                                                              
    ${iconStatus}   Set Variable   xpath=//*[@class='kt-widget4__text '][text()[contains(.,'${call_code}')]]/ancestor::div[@class='kt-widget4__info ']/preceding-sibling::div[@class='kt-widget4__pic kt-widget4__pic--pic ']${locator}
    Return from keyword    ${iconStatus} 


