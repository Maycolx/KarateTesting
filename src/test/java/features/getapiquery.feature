Feature: GET API wih query params
  Background:
    * def baseURL = 'https://gorest.co.in'

  Scenario: All user active and female
    * def param = {status: 'active', gender: 'female'}
    Given url baseURL+'/public/v2/users/'
    And params param
    When method GET
    Then status 200
    * print response

  Scenario: All user active and Male
    * def param = {status: 'active', gender: 'male'}
    Given url baseURL+'/public/v1/users/'
    And params param
    When method GET
    Then status 200
    * def json = response
    * def userCount = json.data.size()
    * print userCount
    * def allCount = json.data.length
    * print allCount

  Scenario: All pokemon
    * def param = {offset: 5, limit: 5}
    Given url 'https://pokeapi.co/api/v2/pokemon/'
    And params param
    When method GET
    Then status 200
    * print response
    * def json = response
    * def userCount = json.results.size()
#    * print userCount
#    * def allCount = json.results.length
#    * print allCount
#    * match userCount == 20
#    * match allCount == 20