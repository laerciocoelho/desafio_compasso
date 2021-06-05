# language: pt

Funcionalidade: Login no Ecommerce Fake
  Como um cliente do site FakeEcommerce
  Gostaria de realizar o login
  Para gerenciar as compras

  Contexto:
    Dado que esteja na tela de login

  # Completar o cenário abaixo
  @login_valido
  Cenário: Realizar login
    Quando logar com usuario e senha validos
    Entao deve acessar a tela minha conta

  @login_invalido
  Cenário: Login com falha
    Quando logar com usuario <login> e senha <senha>
    Entao deve exibir a mensagem <mensagem>
      Exemplos:
        | login                       | senha    | mensagem                     |
        | ""                          | ""       | "An email address required." | 
        | ""                          | "123456" | "An email address required." |
        | "teste"                     | ""       | "Invalid email address."     |
        | "teste"                     | "123456" | "Invalid email address."     |
        | "teste50@teenvia.com"       | ""       | "Password is required."      |
        | "laerciocoelho92@gmail.com" | "123456" | "Authentication failed."     |

  

