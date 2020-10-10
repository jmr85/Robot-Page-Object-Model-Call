*** Setting ***
Resource   ../../../objectRepository/pageObjects/userManagement/AuthRegistrationPo.robot
Resource   ../../../objectRepository/pageObjects/common/CommonPo.robot

Library    SeleniumLibrary

Documentation    
...		This suite includes login smoke tests  ...

Suite Setup     Open Browser To Login Page
Suite Teardown  Close Browser


*** Variables ***
${validUserNameVal}     ${USERNAME}
${validPasswordVal}     ${PASSWORD}



*** Test Cases ***
Verify that a valid user can login to the system
    [Documentation]
	...  This testcase verified a valid login scenario  ...
    
    Login To The Application [Arguments] ${validUserNameVal} ${validPasswordVal}
    Logout From The System

    
Verify that an invalid user cannot login to the system
    [Documentation]
	...  This testcase verified an invalid login scenario  ...
    
    Submit Login Information [Arguments] ${invalidUserNameVal} ${invalidPasswordVal}
    User Is In The Login Page
    
    
