*** Settings ***
Documentation    Tudo se inicia neste arquivo

Library    SikuliLibrary
Library    ImageHorizonLibrary

*** Keywords ***

carregar os elementos do app
    Add Image Path    ${EXECDIR}\\resources\\elements\\base
    Add Image Path    ${EXECDIR}\\resources\\elements\\calculadora\\soma
    Add Image Path    ${EXECDIR}\\resources\\elements\\calculadora\\subtração
    Add Image Path    ${EXECDIR}\\resources\\elements\\calculadora\\multiplicação
    Add Image Path    ${EXECDIR}\\resources\\elements\\calculadora\\divisão

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

clicar no número ${number}
    SikuliLibrary.Click    number-${number}.png

teclar operador de soma
    Type With Modifiers    +

teclar operador de subtração
    Type With Modifiers    -

teclar operador de multiplicação
    Type With Modifiers    *

teclar operador de divisão
    Type With Modifiers    /

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
    