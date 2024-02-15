# PROJETO DE TESTES E2E DESKTOP - SOFIST - ROBOT FRAMEWORK

## TECNOLOGIAS
- **PYTHON** - Linguagem de programação
- **PIP** - Gerenciador de pacotes
- **ROBOT FRAMEWORK** - Framework de testes Web, API e desktop
- **LIBRARIES** - Sikuli e ImageHorizonLibrary

## INSTALANDO AS DEPENDÊNCIAS

### Dependências PIP
Execute:
> `pip install -r requirements.txt`

### Dependências Java - Sikuli Library

A biblioteca Sikuli depende da instalação do JDK.

Instale o JDK-Java 8 ou superior. [Link para download.](https://www.oracle.com/java/technologies/downloads/#jdk20-windows)

Crie a variável de ambiente `JAVA_HOME` e insira o diretório do local onde foi instalado o JDK.

Exemplo: `C:\Program Files\Java\jdk-20`

## Executando todos os testes
>`robot -i calculadora tests`

## Executando todos os testes com a descrição
>`robot -i soma tests`
