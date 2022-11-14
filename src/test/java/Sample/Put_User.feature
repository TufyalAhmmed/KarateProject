Feature: Perform PUT request for user

  Scenario: PUT a single user's info
    * def user =
    """
     {
    "name": "Bokor",
    "job": "SQA"
}
    """
    Given url 'https://reqres.in/api/users/919'
    And request user
    When method PUT
    Then status 200
    And match response.name == "Bokor"
    And match response.job == "SQA"