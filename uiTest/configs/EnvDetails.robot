*** Variables ***
# Environment Details
${DEV_ENV}             closeupcalldev.azureedge.net
#${QA_ENV}              
#${UAT_ENV}             
#${PROD_ENV}            
#${ENV}                 ${QA_ENV}

${LOGIN URL}      https://${DEV_ENV}/auth/registration
${WELCOME URL}    https://${DEV_ENV}/dashboard
${ERROR URL}      https://${DEV_ENV}/auth/registration