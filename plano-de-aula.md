### Plano de Aula: Testes Automatizados com Robot Framework

**Objetivo:** Ensinar os alunos a realizar testes automatizados usando o Robot Framework, desde a instalação do Python e do Robot Framework até a criação de um script simples para testar uma página de login.

---

### **1. Introdução ao Teste Automatizado (15 minutos)**

**Objetivos:**
- Compreender a importância dos testes automatizados.
- Visão geral do Robot Framework.

**Conteúdo:**
- O que são testes automatizados?
- Vantagens do uso de testes automatizados.
- O que é o Robot Framework e como ele facilita os testes.
- Estrutura básica de um script Robot Framework.

**Atividade:**
- Perguntar aos alunos se já realizaram testes automatizados e, se sim, quais ferramentas usaram.

---

### **2. Instalação do Python e do Robot Framework (30 minutos)**

**Objetivos:**
- Instalar o Python.
- Instalar o Robot Framework.

**Passo a passo:**

**Instalando o Python:**
1. Acesse o site oficial do Python: https://www.python.org/downloads/
2. Baixe e instale a versão mais recente do Python.
   - **Importante:** Marque a opção "Add Python to PATH" durante a instalação.
   
**Verificando a instalação do Python:**
- No terminal ou prompt de comando, digite:
  ```bash
  python --version
  ```

**Instalando o Robot Framework:**
1. Abra o terminal (ou prompt de comando no Windows).
2. Instale o Robot Framework usando o pip (gerenciador de pacotes do Python):
   ```bash
   pip install robotframework
   ```

**Verificando a instalação do Robot Framework:**
- Digite o seguinte comando para verificar se a instalação foi bem-sucedida:
  ```bash
  robot --version
  ```

---

### **3. Instalando o SeleniumLibrary (30 minutos)**

**Objetivo:**
- Instalar a biblioteca Selenium para testar interfaces web.

**Passo a passo:**

**Instalar o SeleniumLibrary:**
1. No terminal, execute o seguinte comando:
   ```bash
   pip install robotframework-seleniumlibrary
   ```

**Instalar o Selenium WebDriver:**
- Para interagir com os navegadores, é necessário ter o WebDriver adequado instalado. Para o Google Chrome, por exemplo, você deve instalar o ChromeDriver:
  - Faça o download do [ChromeDriver](https://sites.google.com/a/chromium.org/chromedriver/downloads) e extraia-o em um diretório de sua escolha.

---

### **4. Criando um Script Simples de Teste para uma Página de Login (60 minutos)**

**Objetivo:**
- Criar um script simples para testar o login em uma página web.

**Passo 1: Estrutura Básica de um Teste Robot Framework**

1. No seu diretório de trabalho, crie um arquivo com a extensão `.robot`, por exemplo, `login_test.robot`.
2. A estrutura básica de um script em Robot Framework é composta por 3 seções principais:
   - **Settings:** onde você importa bibliotecas.
   - **Variables:** onde você define variáveis.
   - **Test Cases:** onde você define os casos de teste.

**Passo 2: Exemplo de Código de Teste**

O código abaixo mostra um exemplo simples de um teste de login:

```robot
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      https://example.com/login
${BROWSER}  chrome
${USER}     testuser
${PASSWORD} testpassword

*** Test Cases ***
Valid Login Test
    Open Browser    ${URL}    ${BROWSER}
    Input Text      id=username    ${USER}
    Input Text      id=password    ${PASSWORD}
    Click Button    id=login-button
    Page Should Contain    Welcome, ${USER}
    Close Browser
```

**Explicação do Código:**
- **Settings:** Importa a biblioteca SeleniumLibrary para controle do navegador.
- **Variables:** Define variáveis como URL da página de login, navegador, usuário e senha.
- **Test Cases:** Define um caso de teste chamado `Valid Login Test`, que realiza os seguintes passos:
  1. Abre o navegador (Google Chrome) e acessa a página de login.
  2. Insere o nome de usuário e senha nos campos de texto.
  3. Clica no botão de login.
  4. Verifica se a página contém a mensagem de boas-vindas ao usuário.
  5. Fecha o navegador.

**Passo 3: Executando o Teste**

1. Para rodar o teste, no terminal, execute o comando:
   ```bash
   robot login_test.robot
   ```

2. O Robot Framework executará o script e você verá um relatório gerado na pasta `report` dentro do diretório onde o script foi executado. O relatório inclui um log detalhado dos passos e resultados do teste.

---

### **5. Analisando o Relatório e Log (20 minutos)**

**Objetivo:**
- Analisar os relatórios gerados após a execução dos testes.

**Conteúdo:**
- Como interpretar o log HTML gerado pelo Robot Framework.
- O que cada parte do log significa (passos, falhas, screenshots).
- Como utilizar o relatório de falhas para corrigir problemas nos testes.

**Atividade:**
- Cada aluno executa o teste e verifica o relatório e log gerados. Após isso, discutem o que funcionou e o que poderia ser melhorado.

---

### **6. Exercício Prático (30 minutos)**

**Objetivo:**
- Criar um teste para uma página de login de outro site ou aplicação fornecida pelo instrutor.

**Instruções:**
- Os alunos devem adaptar o script criado para testar um novo caso de login, utilizando diferentes seletores e variáveis.
- Incentivar os alunos a personalizarem o script com elementos como espera explícita (aguardar um elemento aparecer antes de interagir) e outros comandos do SeleniumLibrary.

---

### **7. Encerramento e Dúvidas (15 minutos)**

**Objetivo:**
- Revisar o que foi aprendido e esclarecer dúvidas.

**Atividade:**
- Revisar os pontos principais da aula.
- Tirar dúvidas dos alunos sobre a instalação, criação de testes e uso do Robot Framework.

---

### **Materiais de Apoio:**
- Documentação oficial do Robot Framework: https://robotframework.org/
- Documentação do SeleniumLibrary: https://robotframework.org/SeleniumLibrary/

---

**Conclusão:** Ao final da aula, os alunos terão conhecimento básico sobre o uso do Robot Framework para automatizar testes, incluindo a instalação, criação de scripts simples de teste e análise de resultados.