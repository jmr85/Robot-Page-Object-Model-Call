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
# iconos de status de llamadas
${iconCallNotInitiated}
${iconCallInitiated}    Get Element Attribute   css:fill: orange
${iconCallClosed}  Get Element Attribute   css:fill: green