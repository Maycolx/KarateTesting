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

  Scenario: json reader
    * def json =
    """
    {
    "menu": {
      "id": "file",
      "value": "File",
      "popup": {
        "menuitem": [
          {"value": "New", "onclick": "CreateNewDoc()"},
          {"value": "Open", "onclick": "OpenDoc()"},
          {"value": "Close", "onclick": "CloseDoc()"}
        ]
      }
    }
    }
    """
    * print json
    * print json.menu.popup.menuitem[0].value
    * print json.menu.popup.menuitem[1].value
    * print json.menu.popup.menuitem[2].value



