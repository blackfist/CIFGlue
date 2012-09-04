  Feature: Manage Indicators
    In order to find indicators and create feeds 
    As an analyst
    I want to search for indicators based on content, type, and privacy 

      Scenario: Search for content
        Given I have an indicator with content "134.29.1.2", privacy, "Unclassified" and casename "2011VZIR0001"
        And I have an indicator with content "134.29.1.1", privacy, "Unclassified" and casename "2011VZIR0001"
        When I go to the list of indicators
        And I search for "134.29.1.2"
        Then I should see "134.29.1.2"
        And I should not see "134.29.1.1"
    
      Scenario: Filter for MalwareIndicators
        Given I have an indicator with content "134.29.1.1", privacy, "Unclassified" and casename "2011VZIR0001"
        And I have a MalwareIndicator with content "3b051e7127c16bd091f24e5984fc05a4"
        When I go to the list of indicators
        And I search for MalwareIndicators
        Then I should see "3b051e7127c16bd091f24e5984fc05a4"
        And I should not see "134.29.1.1"
    
      Scenario: Filter for privacy
        Given I have a privacy tag called "Unclassified" with color "Green"
        And I have a privacy tag called "Secret" with color "Red"
        And I have an indicator with content "134.29.1.1" and privacy "Unclassified"
        And I have an indicator with content "134.29.1.8" and privacy "Secret"
        When I go to the list of indicators
        And I search for privacy "Secret"
        Then I should see "134.29.1.8"
        And I should not see "134.29.1.1"
