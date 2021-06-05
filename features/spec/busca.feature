# language: pt

Funcionalidade: Buscas no Fake Ecommerce
  Como um cliente do site FakeEcommerce
  Gostaria de poder buscar por produtos
  Para customizar as compras

  Contexto:
    Dado que esteja na página inicial

  @buscar_por_termo_valido
  Cenário: Buscar por termo válido
    Quando buscar pelo produto 'shirt'
    Então devem ser retornados produtos

  # Completar o cenário abaixo
  @buscar_sem_resultados
  Esquema do Cenário: Busca sem resultados
    Quando buscar por um <termo> desconhecido 
    Então deve apresentar a <mensagem> sucedido do <termo>
    Exemplos:
          | termo       |  mensagem                                 |
          | " shirtsss" |  "No results were found for your search " |

  @buscar_sem_termo
  Cenário: Buscar sem preenchimento do campo
    Quando buscar sem termo
    Então deve apresentar a mensagem 'Please enter a search keyword'

  @buscar_pela_cor
  Cenário: Busca por cor do produto
    Quando buscar produtos pela cor "pink"
    Então devem ser retornados produtos com a cor relacionada

  @buscar_pela_descricao
  Cenário: Busca por descricao do produto
    Quando buscar produtos pela descricao "pink"
    Então devem ser retornados produtos com a descricao relacionada

  @busca_por_composicao_do_produto
  Cenário: Busca por composicao do produto