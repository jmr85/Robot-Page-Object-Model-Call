*** Variables ***
# Boton Agendar
${btnNewVisitOpenPopUp}          //*[@id="btnNewVisitOpenPopUp"]
${datePickerLocator}    //*[@id="datetime-local"]
# para seleccionar customer
${clientSelect}         //*[@id="demo-simple-select-helper"]
${itemsCustomers}       css=MuiButtonBase-root MuiListItem-root MuiMenuItem-root MuiMenuItem-gutters MuiListItem-gutters MuiListItem-button
${btnNewVisitCreate}              //button[@id='btnNewVisitCreate']/span
${callCreatedSuccessfully}                     xpath=//div[@id='kt_content']/div/div/div/div/div/div[2]/div/div/b
# iconos de status de llamadas
${iconCallNotInitiated}
${iconCallInitiated}    Get Element Attribute   css:fill: orange
${iconCallClosed}  Get Element Attribute   css:fill: green