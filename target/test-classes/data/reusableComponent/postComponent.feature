Feature: Create a user

  Scenario: POST component

    Given url hostUrl
    Given path 'api/v1/create/'

    * def postRequest = read('classpath:data/json/request.json')
    #Given request {"name":"Stewart Carl","salary":"123000","age":"46"}
    #When method POST

    * set postRequest.name = name
    * set postRequest.salary = salary
    * set postRequest.age = age

    When request postRequest
    When method POST
    Then status 201

    * print response


