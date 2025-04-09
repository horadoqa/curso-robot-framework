# Curso de Robot Framework

Bem-vindo ao **Curso de Robot Framework**! Este curso foi desenvolvido para ensinar a você como automatizar testes de software utilizando o **Robot Framework**, uma poderosa ferramenta de testes automatizados baseada em palavras-chave.

Aqui, você aprenderá desde a instalação da ferramenta até a criação de scripts de teste para testar interfaces web, bancos de dados, APIs e muito mais. Vamos te guiar no processo passo a passo, abordando os conceitos e melhores práticas para tornar seus testes automatizados mais eficientes e eficazes.

---

## 📜 **Sumário**

1. [Introdução ao Robot Framework](#1-introdução-ao-robot-framework)
2. [Instalação do Python e do Robot Framework](#2-instalação-do-python-e-do-robot-framework)
3. [Compreendendo a Estrutura de um Teste Robot Framework](#3-compreendendo-a-estrutura-de-um-teste-robot-framework)
4. [Automatizando Testes com Selenium e WebDriver](#4-automatizando-testes-com-selenium-e-webdriver)
5. [Trabalhando com Variáveis e Palavras-Chave](#5-trabalhando-com-variáveis-e-palavras-chave)
6. [Execução de Testes e Análise de Relatórios](#6-execução-de-testes-e-análise-de-relatórios)
7. [Avançando com Testes em API e Banco de Dados](#7-avançando-com-testes-em-api-e-banco-de-dados)
8. [Boas Práticas e Dicas Finais](#8-boas-práticas-e-dicas-finais)

---

## 1. Introdução ao Robot Framework

O **Robot Framework** é uma ferramenta de automação de testes de código aberto que utiliza uma abordagem baseada em palavras-chave. Ele é altamente extensível e pode ser usado para testar aplicações web, APIs, interfaces gráficas, banco de dados e até sistemas embarcados.

**Principais Características:**
- Fácil de aprender e usar, mesmo para iniciantes.
- Suporta testes de integração e testes de sistema.
- Extensível através de bibliotecas, como **SeleniumLibrary** para automação de testes em navegadores.

---

## 2. Instalação do Python e do Robot Framework

Para começar a usar o Robot Framework, você precisa instalar o Python e, em seguida, o Robot Framework.

### Passos:

1. **Instalar o Python**:
   - Faça o download do Python em [python.org](https://www.python.org/downloads/).
   - Após a instalação, verifique se o Python foi corretamente instalado com o comando:
     ```bash
     python --version
     ```

2. **Instalar o Robot Framework**:
   - Com o Python instalado, abra o terminal e execute:
     ```bash
     pip install robotframework
     ```

3. **Instalar o SeleniumLibrary** (para testes web):
   - Se você deseja realizar testes de interface web, também precisará do SeleniumLibrary:
     ```bash
     pip install robotframework-seleniumlibrary
     ```

4. **Instalar WebDriver**:
   - Para testes em navegadores, instale o WebDriver adequado (ChromeDriver, GeckoDriver, etc.).

## Chrome for Testing availability

[Verificar as versões disponíveis do ChromeDriver](https://googlechromelabs.github.io/chrome-for-testing/)


## Instalando
   
```bash
wget https://storage.googleapis.com/chrome-for-testing-public/135.0.7049.84/linux64/chromedriver-linux64.zip && \
unzip chromedriver-linux64.zip && \
cd chromedriver-linux64 && \
chmod +x chromedriver && \
sudo cp chromedriver /usr/bin/ && \
ls /usr/bin/ | grep chromedriver && \
chromedriver --version
```
## Verificar onde está instalado o chromedriver

```bash
which chromedriver
/usr/bin/chromedriver
```

Se o local do seu driver ainda não estiver em um diretório listado, você pode adicionar um novo diretório ao PATH:

```bash
echo 'export PATH=$PATH:/usr/bin/chromedriver' >> ~/.zshenv
```

## Atualizar o MYOHZSH

```bash
source ~/.zshenv
```

## Instalando o google-chrome

```bash
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
sudo apt install ./google-chrome-stable_current_amd64.deb && \
google-chrome --version
```

---

## 3. Compreendendo a Estrutura de um Teste Robot Framework

Um script de teste no Robot Framework é composto por três seções principais:

- **Settings**: Aqui você importa as bibliotecas necessárias para o seu teste.
- **Variables**: Nesta seção, você define variáveis que podem ser reutilizadas ao longo do teste.
- **Test Cases**: A seção onde você define os casos de teste. Cada caso de teste é uma sequência de ações a serem realizadas.

Exemplo de estrutura básica de um script Robot Framework:

```robot
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      https://front.serverest.dev/login
${BROWSER}  chrome

*** Test Cases ***
Login Test
    Open Browser    ${URL}    ${BROWSER}
    Input Text      id=email    horadoqa@teste.com
    Input Text      id=password    1q2w3e4r
    Click Button    //*[@id="root"]/div/div/form/button
    Wait Until Page Contains    Este é seu sistema para administrar seu ecommerce.    timeout=10s
    Close Browser
```

---

## 4. Automatizando Testes com Selenium e WebDriver

Para testes em interfaces web, o Robot Framework utiliza o **SeleniumLibrary**, que fornece palavras-chave para controlar um navegador.

### Exemplo de teste de login:
1. **Abrir navegador** com a URL especificada.
2. **Inserir texto** no campo de usuário e senha.
3. **Clicar em um botão** de login.
4. **Verificar** se a página contém uma mensagem de boas-vindas.

---

## 5. Trabalhando com Variáveis e Palavras-Chave

### Variáveis:
O Robot Framework permite o uso de variáveis para tornar seus testes mais reutilizáveis. Você pode definir variáveis na seção `Variables` ou passá-las como argumentos para suas palavras-chave.

### Palavras-chave Personalizadas:
Além das palavras-chave fornecidas pelas bibliotecas, você pode criar suas próprias palavras-chave para organizar melhor seus testes.

Exemplo de palavra-chave personalizada:

```robot
*** Keywords ***
Login
    Input Text    id=username    ${USER}
    Input Text    id=password    ${PASSWORD}
    Click Button  id=login-btn
```

---

## 6. Execução de Testes e Análise de Relatórios

Para rodar um teste, basta executar o comando:

```bash
robot nome_do_arquivo.robot
```

Após a execução, o Robot Framework gera três arquivos:
- **Log.html**: Detalha o que aconteceu durante o teste.
- **Report.html**: Resumo dos testes executados.
- **Output.xml**: Arquivo XML com informações detalhadas (geralmente usado para integração com outras ferramentas).

---

## 7. Avançando com Testes em API e Banco de Dados

O Robot Framework permite a automação de testes de **APIs** e **bancos de dados** usando bibliotecas específicas.

- **Testes em API**: Usamos a biblioteca `RequestsLibrary` para enviar requisições HTTP e validar respostas.
- **Testes de Banco de Dados**: Usamos a biblioteca `DatabaseLibrary` para interagir com bancos de dados SQL e validar dados.

---

## 8. Boas Práticas e Dicas Finais

- **Modularize seus testes**: Crie palavras-chave reutilizáveis para evitar duplicação de código.
- **Use variáveis e parâmetros**: Isso ajuda a tornar seus testes mais flexíveis.
- **Mantenha seus testes organizados**: Divida os testes em arquivos menores e com nome claro.
- **Crie boas mensagens de erro**: Se algo falhar, a mensagem de erro deve ser clara para ajudar na depuração.

---

## 🚀 **Próximos Passos**

Agora que você tem uma boa base no Robot Framework, o próximo passo é começar a criar seus próprios testes automatizados! Experimente testar diferentes cenários, explorar mais bibliotecas e aumentar a complexidade dos seus testes.

---

## 🔗 **Recursos**

- [Documentação Oficial do Robot Framework](https://robotframework.org/)
- [SeleniumLibrary - Documentação](https://robotframework.org/SeleniumLibrary/)
- [RequestsLibrary - Documentação](https://robotframework.org/RequestsLibrary/)
- [DatabaseLibrary - Documentação](https://robotframework.org/DatabaseLibrary/)

---

Esperamos que você aproveite este curso e que ele ajude a melhorar a qualidade do seu software através de testes automatizados!
