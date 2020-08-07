***Settings***
Resource        base.robot
Test Setup      Nova sessão
Test Teardown   Encerra sessão

***Variables***
${check_IDtest}     id:thor
${check_css}        css:input[value='iron-man']        
${check_xpath}      xpath: //*[@id='checkboxes']/input[7]



*** Test Cases ***
Marcando Opção com ID
    [tags]      IDtest
    Go To                                ${url}/checkboxes
    Select checkbox                      ${check_IDtest}
    checkbox Should Be Selected          ${check_IDtest}
    Sleep                                5

Marcando Opção com CSS Selector
    [tags]      ironman
    Go To                                ${url}/checkboxes
    Select checkbox                      ${check_css}
    checkbox Should Be Selected          ${check_css}
    Sleep                                5

Marcando Opção com Xpath
    [tags]      xpath
    Go To                                ${url}/checkboxes
    Select checkbox                      ${check_xpath}
    checkbox Should Be Selected          ${check_xpath}
    Sleep                                5



