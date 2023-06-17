Feature: Test APIS from booking

  Background:
    * def urlBooking = 'https://restful-booker.herokuapp.com'
  Scenario: Generate Token
    Given url urlBooking+'/auth'
    And request { "username": "admin", "password": "password123" }
    And headers {"Content-Type": "application/json"}
    When method post
    Then status 200
    And match response == { "token": "#present" }
    * print response

    Scenario: Bookign get id
      Given url urlBooking+'/booking'
      When method get
      Then status 200
      * print response
      * def firstFiveElements = response.subList(0, 2)
      * print firstFiveElements
      * match each response == { id: '#regex \\d+' }