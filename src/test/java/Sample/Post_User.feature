Feature: Perform POST requests for user

  Scenario: Create a single user
    * def user =
    """
    {
    "name": "Abu",
    "job": "SQA"
    }
    """
    Given url 'https://reqres.in/api/users'
    And request user
    When method POST
    Then status 201
    And match response.name == "Abu"
    And match response.job == "SQA"