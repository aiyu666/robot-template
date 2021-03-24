*** Keywords ***
#------ Action ------
Check User Can Install Agent Success
    [Documentation]    Check user can download and install agent and the regist key is exist
    [Arguments]    ${packageType}
    Download Package    ${packageType}
    Install Agent With Package    ${packageType}
    Verify Regist Key Is Exist

Download Package
    [Documentation]    Download agent package from remote 
    [Arguments]    ${packageType}
    Log    "Download ${packageType} Package"

Install Agent With Package
    [Documentation]    Download agent package from remote 
    [Arguments]    ${packageType}
    Log    "Install agent ${packageType} package"

#------ Verify ------
Verify Regist Key Is Exist
    [Documentation]    Verify the regist key is exist
    Log    "Verify regist key"
