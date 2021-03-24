*** Keywords ***
#------ Action ------
Check User Can Install Agent Success
    [Arguments]    ${packageType}
    Download Package    ${packageType}
    Install Agent With Package    ${packageType}
    Verify Regist Key Is Exist

Download Package
    [Arguments]    ${packageType}
    Log    "Download ${packageType} Package"

Install Agent With Package
    [Arguments]    ${packageType}
    Log    "Install agent ${packageType} package"

#------ Verify ------
Verify Regist Key Is Exist
    Log    "Verify regist key"
