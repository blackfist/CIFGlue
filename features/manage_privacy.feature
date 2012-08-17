Feature: Manage Privacy
  In order to keep track of which indicators can be shared
  As an analyst
  I want to create, list, and edit privacy tags for indicators

  Scenario: Privacy Tag List
    Given I have a privacy tag called "Green"
    When I go to the list of privacy tags
    Then I should see "Green"
