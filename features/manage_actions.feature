Feature: Manage Actions
    In order to properly map indicators to impacts in CIF
    As an analyst
    I want to create, list, and edit actions for indicators

    Scenario: Action list
        Given I have an action called "botnet" mapped to "botnet"
        When I go to the list of actions
        Then I should see "botnet"
