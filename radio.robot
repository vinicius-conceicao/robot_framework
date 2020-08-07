***Settings***
Resource        base.robot
Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Test Cases ***
Marcando Opção de radio por ID
    [tags]      IDtest
    Go To                                ${url}/radios
    Select Radio Button                  movies     cap 
    Radio Button Should Be Set To        movies     cap

Marcando Opção de radio por Value
    [tags]      valuetest
    Go To                                ${url}/radios
    Select Radio Button                  movies     guardians 
    Radio Button Should Be Set To        movies     guardians
