Feature: Login

  I want to sign in

  Scenario: excluir dados de acesso de usuário com vários cadastrados
    Dado que eu tenho mais de um dados de acesso de usuário
    Quando eu clico no ícone lixeira
    Então a seção de dados de acesso de usuário é excluída
    E mostra um loader
    E mostra uma mensagem de excluído com sucesso"
  
  
  