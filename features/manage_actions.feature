Feature: Manage Actions
    In order to properly map indicators to impacts in CIF
    As an analyst
    I want to create, list, and edit actions for indicators

    Scenario: User adds an action
        Given I go to the new action page
        And I fill in "Action" with "Botnet"
        And I fill in "Impact" with "Botnet"
        When I click "Create"
        Then I should be on the action list page
        And I should see "Botnet"
        And I should see a success message for "Botnet"
