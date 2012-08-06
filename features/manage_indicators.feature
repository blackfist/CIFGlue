Feature: Manage Indicators 
  In order to keep a relevant list of indictors of compromise
  As an analyst
  I want to create, edit, list, and delete indicators

  Scenario: Indicator List
    Given I have an indicator with content "134.29.1.1" and casename "2011VZIR0001"
    When I go to the list of indicators
    Then I should see "134.29.1.1"
  
  Scenario: Search for content 
    Given I have an indicator with content "134.29.1.2" and casename "2011VZIR0001"
    And I have an indicator with content "134.29.1.1" and casename "2011VZIR0001"
    When I go to the list of indicators
    And I search for "134.29.1.2"
    Then I should see "134.29.1.2"
    And I should not see "134.29.1.1"

  Scenario: Filter for MalwareIndicators
    Given I have an indicator with content "134.29.1.1" and casename "2011VZIR0001"
    And I have a MalwareIndicator with content "3b051e7127c16bd091f24e5984fc05a4"
    When I go to the list of indicators
    And I search for MalwareIndicators
    Then I should see "3b051e7127c16bd091f24e5984fc05a4"
    And I should not see "134.29.1.1"
