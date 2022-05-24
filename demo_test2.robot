*** Settings ***
Library           lib/DemoLibrary.py

*** Test Cases ***
test1
    [Tags]    taozs
    init system
    create user    taozs    11
    user should be exit    taozs
