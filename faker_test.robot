*** Settings ***
Library    FakerLibrary
#Library    FakerLibrary    locale=de_DE    seed=124

*** Test Cases ***
FakerLibrary Words Generation
    ${words}=    FakerLibrary.Words
    Log    words: ${words}
    ${words}=    FakerLibrary.Words    nb=${10}
    Log    words: ${words} level='ERROR'