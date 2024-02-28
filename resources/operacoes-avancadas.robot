*** Settings ***
Documentation    Carrega os elementos e keywords relacionadas a operações avançadas da calculadora

Resource    ${EXECDIR}//resources//base.robot

*** Keywords ***

obter o quadrado
    SikuliLibrary.Click    elevar-ao-quadrado.PNG
    
obter raiz quadrada
    SikuliLibrary.Click    raiz-quadrada.PNG