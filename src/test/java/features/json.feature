Feature: json feature testing

  Scenario: json reader parser
    * def jsonObject =
    """
    [
      {
        "name": "Maycol",
        "city": "Lima",
        "age": 23
      },
      {
        "name": "Mayra",
        "city": "Manizales",
        "age": 30
      }
    ]
    """
    * print karate.pretty(jsonObject[0])
    * print jsonObject[1].name + " " + jsonObject[1].city + " " + jsonObject[1].age
    * print jsonObject



