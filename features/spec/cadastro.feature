# language: pt

@cadastro
Funcionalidade: Cadastrar no Ecommerce Fake
  Como um cliente do site FakeEcommerce
  Gostaria de realizar o cadastro
  Para efetuar compras

Contexto:
    Dado que esteja na tela de login

@cadastrar_usuario
Cenário: Realizar cadastro
    Quando cadastrar com email "teste81@teenvia.com" e dados validos
    Entao deve seguir para tela de conta do usuario

@cadastrar_email_anteriormente_cadastrado
Cenário: Cadastrar email já cadastrado
    E que um email "teste97@teenvia.com" foi previamente cadastrado
    Quando tentar cadastrar o mesmo email
    Entao deve exibir a mensagem de email já cadastrado