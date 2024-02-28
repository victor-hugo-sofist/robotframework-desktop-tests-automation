*** Settings ***
Documentation    Suite de testes de operações básicas na Calculadora - Soma, Subtração, Multiplicação e Divisão

Resource    ${EXECDIR}//resources//base.robot

Suite Setup        iniciar app calculadora
Suite Teardown     finalizar teste
Test Setup         limpar calculadora
Task Teardown

*** Test Cases ***

soma-01 - Somar dois números positivos
    [Tags]    calculadora    soma    soma-01
    realizar a operacao 11 + 11
    validar que o resultado-da-soma.png é igual a 22

soma-02 - Somar dois números sendo um negativo
    [Tags]    calculadora    soma    soma-02
    realizar a operacao -110 + 11
    validar que o resultado-da-soma-com-um-valor-negativo.png é igual a -99

sub-01 - Subtrair dois números
    [Tags]    calculadora    subtração    sub-01
    realizar a operacao 11 - 11
    validar que o resultado-da-subtração.png é igual a 0

mult-01 - multiplicar dois números
    [Tags]    calculadora    multiplicação    mult-01
    realizar a operacao 55 * 66
    validar que o resultado-da-multiplicação.png é igual a 3.630

div-01 - dividir dois números
    [Tags]    calculadora    divisão    div-01
    realizar a operacao 896 / 5
    validar que o resultado-da-divisão.png é igual a 179,2