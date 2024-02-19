*** Settings ***
Documentation    Carrega os elementos e keywords básicas para o funcionamento da calculadora
Library    SikuliLibrary
Library    ImageHorizonLibrary

*** Keywords ***

carregar os elementos do app
    Add Image Path    ${EXECDIR}\\resources\\elements\\base
    Add Image Path    ${EXECDIR}\\resources\\elements\\validation

iniciar app calculadora
    carregar os elementos do app
    inserir valor calculadora em search.png
    SikuliLibrary.Click    calc-icon.PNG

inserir valor ${value} em ${image} 
    Input Text    ${image}    ${value}   

encerrar api sikuli
    Stop Remote Server

finalizar teste
    Close Application    Calculadora
    encerrar api sikuli

teclar operador ${operador}
    Type With Modifiers    ${operador}

clicar em igual
    SikuliLibrary.Click    equal.png

validar que o ${image} é igual a ${result}
    SikuliLibrary.Click    ${image}
    Press Combination      key.ctrl    key.a
    ImageHorizonLibrary.Copy
    Capture Screen
    ${value}=    ImageHorizonLibrary.Get Clipboard Content
    Should Be Equal    ${value}    ${result}

limpar calculadora
    SikuliLibrary.Click    clear.png

realizar a operacao ${valor_1} ${operador} ${valor_2}
    ${value_1_len}=    Get Length    ${valor_1}      
    FOR  ${a}  IN RANGE    ${value_1_len}
        Run Keyword If    '${valor_1[${a}]}' in ['+', '-', '*', '/']
        ...     Teclar Operador ${valor_1[${a}]}
        ...     ELSE
        ...     SikuliLibrary.Click    number-${valor_1[${a}]}.png
    END

    teclar operador ${operador}

    ${value_2_len}=    Get Length    ${valor_2}      
    FOR  ${b}  IN RANGE    ${value_2_len}
        Run Keyword If    '${valor_2[${b}]}' in ['+', '-', '*', '/']
        ...    Teclar Operador ${valor_2[${b}]}
        ...    ELSE
        ...    SikuliLibrary.Click    number-${valor_2[${b}]}.png
    END

    clicar em igual
    