Feature: Delete a user

  Scenario: Delete Component

    Given url hostUrl
    Given path 'api/v1/delete/'+userId
    And method delete
    Then status 200



