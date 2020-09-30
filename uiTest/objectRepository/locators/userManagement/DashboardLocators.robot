*** Variables ***
# Aca estan los Locators de /dashboard

# Ejemplo para verificar por consola de chrome 
# Listado de botones Enter Call con el comando $x("aca se le pasa el xpath")
# $x("/html/body/div[1]/div[4]/div/div/div/div/div[2]/div[3]/div/div/div/button")

# Otra manera mas facil de verificar en chrome es despues de abrir la consola y 
# estando en la pestaña de Elements Crl+F y poner el xpath en la caja
# de busqueda

# Boton Agendar
${btnNewVisitOpenPopUp}          //*[@id="btnNewVisitOpenPopUp"]
${datePickerLocator}    //*[@id="datetime-local"]
# para seleccionar customer
${selectHelper}         //*[@id="demo-simple-select-helper"]
# este itemsCustomers lo utilizo para luego contar la cantidad de items que despliega el combo select
#${itemsCustomers}       class=MuiButtonBase-root MuiListItem-root MuiMenuItem-root MuiMenuItem-gutters MuiListItem-gutters MuiListItem-button
${itemsCustomers}       xpath=//*[@id="menu-"]/div/ul/li
${btnNewVisitCreate}              //button[@id='btnNewVisitCreate']/span
${callCreatedSuccessfully}                     xpath=//div[@id='kt_content']/div/div/div/div/div/div[2]/div/div/b 
# Items de llamadas agendadas <div class="kt-widget4__item ">
${kt-widget4__item}               xpath=/html/body/div[1]/div[4]/div/div/div/div/div[2]/div[3]/div/div/div[1]
#lista de <p class="kt-widget4__text">
#en consola chrome se puede verificar este elemento con este comando $x("") en el parametro va el xpath
${kt-widget4__text}               xpath=/html/body/div[1]/div[4]/div/div/div/div/div[2]/div[3]/div/div/div[1]/div[2]/p
# Listado de botones Enter Call $x("/html/body/div[1]/div[4]/div/div/div/div/div[2]/div[3]/div/div/div/button")
${btnAgendaEnterCallList}         xpath=/html/body/div[1]/div[4]/div/div/div/div/div[2]/div[3]/div/div/div/button
#${btnAgendaEnterCallItem}        xpath=/html/body/div[1]/div[4]/div/div/div/div/div[2]/div[3]/div/div[{$item}]/div/button

# Ultimo boton de  la lista (es la llamada agendada mas nueva)
${btnAgendaEnterCallLast}         xpath=/html/body/div[1]/div[4]/div/div/div/div/div[2]/div[3]/div/div[last()]/div/button
# Boton entrar a la llamada
${enterTheCall}         xpath=//*[@id="btnAgendaEnterCall"]
# iconos de status de llamadas
${iconCallNotInitiated}     xpath=/html/body/div[1]/div[4]/div/div/div/div/div[2]/div[3]/div/div/div[1]/div[1]/*[name()="svg"]/*[name()="path"][starts-with(@d, "M3 5v14c0")]
${iconCallInitiated}    xpath=/html/body/div[1]/div[4]/div/div/div/div/div[2]/div[3]/div/div/div[1]/div[1]/*[name()="svg"]/*[name()="path"][starts-with(@d, "M13.05 9.79L10")]
${iconCallClosed}  xpath=/html/body/div[1]/div[4]/div/div/div/div/div[2]/div[3]/div/div/div[1]/div[1]/*[name()="svg"]/*[name()="path"][starts-with(@d, "M12 2C6.48")]
# iconos de status de llamadas (LAST)
${iconCallNotInitiatedLast}     xpath=/html/body/div[1]/div[4]/div/div/div/div/div[2]/div[3]/div/div[last()]/div[1]/div[1]/*[name()="svg"]/*[name()="path"][starts-with(@d, "M3 5v14c0")]
${iconCallInitiatedLast}        xpath=/html/body/div[1]/div[4]/div/div/div/div/div[2]/div[3]/div/div[last()]/div[1]/div[1]/*[name()="svg"]/*[name()="path"][starts-with(@d, "M13.05 9.79L10")]
${iconCallClosedLast}           xpath=/html/body/div[1]/div[4]/div/div/div/div/div[2]/div[3]/div/div[last()]/div[1]/div[1]/*[name()="svg"]/*[name()="path"][starts-with(@d, "M12 2C6.48")]

/html/body/div[1]/div[4]/div/div/div/div/div[2]/div[3]/div/div[last()]/div/button
/html/body/div[1]/div[4]/div/div/div/div/div[2]/div[3]/div/div/div[1]/div[1]/*[name()="svg"]/*[name()="path"][starts-with(@d, "M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm-2 15l-5-5 1.41-1.41L10 14.17l7.59-7.59L19 8l-9 9z")]
/html/body/div[1]/div[4]/div/div/div/div/div[2]/div[3]/div/div[last()]/div[1]/div[1]/*[name()="svg"]/*[name()="path"][starts-with(@d, "M3 5v14c0 1.1.89 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2H5c-1.11 0-2 .9-2 2zm12 4c0 1.66-1.34 3-3 3s-3-1.34-3-3 1.34-3 3-3 3 1.34 3 3zm-9 8c0-2 4-3.1 6-3.1s6 1.1 6 3.1v1H6v-1z")]
*** Keywords ***
Get Button Locator Agendar [Arguments] ${item}
    [Documentation]    
    ...  Obtiene un boton para entrar a la llamada especifico  ...
                                                                              
    ${itemLocator}   Set Variable   xpath=/html/body/div[1]/div[4]/div/div/div/div/div[2]/div[3]/div/div[${item}]/div/button  
    Return from keyword    ${itemLocator} 