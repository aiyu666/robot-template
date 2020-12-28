*** Settings ***
Resource    ../../init.robot
Resource    ./page_index_variable.robot


*** Keywords ***
Click Search Button
  Wait Until Element Is Visible And Enabled    ${search_button_xpath}
  Click Element    ${search_button_xpath}

Input Search Text
  [Arguments]    ${text}
  Wait Until Element Is Visible And Enabled    ${search_input_box_xpath}
  Input Text    ${search_input_box_xpath}  ${text}