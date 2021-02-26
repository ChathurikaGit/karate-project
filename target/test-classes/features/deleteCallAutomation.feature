Feature: Practical 3

  @DELETE
  Scenario: Delete Scenario

    Given url hostUrl
    Given path 'api/v1/delete/2'
    And method delete
    Then status 200
    And print 'Response is: ', response

    Then match response.data == "2"
    Then match response.message == "Successfully! Record has been deleted"
    Then match response.status == "success"