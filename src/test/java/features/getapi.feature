Feature: GET API
  Background:
    * def baseURL = 'https://gorest.co.in'

  Scenario: get users success
    Given url baseURL+'/public/v2/users/'
    And path '1747'
    When method GET
    Then status 200
    * def save = response
    * def name = save.name
    * print name
    Then match name == 'Radha Nehru'

  Scenario: get users fail
    Given url 'https://gorest.co.in/public/v2/users/'
    And path '20'
    When method GET
    Then status 404

  Scenario: get pokemons
    Given url 'https://pokeapi.co/api/v2/pokemon'
    And path 'squirtle'
    When method GET
    Then status 200
    * def save = response
    * def name = save.name
    * print name
    Then match name == 'charizard'