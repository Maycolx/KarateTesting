Feature: print hello world

    Scenario: Hello world scenario
    * print 'hello world'
    * print 'this is a second text'

  Scenario: declare and print variables
    * def poke = 200
    * def fee = 20
    * def tax = 10
    * print 'total amount -> '+ poke + fee + tax
    * print 'total amount -> '+ (poke + fee + tax)

  Scenario: Multiply variables
    * def num1 = 10
    * def num2 = 20
    * print 'this number is ' + num1 * num2
