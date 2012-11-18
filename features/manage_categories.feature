Feature: Manage Categories 
    In order to properly map indicators to impacts in CIF
    As an analyst
    I want to create, list, and edit categories for indicators

    Scenario: User adds a category 
        Given I go to the new category page
        And I fill in "category[name]" with "Botnet"
        And I select "Botnet" from "category[impact]"
        When I click "Create Category"
        Then I should be on the category list page
        And I should see "Botnet"
        And I should see a success message for "Botnet"

    Scenario: User lists the categories
        Given I have a category called "botnet"
        When I go to the category list page
        Then I should see "botnet"

    Scenario: User tries to create a duplicate category
        Given I have a category called "botnet"
        And I go to the new category page
        And I fill in "category[name]" with "botnet"
        And I select "Botnet" from "category[impact]"
        When I click "Create Category"
        Then I should be on the new category page
        And I should see an error message for "Botnet"

