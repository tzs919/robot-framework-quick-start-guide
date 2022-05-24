*** Settings ***
Library           lib/my_demo.py

*** Test Cases ***
mytest1
    [Tags]    taozs
    init system
    Create User    taozs    11
    user should be exit    taozs
