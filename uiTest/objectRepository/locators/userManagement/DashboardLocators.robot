*** Variables ***
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
#lista de <p class="kt-widget4__text">
#en consola chrome se puede verificar este elemento con este comando $x("") en el parametro va el xpath
${kt-widget4__text}         xpath=/html/body/div[1]/div[4]/div/div/div/div/div[2]/div[3]/div/div/div[1]/div[2]/p
# Listado de botones Enter Call $x("/html/body/div[1]/div[4]/div/div/div/div/div[2]/div[3]/div/div/div/button")
${enterTheCallList}         xpath=/html/body/div[1]/div[4]/div/div/div/div/div[2]/div[3]/div/div/div/button
# Boton entrar a la llamada
${enterTheCall}         xpath=//*[@id="btnAgendaEnterCall"]
# iconos de status de llamadas
${iconCallNotInitiated}
${iconCallInitiated}    Get Element Attribute   css:fill: orange
${iconCallClosed}  Get Element Attribute   css:fill: green