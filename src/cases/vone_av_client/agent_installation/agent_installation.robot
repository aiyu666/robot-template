*** Settings ***
Documentation    Test suite of agent_installation
Resource    ../init.robot

Force Tags    app-vone-av-win-agent  agent
Test Timeout    ${TIMEOUT}

*** Test Cases ***
Test template sample
    [Tags]    agent_installation_B
    [Template]    Check User Can Install Agent Success
        msi
        dmg

User can install agent
    [Tags]    agent_installation_A
    Download Package    msi
    Install Agent With Package    msi
    Verify Regist Key Is Exist
