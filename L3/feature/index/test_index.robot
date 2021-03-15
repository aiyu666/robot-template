*** Settings ***
Resource        ../../init.robot
Suite Setup     Open Browser And Navigate
Suite Teardown    Close Browser

*** Test Cases ***
User can search Apex Central and show related information with google
  [Template]  Search Keyword And Verify Page Should Show Related Information
      Apex Central
      Apex One
      SaaS2.0


