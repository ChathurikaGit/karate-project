Feature: Practical 3

  @PUT
  Scenario: PUT scenario

    Given url hostUrl
    Given path 'public/api/v1/update/21'
    When request { "name":"Stewart Carl", "salary":"123000", "age":"46" }
    And method put
    Then status 200

    And print 'Response is: ', response

#    Then match response $== {status : '#ignore'}
#    Then match response.data $== {name : '#string', salary : '#present', age : '#regex[0-9]+' , age : '#string'}

    Then match response.status == '#ignore'
    Then match response.data.name == '#string'
    Then match response.data.salary == '#present'
    Then match response.data.age == '#regex[0-9]+'
    
#    Then match response.data.name == "Stewart Carl"
#    Then match response.data.salary == "123000"
#    Then match response.data.age == "46"
#
#    Then match response.message == "Successfully! Record has been updated."
#    Then match response.status == "success"



