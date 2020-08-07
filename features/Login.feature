Feature: Login

  I want to sign in

  Scenario: Sign in
    Given I access monitoring page
    Then I type my email on input "email"
    Then I click on "Entrar"
    Then I type my password on input "password"
    Then I click on "Entrar"
  
  
  