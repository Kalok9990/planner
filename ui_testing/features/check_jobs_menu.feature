Feature: Check job listing
  As an user, when I click on donate, a pop up will come up for bank details

  Scenario: As a user, I should be able to view all job listings
    Given I am on the dashboard page
    When I click on the menu tab
    And I click on Jobs
    Then I should be able to see all the jobs listed
