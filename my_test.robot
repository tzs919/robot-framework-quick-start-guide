*** Settings ***
Documentation       Suite description
Library             OperatingSystem
Library             lib/my_demo.py
Suite Setup         my suite setup
Test Setup          my test setup

*** Variables ***
${myfile}         xyz

*** Test Cases ***
Test my house
#    [Tags]    DEBUG
    init system
    init system2

Test my house2
    [Tags]    DEBUG
    init system2
    ${file conten} =    get file    readme.txt
    print file content  ${file conten}

This is my third testcase
    [Template]  creating user with invalid password should fail
    tao1    18
    tao2    19
    tao3    20

*** Keywords ***
Creating User with invalid password should fail
    [Arguments]    ${usename}    ${age}
    create User    ${usename}    ${age}
    user should be exit     taozs
    init system2

my suite setup
    setup suite

my test setup
    setup case