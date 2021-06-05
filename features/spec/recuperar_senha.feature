# language: pt

Funcionalidade: Recuperar Senha
  Como um cliente cadastrado no site FakeEcommerce
  Gostaria de recuperar a senha de acesso
  Para realizar o login na plataforma

 Contexto:
    Dado que esteja na tela de recuperar senha

@recuperar_senha
Cenário: Recuperar senha
    Quando recuperar a senha para o <email> válido
    Entao deve exibir uma <mensagem> de sucesso, sucedido do <email>
    Exemplos:
        | email                 | mensagem                 |
        | "teste20@teenvia.com" | "A confirmation email has been sent to your address:" |

@recuperar_senha_email_invalido
Cenário: Recuperar senha
    Quando recuperar a senha com o <email> invalido
    Entao deve exibir a mensagem de erro <mensagem>
    Exemplos:
        | email                 | mensagem                 |
        | ""                    | "Invalid email address." |
        | "teste99@teenvia.com" | "There is no account registered for this email address." |
        | "sem_mascara"         | "Invalid email address." |

#não há limite de caracter para o campo, mas segue validação caso existisse
@limite_de_caracteres_recuperar_senha
Cenário: Recuperar senha
    E que o limite de caracteres para o campo email é 100
    Quando preencher o campo com <texto> maior que o limite
    Entao o campo deve conter a quantidade limite de caracteres
    Exemplos:
        |texto|
        |"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ac viverra orci, eu consequat elit."|


@voltar_ao_login_desde_recuperar_senha
Cenário: Voltar ao login desde recuperar senha
    Quando voltar para tela de login
    Entao a tela de login deve ser exibida