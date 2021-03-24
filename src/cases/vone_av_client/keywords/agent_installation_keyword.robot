*** Keywords ***
#------ Step ------
I download ${packageType} package
    Download Package    ${packageType}

I install agent using ${packageType} package 
    Install Agent With Package    ${packageType}

I should see the regist key is exist
    Verify Regist Key Is Exist

#------ Action ------
Check User Can Install Agent Success
    [Documentation]    Check user can download and install agent and the regist key is exist
    [Arguments]    ${packageType}
    Given I download ${packageType} package
    When I install agent using ${packageType} package 
    Then I should see the regist key is exist

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
