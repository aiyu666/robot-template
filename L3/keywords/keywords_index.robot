*** Settings ***
Resource    ../init.robot


*** Keywords ***
Search Keyword And Verify Page Should Show Related Information
  [Arguments]  ${keyword} 
    Search Keyword     ${keyword}
    Verify Search Sucess And The Page Should Contain Keyword    ${keyword}
  [Teardown]  Go To    ${GOOGLE_URL}

Search Keyword 
  [Arguments]    ${keyword}
    Input Search Text    ${keyword}
    Click Search Button

Verify Search Sucess And The Page Should Contain Keyword
  [Arguments]    ${keyword}
    Current Frame Should Contain    ${keyword}
    Verify URL Is Change    ${GOOGLE_URL}