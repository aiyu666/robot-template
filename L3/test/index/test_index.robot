*** Settings ***
Resource        ../../init.robot
Suite Setup     Open Browser And Navigate
Suite Teardown    Close Browser


*** Test Cases ***
User will find relevant information after search the keywords
  When Search text Apex Central
  Then Verify search sucess and page contain Apex Central