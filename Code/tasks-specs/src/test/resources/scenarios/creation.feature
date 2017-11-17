Feature: Creation of tasks

  Background:
    Given there is a Tasks server

  Scenario: create a task
    Given I have a task payload
    When I POST it to the /task endpoint
    Then I receive a 200 status code

  Scenario: create a task
    Given I have a task payload
    When I POST it to the /task endpoint
    Then I receive a 403 status code


Feature: Presents the list of all the tasks existing in the system

  Background:
      Given there is a Tasks server

  Scenario: get a list of tasks existing
    Given: I have nothing
    When I GET it to the /task endpoint
    Then I receive a 200 status code




Feature: Get a task with its id

  Background:
    Given there is a Tasks server

  Scenario:get a precise task
    Given: I have a task id
    When I GET it to the /tasks/{task_id} endpoint
    Then I receive a 200 status code