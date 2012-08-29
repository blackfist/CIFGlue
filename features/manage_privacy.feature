Feature: Manage Privacy
  In order to keep track of which indicators can be shared
  As an analyst
  I want to create, list, and edit privacy tags for indicators

  Scenario: Privacy Tag List
    Given I have a privacy tag called "Green"
    When I go to the list of privacy tags
    Then I should see "Green"
  
  Scenario: Analyst adds a new privacy tag
    Given I go to the new privacy tag page
    And I fill in "privacy_tag[content]" with "Green"
    When I click "Create"
    Then I should be on the privacy tag page
    And I should see "Green"
    And I should see a success message for "Green"
  
  Scenario: Analyst adds a new indicator
    Given I have a privacy tag called "Green"
    When I go to the new indicator form
    Then I should see "Green"

  Scenario: Analyst adds a duplicate privacy tag
    Given I have a privacy tag called "Green"
    When I try to create another tag called "Green"
    Then I should be on the new privacy tag page
    And I should see an error message for "Green"
