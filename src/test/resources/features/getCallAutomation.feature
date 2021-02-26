Feature: Practical 2

  @GET
  Scenario: GET scenario

    Given url hostUrl
    Given path 'api/v1/employee/1'
    When method GET

    Then status 200
    Then match response.data.employee_name contains "Tiger"
    Then assert response.data.employee_salary > 300000
    Then assert response.data.employee_age > 60 && response.data.employee_age < 65

