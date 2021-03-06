Feature: Configuration Panel
  As an administrator
  I want to be able to configure the plugin
  So it will work with how I setup my Redmine

  Scenario: Configuration link
    Given the plugin is configured
    And I am an Administrator
    And I am on the plugin administration page
    Then I should see a "Configure" link for "Kanban"

  Scenario: Configuration
    Given the plugin is configured
    And I am an Administrator
    And I am on the plugin administration page

    When I follow "Configure"
    Then I am on the Kanban configuration page
    And I should see "Settings: Kanban"

    And I should see "General Settings"
    And there should be a select field to pick the role for the "Staff Requests" pane

    And I should see "Pane Settings"
    And there should be a select field to pick the status for the "Incoming" pane
    And there should be a select field to pick the status for the "Backlog" pane
    And there should be a select field to pick the status for the "Selected" pane
    And there should be a select field to pick the status for the "Active" pane
    And there should be a select field to pick the status for the "Testing" pane

    And there should be a text field to enter the item limit for the "Incoming" pane
    And there should be a text field to enter the item limit for the "Backlog" pane
    And there should be a text field to enter the item limit for the "Quick Tasks" pane
    And there should be a text field to enter the item limit for the "Selected" pane
    And there should be a text field to enter the item limit for the "Active" pane
    And there should be a text field to enter the item limit for the "Testing" pane
    
    
  Scenario: Changing the configuration
    Given the plugin is configured
    And I am an Administrator
    And I am on the Kanban configuration page

    When I select the role for "staff_role"
    And I select the "New" issue status for "Incoming"
    And I fill in the "Incoming" limit with "10"
    And I select the "Unstaffed" issue status for "Backlog"
    And I fill in the "Backlog" limit with "25"
    And I fill in the "Quick Tasks" limit with "25"
    And I select the "Selected" issue status for "Selected"
    And I fill in the "Selected" limit with "20"
    And I select the "Active" issue status for "Active"
    And I fill in the "Active" limit with "10"
    And I select the "Test-N-Doc" issue status for "Testing"
    And I fill in the "Testing" limit with "15"
    And I press "Apply"

    Then I am on the Kanban configuration page
    And the plugin should save my settings

