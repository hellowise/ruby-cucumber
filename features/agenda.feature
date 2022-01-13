@All_Agenda_Tests @Entire_Automation
Feature: Contacts Agenda Management

@CreateContact
Scenario: Create a new contact for the agenda
  Given I am on "http://prova.1dt.com.br/contacts"
  When I click on button "Novo Contato"
  And I fill "Nome" field with "Maria de Teste" value
  And I fill "Número de Telefone" field with "(11) 35350000" value
  And I click on button "Salvar"
  Then I should see "Contato criado com sucesso!"

@SearchContact
Scenario: Search a contact from the agenda
  Given I am on "http://prova.1dt.com.br/contacts"
  And I fill search field with "Pedro" value
  And I click on button "Buscar"
  Then I should see "Pedro Augusto"

@AlterContact
Scenario: Alter a created contact from the agenda
  Given I am on "http://prova.1dt.com.br/contacts"
  When I click to alter where contact name is "Maria de Teste"
  And I fill "Nome" field with "Maria Cucumber" value
  And I click on button "Salvar"
  Then I should see "Contato alterado com sucesso!"

@ExcludeContact
Scenario: Exclude a contact from the agenda
  Given I am on "http://prova.1dt.com.br/contacts"
  When I click to delete where contact name is "Maria Cucumber"
  And I fill search field with "Maria Cucumber" value
  And I click on button "Buscar"
  Then I should see "Nenhum contato encontrado. Tente uma nova pesquisa."