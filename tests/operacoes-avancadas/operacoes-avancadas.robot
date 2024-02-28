*** Settings ***
Documentation    Suite de testes de operações avançadas na Calculadora - Raiz quadrada e potênciação

Resource    ${EXECDIR}//resources//operacoes-avancadas.robot

Suite Setup        iniciar app calculadora
Suite Teardown     finalizar teste
Test Setup         limpar calculadora

*** Test Cases ***

potencia-quad-01 - Somar dois números positivos e elevar ao quadrado
    [Tags]    calculadora    potencia    pot-01
    realizar a operacao 11 + 11
    obter o quadrado
    validar que o resultado-da-soma-elevado-ao-quadrado.png é igual a 484

raiz-quad-01 - Somar dois números positivos e elevar ao quadrado
    [Tags]    calculadora    raiz    raiz-01
    realizar a operacao 80 + -71
    obter raiz quadrada
    validar que o resultado-da-soma-apos-raiz-quadrada.png é igual a 3