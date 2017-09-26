Feature: Events test
    In order to value
    As a role
    I want feature

Scenario: Create a Events 

* def eventagenda =
"""
{
  "agenda": [
    {
      "aId": 1,
      "description": "paper presentation",
      "instructor": "All the best",
      "time": "10 AM"
    }
  ],
  "date": "15/9/2017",
  "edition": 7,
  "id": 1,
  "isActive": true,
  "location": "Coimbatore"
}
"""


Given url 'http://localhost:8080/api/events/post'
And request eventagenda
When method post
Then status 201

Scenario: Get all Events

Given url 'http://localhost:8080/api/events/get'
When method get
Then status 200


Scenario: Delete a Event
* def val = '1'
Given url 'http://localhost:8080/api/events/delete/1'
And request val
When method delete
Then status 500


Scenario: update the Event

* def event1 =
"""
{
  "agenda": [
    {
      "aId": 1,
      "description": "code debugging",
      "instructor": "All the best",
      "time": "10 AM"
    }
  ],
  "date": "15/9/2017",
  "edition": 7,
  "id": 1,
  "isActive": true,
  "location": "Coimbatore"
}
"""
Given url 'http://localhost:8080/api/events/put/1'
And request event1 
When method put
Then status 200


