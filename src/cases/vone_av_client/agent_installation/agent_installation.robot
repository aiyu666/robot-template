*** Settings ***
Documentation    Test suite of agent_installation
Resource    ../init.robot

Force Tags    app-vone-av-win-agent  agent
Test Timeout    ${TIMEOUT}

*** Test Cases ***
User can install agent
    [Tags]    agent_installation_A
    Given I download msi package
    When I install agent using msi package 
    Then I should see the regist key is exist

Test template sample
    [Tags]    agent_installation_B
    [Template]    Check User Can Install Agent Success
        msi
        msi