Feature: Perform GET request

  Scenario: Perform get request for single user
    Given url 'https://reqres.in/api/users/1'
    When method GET
    Then status 200
    And match response.data == {"id":1,"email":"george.bluth@reqres.in","first_name":"George","last_name":"Bluth","avatar":"https://reqres.in/img/faces/1-image.jpg"},"support":{"url":"https://reqres.in/#support-heading","text":"To keep ReqRes free, contributions towards server costs are appreciated!"}

    Scenario: Perform get request for all user
      Given url 'https://reqres.in/api/users'
      When method GET
      Then status 200
