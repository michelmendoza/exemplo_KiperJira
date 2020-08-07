Feature: Login
 
    A fim de consultar um convite ou convidado
    Como Operador
    Eu quero encontrar um convite ou convidado específico
    Assim que realizar a consulta na modal

  Scenario: Consultar um convite

    Dado que o operador esteja logado no Kiper Monitoring
    E possua permissão ao acesso a tela de monitoramento
    Quando estiver atendendo um evento
    Então acessará a modal para consultar um convite
  
  Feature: Login2
    