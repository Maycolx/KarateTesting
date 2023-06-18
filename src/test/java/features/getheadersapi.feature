Feature: GET API HEADERS FEATURE
  Background:
    * def baseURL = 'https://gorest.co.in'
  Scenario: pass the user request with headers
    Given header Accept = 'application/json'
    Given header Content-Type = 'application/json'
#    Given headers Authorization = 'Bearer TOKEN'
    Given url baseURL+'/public/v1/users'
    And path '2937961'
    When method GET
    Then status 200
    * print responseHeaders
    * print responseHeaders['Content-Type']
    * print response  
  
  Scenario: pass the user request with headers v2
    Given headers {Accept: 'application/json', Content-Type: 'application/json'}
#    Given headers Authorization = 'Bearer TOKEN'
    Given url baseURL+'/public/v1/users'
    And path '2937961'
    When method GET
    Then status 200
    * print responseHeaders
    * print responseHeaders['Content-Type']
    * print responseHeaders['Accept']
    * print response


  Scenario: pass the user request with headers v3
    * def request_headers =  {Accept: 'application/json', Content-Type: 'application/json'}
    Given headers request_headers
  #    Given headers Authorization = 'Bearer TOKEN'
    When url baseURL+'/public/v1/users'
    And path '2937961'
    When method GET
    Then status 200
    * print responseHeaders
    * print responseHeaders['Content-Type']
    * print responseHeaders['Accept']
    * print response


  Scenario: pass the user request with headers v4
    * configure headers = {Accept: 'application/json', Content-Type: 'application/json'}
#    Given headers Authorization = 'Bearer TOKEN'
    When url baseURL+'/public/v1/users'
    And path '2937961'
    When method GET
    Then status 200
    * print responseHeaders
    * print responseHeaders['Content-Type']
    * print responseHeaders['Accept']
    * print response