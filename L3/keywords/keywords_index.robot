*** Settings ***
Resource    ../init.robot
Resource    ../page_object/page_index.robot


*** Keywords ***
Click Search Button
  Wait Until Element Is Visible And Enabled    ${search_button_xpath}
  Click Element    ${search_button_xpath}

Input Search Text
  [Arguments]    ${text}
  Wait Until Element Is Visible And Enabled    ${search_input_box_xpath}
  Input Text    ${search_input_box_xpath}  ${text}

Search Text ${text}
  Input Search Text    ${text}
  Click Search Button

Then Verify search sucess and page contain ${text}
  Current Frame Should Contain    ${text}
  Verify URL Is Change    ${GOOGLE_URL}