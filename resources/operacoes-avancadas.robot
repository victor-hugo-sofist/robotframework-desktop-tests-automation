*** Settings ***
Documentation    Carrega os elementos e keywords relacionadas a operações avançadas da calculadora
Library    SikuliLibrary
Library    ImageHorizonLibrary

Resource    ${EXECDIR}//resources//base.robot

*** Keywords ***

carregar os elementos relacionados a operações avançadas
    iniciar app calculadora

obter o quadrado
    SikuliLibrary.Click    elevar-ao-quadrado.PNG
    
obter raiz quadrada
    SikuliLibrary.Click    raiz-quadrada.PNG