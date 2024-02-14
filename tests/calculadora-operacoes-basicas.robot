*** Settings ***
Documentation    Suite de testes de operações básicas na Calculadora

Resource    ${EXECDIR}//resources//base.robot

Suite Setup        iniciar app calculadora
Suite Teardown     finalizar teste
Test Setup         limpar resultado


*** Test Cases ***

soma-01 - Somar dois números positivos
    [Tags]    calculadora    soma    soma-01
    clicar no número 1
    clicar no número 1
    teclar operador de soma
    clicar no número 1
    clicar no número 1
    clicar em igual
    validar que o resultado-da-soma.png é igual a 22

soma-02 - Somar dois números sendo um negativo
    [Tags]    calculadora    soma    soma-02
    teclar operador de subtração
    clicar no número 1
    clicar no número 1
    clicar no número 0
    teclar operador de soma
    clicar no número 1
    clicar no número 1
    clicar em igual
    validar que o resultado-da-soma-com-um-valor-negativo.png é igual a -99

sub-01 - Subtrair dois números
    [Tags]    calculadora    subtração    sub-01
    clicar no número 1
    clicar no número 1
    teclar operador de subtração
    clicar no número 1
    clicar no número 1
    clicar em igual
    validar que o resultado-da-subtração.png é igual a 0

mult-01 - multiplicar dois números
    [Tags]    calculadora    multiplicação    mult-01
    clicar no número 5
    clicar no número 5
    teclar operador de multiplicação
    clicar no número 6
    clicar no número 6
    clicar em igual
    validar que o resultado-da-multiplicação.png é igual a 3.630

div-01 - dividir dois números
    [Tags]    calculadora    divisão    div-01
    clicar no número 8
    clicar no número 9
    clicar no número 6
    teclar operador de divisão
    clicar no número 5
    clicar em igual
    validar que o resultado-da-divisão.png é igual a 179,2