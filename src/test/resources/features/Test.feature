Feature: Test

  Background:

    * print searchUrl

  @Test
  Scenario: First test scenario

    Given def num1 = 4
    Given def num2 = 2

    Then assert num1 + num2 == 6
    Then assert num1 - num2 == 2
    Then assert num1 * num2 == 8
    Then assert num1 / num2 == 2
