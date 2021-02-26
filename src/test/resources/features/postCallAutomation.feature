Feature: Practical 2

  @POST
  Scenario: POST scenario

    Given url hostUrl
    Given path 'api/v1/create'
    Given request {"name":"Stewart Carl","salary":"123000","age":"46"}
    When method POST

    Then status 200
    Then match response.data.name == "Stewart Carl"
    Then match response.data.salary == "123000"
    Then match response.data.age == "46"
