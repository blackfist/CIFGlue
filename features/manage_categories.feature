Feature: Manage Categories 
    In order to properly map indicators to impacts in CIF
    As an analyst
    I want to create, list, and edit categories for indicators

    Scenario: User adds a category 
        Given I go to the new category page
        And I fill in "category[name]" with "Botnet"
        And I fill in "category[impact]" with "Botnet"
        When I click "Create Category"
        Then I should be on the category list page
        And I should see "Botnet"
        And I should see a success message for "Botnet"
