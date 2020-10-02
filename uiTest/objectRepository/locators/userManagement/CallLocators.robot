*** Variables ***
# Aca estan los Locators de la llamada desde el boton call start

# Boton para comenzar la llamada
${btnCallStart}                    xpath=//*[@id="btnCallStart"]
# boton rojo para colgar la llamada
${btnVideoCancelCallPopup}         xpath=//*[@id="btnVideoCancelCallPopup"]
# Sale de la llamada sin cerrarla
${btnCancelCallClose}              xpath=//*[@id="btnCancelCallClose"]
# Sale y cierra la llamada
${btnCancelCallEnd}                xpath=//*[@id="btnCancelCallEnd"]
# Opcion de Cancelar
${btnCancelCallIgnore}             xpath=//*[@id="btnCancelCallIgnore"]
${beeReceptor}                     xpath=/html/body/div[8]/div[3]/div/div[2]/div[2]/a 
${note}                            xpath=/html/body/div[7]/div[3]/div/div[2]/p[2]/textarea                           