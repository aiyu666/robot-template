*** Settings ***
Resource    ../init.robot


*** Keywords ***
Search Text about ${text}
  Input Search Text    ${text}
  Click Search Button

Then Verify search sucess and page contain ${text}
  Current Frame Should Contain    ${text}
  Verify URL Is Change    ${GOOGLE_URL}