Feature: Manage Indicators 
  In order to keep a relevant list of indictors of compromise
  As an analyst
  I want to create, edit, list, and delete indicators

  Scenario: Indicator List
    Given I have an indicator with content "134.29.1.1", privacy, "Unclassified" and casename "2011VZIR0001"
    When I go to the list of indicators
    Then I should see "134.29.1.1"
  
