*** Setting ***

Library    String
Library    FakerLibrary

Documentation    
...		Esta suite testea textos generados automaticamente  ...


*** Test Cases ***
probar generate string
    ${randomString}     Generate Random String  12  [LOWER]
    Log        El string generado es: ${randomString}    console=yes

probar generacion de palabras faker library     
    ${words}=    FakerLibrary.Words
    Log        El string generado es: ${words}    console=yes
probar generacion de palabras con Word de faker library
    ${text}=    FakerLibrary.Word
    Log        El string generado es: ${text}    console=yes

probar generacion de palabras con Text de faker library
    ${texts}=    FakerLibrary.Text  100
    Log        El string generado es: ${texts}    console=yes  