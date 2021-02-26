Feature: update a user

  Scenario: PUT component

    Given url hostUrl
    Given path 'public/api/v1/update/'+ userId
    #When request { "name":"Stewart Carl", "salary":"123000", "age":"46" }
    * def putRequest = read('classpath:data/json/request.json')

    * set putRequest.name = updatedName
    * set putRequest.salary = updatedSalary
    * set putRequest.age = updatedAge

    When request putRequest
    And method put
    Then status 200

