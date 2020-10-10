[Documentation]
...  Aca estan los Locators de /auth/login  ...

*** Variables ***
${loginPageLogo}            xpath=//*[@id="kt_login"]/div/div[1]/div[1]/a/img
${emailTextBox}             name=email
${callcodeTextBox}          name=callcode
${loginButton}              id=kt_login_signin_submit
${acessoAdministrativo}     id=btnLoginGoToRegistration     # link que va a auth/registration
${btnForgotPassword}        id=btnForgotPassword
${versionCloseAppCall}      id=kt_login_version
${login_logo}               //*[@class='kt-login__logo']/img
${login_logo_headerForm}    class=kt-login__headerForm--logo-centered
${login_title_form}         class=kt-login__title
${login_copyright}          class=kt-login__copyright