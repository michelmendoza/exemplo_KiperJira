Feature: System Users

  I want to create a system user

  Background:
    Given I'm signed in
    Then I go to "/system-users"
  

  Scenario: Creating a system user with a used email
    Then I click on "Registrar usuário"
    Then I type my email on input "email"
    Then I click on "Salvar"
    Then I see "<my name> já possui cadastro" on the page
    Then I click on "Sim!"
    Then I see "Edição de usuário" on the page
    Then I see my name on the page


  Scenario: Creating a system user with a used phone
    Then I click on "Registrar usuário"
    Then I type some unused email on input "email"
    Then I type some name on input "name"
    Then I type "+5548999999999" on input "phone"
    Then I type "Operador{enter}" on "Selecione o perfil do usuário"
    Then I click on "Salvar"
    Then I see "Este telefone já está cadastrado em outro usuário" on the page


  Scenario: Creating a system user
    Then I click on "Registrar usuário"
    Then I type some unused email on input "email"
    Then I type some name on input "name"
    Then I type some phone on input "phone"
    Then I type "Operador{enter}" on "Selecione o perfil do usuário"
    Then I see "Convites" on the page
    Then I see "Atendimento de eventos" on the page
    Then I click on "Salvar"
    Then I see "Usuário salvo com sucesso!" on the page
  
  
  Scenario: Search system user by name
    Given I created a system user @client
    Then I slowly type client's name on input "searchText"
    Then I see client's email on the page

  
  Scenario: Search system user by email
    Given I created a system user @user
    Then I slowly type user's email on input "searchText"
    Then I see user's name on the page

 
  Scenario: Delete system user
    Given I created a system user @user
    Then I type user's email on input "searchText"
    Then I see user's name on the page
    Then I click on selector "tr:first-child .btn-danger"
    Then I see "Você quer mesmo remover {user's name} do Kiper Monitoring? Essa ação removerá o acesso do usuário ao sistema" on the page
    Then I click on "Confirmar"
    Then I see "{user's name} removido com sucesso!" on the page
    Then I don't see user's name on the page
    Then I reload the page
    Then I slowly type user's email on input "searchText"
    Then I don't see user's name on the page
