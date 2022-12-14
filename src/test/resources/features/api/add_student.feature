
Feature: Add new student
  @add_student
  Scenario: Add new student and verify status code 201
    Given User logged in to Bookit api as teacher role
    When Users sends POST request to "/api/students/student" with following info:
      | first-name      | harold              |
      | last-name       | finch               |
      | email           | haroldEmail78945@gmail.com  |
      | password        | abc123              |
      | role            | student-team-leader |
      | campus-location | VA                  |
      | batch-number    | 8                   |
      | team-name       | Nukes               |
    Then status code should be 201
    And Database should contain same student info
    And User should able to login bookit app using "haroldEmail78945@gmail.com" and "abc123"
    And User deletes previously created student