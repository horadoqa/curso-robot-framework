# Plano de Testes: Página de Login

**Objetivo**: Garantir que a funcionalidade da página de login esteja funcionando corretamente, validando o comportamento esperado tanto para entradas válidas quanto inválidas.

---

## **1. Objetivos do Teste**

- Validar o processo de login com credenciais válidas.
- Verificar o comportamento da página quando credenciais inválidas forem fornecidas.
- Testar o redirecionamento após um login bem-sucedido.
- Testar a exibição de mensagens de erro adequadas para credenciais inválidas.
- Garantir que os campos de login estão limpos e prontos para o próximo uso.
- Testar a funcionalidade de “Esqueci minha senha”.
- Validar a segurança do sistema, incluindo a proteção contra ataques de força bruta (limite de tentativas de login).

---

## **2. Requisitos do Sistema**

- **Ambiente de Teste**: [Ex: Ambiente de homologação, ambiente de desenvolvimento]
- **Sistema Operacional**: [Ex: Windows 10, macOS, Linux]
- **Navegadores**: [Ex: Google Chrome, Firefox, Edge]
- **Dispositivos**: [Ex: Desktop, Mobile (se aplicável)]
- **Dependências**: Acesso a um banco de dados ou API para validação de credenciais de login, email de recuperação de senha, etc.

---

## **3. Casos de Teste**

### **Caso de Teste 1: Login com Credenciais Válidas**

**Objetivo**: Verificar se o usuário pode fazer login com credenciais válidas.

**Pré-condição**: O usuário tem uma conta registrada.

**Passos**:
1. Acessar a página de login.
2. Inserir um nome de usuário válido no campo de "Usuário".
3. Inserir uma senha válida no campo de "Senha".
4. Clicar no botão "Login".
5. Validar se o usuário é redirecionado para a página inicial (ou página esperada).

**Resultado Esperado**: O login é bem-sucedido e o usuário é redirecionado para a página apropriada.

---

### **Caso de Teste 2: Login com Credenciais Inválidas (Usuário Inexistente)**

**Objetivo**: Verificar se o sistema exibe uma mensagem de erro ao tentar logar com um usuário inexistente.

**Pré-condição**: O usuário não está registrado no sistema.

**Passos**:
1. Acessar a página de login.
2. Inserir um nome de usuário inválido (não registrado).
3. Inserir qualquer senha.
4. Clicar no botão "Login".
5. Verificar se uma mensagem de erro apropriada é exibida (ex: "Usuário não encontrado").

**Resultado Esperado**: O sistema exibe uma mensagem de erro informando que o usuário não foi encontrado.

---

### **Caso de Teste 3: Login com Senha Incorreta**

**Objetivo**: Verificar se o sistema exibe uma mensagem de erro quando a senha fornecida está incorreta.

**Pré-condição**: O usuário está registrado no sistema.

**Passos**:
1. Acessar a página de login.
2. Inserir um nome de usuário válido.
3. Inserir uma senha incorreta.
4. Clicar no botão "Login".
5. Verificar se uma mensagem de erro apropriada é exibida (ex: "Senha incorreta").

**Resultado Esperado**: O sistema exibe uma mensagem de erro indicando que a senha está incorreta.

---

### **Caso de Teste 4: Login com Campos Vazios**

**Objetivo**: Verificar se o sistema valida quando os campos de "Usuário" ou "Senha" estão vazios.

**Pré-condição**: Não é necessário ter uma conta, já que o teste verifica campos vazios.

**Passos**:
1. Acessar a página de login.
2. Deixar o campo "Usuário" vazio e preencher a senha.
3. Clicar no botão "Login".
4. Verificar se o sistema exibe uma mensagem de erro para o campo vazio (ex: "O campo 'Usuário' é obrigatório").
5. Repetir o processo deixando o campo "Senha" vazio e preencher o "Usuário".
6. Verificar se o sistema exibe uma mensagem de erro para o campo vazio.

**Resultado Esperado**: O sistema deve exibir mensagens de erro apropriadas quando os campos obrigatórios não forem preenchidos.

---

### **Caso de Teste 5: Redirecionamento após Login Bem-Sucedido**

**Objetivo**: Verificar se o usuário é redirecionado corretamente após um login bem-sucedido.

**Pré-condição**: O usuário tem credenciais válidas e está registrado.

**Passos**:
1. Acessar a página de login.
2. Inserir as credenciais válidas (usuário e senha).
3. Clicar no botão "Login".
4. Verificar se o usuário é redirecionado para a página inicial (ou a página apropriada do sistema).

**Resultado Esperado**: O usuário é redirecionado corretamente para a página inicial ou página de destino após o login.

---

### **Caso de Teste 6: Funcionalidade "Esqueci minha Senha"**

**Objetivo**: Verificar se a funcionalidade de recuperação de senha está funcionando corretamente.

**Pré-condição**: O usuário esqueceu a senha e deseja recuperá-la.

**Passos**:
1. Acessar a página de login.
2. Clicar no link "Esqueci minha senha".
3. Inserir o email registrado no campo de recuperação.
4. Clicar em "Enviar" ou "Recuperar senha".
5. Verificar se o sistema envia um email de recuperação de senha.

**Resultado Esperado**: O sistema envia um link de recuperação para o email fornecido.

---

### **Caso de Teste 7: Proteção contra Ataques de Força Bruta**

**Objetivo**: Verificar se o sistema impede múltiplas tentativas de login com credenciais incorretas em um curto período de tempo.

**Pré-condição**: O sistema está configurado para proteger contra tentativas de login excessivas.

**Passos**:
1. Acessar a página de login.
2. Inserir credenciais inválidas repetidamente (5 ou mais tentativas).
3. Verificar se o sistema bloqueia novas tentativas por um tempo (ex: 30 minutos) ou solicita um CAPTCHA.

**Resultado Esperado**: O sistema deve bloquear novas tentativas após um número excessivo de falhas.

---

## **4. Critérios de Aceitação**

- Todos os testes devem ser executados conforme os cenários descritos.
- O sistema deve exibir mensagens de erro claras e apropriadas quando credenciais inválidas forem fornecidas.
- A funcionalidade de login deve ser segura e proteger contra ataques de força bruta.
- O redirecionamento após um login bem-sucedido deve ser realizado para a página correta.
- A funcionalidade de recuperação de senha deve enviar um email com sucesso para o usuário.

---

## **5. Ferramentas de Teste**

- **Robot Framework**: Para automação de testes em interface web.
- **SeleniumLibrary**: Para interagir com os elementos da página de login.
- **Postman** (se aplicável): Para testar APIs de autenticação.
- **JMeter** ou **Locust.io** (se aplicável): Para testar a carga e o comportamento de múltiplas tentativas de login.

---

## **6. Riscos e Considerações**

- **Testes de carga**: As tentativas de login em massa podem afetar o desempenho do servidor. Execute esses testes com cuidado.
- **Ambiente de Teste**: Certifique-se de que o ambiente de teste está configurado corretamente, especialmente as variáveis relacionadas a banco de dados e autenticação.

---

## **7. Plano de Ação Pós-Teste**

- **Correções**: Caso qualquer falha seja identificada, a equipe de desenvolvimento deve corrigir os problemas e realizar um novo ciclo de testes.
- **Revisões**: Verificar se as melhorias sugeridas são implementadas no código.

---

Esse plano de testes visa cobrir todos os cenários necessários para garantir que a página de login do sistema esteja funcionando corretamente e de maneira segura.