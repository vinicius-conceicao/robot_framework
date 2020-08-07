***Settings***
Resource        base.robot
Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Test Cases ***
Verifica o valor ao informar o numero da linha
    [tags]      tabletest
    Go To                                ${url}/tables
    Table Row Should Contain             id:actors          1          $ 10.000.000

Descobre a linha pelo texto e valida os demais valores
    [tags]      tabletest02
    Go To               ${url}/tables
   ${target}=           Get WebElement                       xpath:.//tr[contains(., '@chadwickboseman')]
    Should Contain      ${target.text}      $ 700.000
    Should Contain      ${target.text}      Pantera Negra