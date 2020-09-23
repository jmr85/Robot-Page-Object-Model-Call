*** Variables ***
${homePageLogo}                          //*[@id="kt_aside_brand"]/div[1]/div/img

# Success Notification Toast Message
${toastMessage}                          xpath=//div[@ng-class='config.title'][@class='ng-binding toast-title']

# Page Loader
${pageLoader}                            xpath=//div[@id='cui_blocker'][@class='loader-overlay loaded']
${listLoader}                            xpath=//div[@id='icon_device_spinner'][@ng-show='vm.loadData']

# Modal
${modal}                                 css=div.modal-backdrop 

# Page Heading
${pageTitleLabel}                        xpath=//h2[@class='title_block']

# Date Picker Elements (podria usarlo para las presentaciones)
#${datePickerCurrentMonthYearElement}     xpath=//button[@ng-click='toggleMode()']
#${datePickerPreviousButton}              xpath=//tr//th[1]//button[1]
#${datePickerNextButton}                  xpath=//tr//th[3]//button[1]

# User Profile
${userProfileNameLabel}                  //*[@id="kt_header"]/div[3]/div[2]/div[2]/div/div[2]/div[2]/div[1]
# Header Top Bar
${userProfileTopBar}                     //*[@id="kt_header"]/div[3]/div[2]/div[1]/div/span
# Signout Elements
${signOutLink}                           id=btnSignOut


*** Keywords ***
Get Check Box Locator By Name [Arguments] ${checkBoxLabelVal}
    [Documentation]
	...  Get check box locator by name  ...
    
    ${checkBoxLocator}   Set Variable   xpath=//*[text()='${checkBoxLabelVal}']/preceding::input[1]
    Return from keyword    ${checkBoxLocator}
    

Get Radio Button Locator By Name [Arguments] ${radioButtonLabelVal}
    [Documentation]
	...  Get radio button locator by name  ...

    ${radioButtonLocator}   Set Variable   xpath=//*[contains(text(), '${radioButtonLabelVal}')]/preceding::input[1]
    Return from keyword    ${radioButtonLocator}
    
    
Get Option Locator By Name From Dropdown [Arguments] ${text}
    [Documentation]    
    ...  Get option locator from a dropdown  ...
    
    #${optionLocator}   Set Variable   xpath=//div[text()='${text}'] 
    ${optionLocator}   Set Variable   xpath=//div[@id='menu-']/div[3]/ul/li[${text}]   
    Return from keyword    ${optionLocator} 
    
    
Get Locator By Text [Arguments] ${text}
    [Documentation]    
    ...  Get locator from the text  ...
    
    ${locator}   Set Variable   xpath=//*[text()='${text}']
    Return from keyword    ${locator} 