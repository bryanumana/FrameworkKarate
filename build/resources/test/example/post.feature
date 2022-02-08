Feature: POST DEMO

  Background:
    * def urlBase = 'https://reqres.in'
    * def loginPath = '/api/users'

  @scenario1
  Scenario: Post demo 1
    Given url 'https://reqres.in/api/users'
    And request {"name": "bugh", "job": "teacher"}
    When method POST
    Then status 201
    And print response

  @scenario2
  Scenario: Post demo 2
    Given url urlBase + loginPath
    And request {"name": "bugh", "job": "teacher"}
    When method POST
    Then status 201
    And print response

  @scenario3
  Scenario: Post demo 3
    Given url urlBase + loginPath
    And def requestBody = read('request1.json')
    And request requestBody
    When method POST
    Then status 201
    And print response

