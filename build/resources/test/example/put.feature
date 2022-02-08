Feature: PUT DEMO
  Background:
    * def urlBase = 'https://reqres.in'
    * def loginPath = '/api/users/2'

    Scenario Outline: Put demo 1
      Given  url urlBase + loginPath
      And request { 'name': <name> , 'job': <job> }
      When method PUT
      Then status <status_code>
      And print response
      And print responseStatus

      Examples:
        |name   |job       | status_code |
        |'bugh' |'fireman' | 200         |
