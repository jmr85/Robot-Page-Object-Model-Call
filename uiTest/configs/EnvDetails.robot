*** Variables ***
# Environment Details
${DEV_ENV}             closeupcalldev.azureedge.net
#${QA_ENV}              
#${UAT_ENV}             
#${PROD_ENV}            
#${ENV}                 ${QA_ENV}

${REGISTRATION URL}      https://${DEV_ENV}/auth/registration
${LOGIN URL}      https://${DEV_ENV}/auth/login
${DASHBOARD URL}    https://${DEV_ENV}/dashboard
${ERROR URL}      https://${DEV_ENV}/auth/registration