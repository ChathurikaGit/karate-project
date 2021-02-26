Feature: Setup Basic flow

  @BASIC_FLOW
  Scenario Outline: Setup basic flow

    Given def postCall = call read('classpath:data/reusableComponent/postComponent.feature')

    * def userId = postCall.response.id
    #comment for test
    Then match postCall.name == name
    Then match postCall.salary == salary
    Then match postCall.age == age

    Given def putCall = call read('classpath:data/reusableComponent/putComponent.feature')


    Given def deleteCall = call read('classpath:data/reusableComponent/deleteComponent.feature')


    Examples:
    | read('classpath:data/csv/postInputData.csv') |

