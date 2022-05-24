*** Settings ***
Documentation       Suite description
Library             OperatingSystem
Library             lib/DemoLibrary.py
Suite Setup         setup suite
Test Setup          setup test case

*** Variables ***
${myfile}         xyz

*** Test Cases ***
TestCase1
    [Tags]    DEBUG
    init system

TestCase2
    [Tags]    DEBUG
    ${file conten} =    get file    demo.txt
    print file content  ${file conten}

TestCase3
    [Template]  creating user with invalid password should fail
    tao1    18
    tao2    19
    tao3    20

*** Keywords ***
Creating User with invalid password should fail
    [Arguments]    ${usename}    ${age}
    create user    ${usename}    ${age}
    user should be exit     taozs