*** Settings ***
Resource    ../init.robot
Resource    ./agent_installation_step.robot

Force Tags    app-vone-av-win-agent  agent

*** Test Cases ***
User can install agent
    Given I download package
    When I install agent using msi package
    Then I should see the regist key is exist