*** Settings ***
Resource    ../init.robot


*** Keywords ***
Open Browser And Navigate
  [Arguments]  ${url}=${GOOGLE_URL}  ${endpoint}=${empty}  ${browser}=${DEFAULT_BROWSER}  ${options}=add_argument("--ignore-certificate-errors")
  Open Browser  ${url}${endpoint}  ${browser}  options=${options}
  Verify Current URL Is Correct  ${url}/

Verify Current URL Is Correct
  [Arguments]  ${expect_url}
  ${actual_url}=   Get Location
  Should Be Equal    ${actual_url}  ${expect_url}

Verify URL Is Change
  [Arguments]  ${original_url}
  ${current_url}=   Get Location
  Should Not Be Equal    ${original_url}  ${current_url}

Wait Until Element Is Visible And Enabled
  [Arguments]  ${element}  ${timeout}=30s
  Wait Until Element Is Visible    ${element}  ${timeout}
  Wait Until Element Is Enabled    ${element}  ${timeout}