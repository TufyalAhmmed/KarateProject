Feature: Perform Delete request for user

  Scenario: Delete a single user's info
    * def user =
    """
     {
    "name": "Bokor",
    "job": "SQA"
}
    """
    Given url 'https://reqres.in/api/users/919'
    And request user
    When method DELETE
    Then status 204