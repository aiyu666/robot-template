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
    [Arguments]    ${packageType}
    Given I download ${packageType} package
    When I install agent using ${packageType} package 
    Then I should see the regist key is exist

Download Package
    [Arguments]    ${packageType}
    Log    "Download ${packageType} Package"

Install Agent With Package
    [Arguments]    ${packageType}
    Log    "Install agent ${packageType} package"

#------ Verify ------
Verify Regist Key Is Exist
    Log    "Verify regist key"
