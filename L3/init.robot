*** Settings ***
Library    SeleniumLibrary
Library    ./lib/ping/Ping.py

Resource    ./keywords/keywords_common.robot
Resource    ./keywords/keywords_index.robot
Resource    ./page_object/index/page_index_action.robot


Variables    ./setting.py