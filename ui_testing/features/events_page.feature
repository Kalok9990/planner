Feature: Events page
  As a user, when I click on a event, I can see more detailed information and subscribe to it

  Scenario: As a first time user, I am able to see a list of all future events
    Given I am in the Events page
    When I look at the page content
    Then I can see a list of all events

  Scenario: As a first time user, I am able to click on a Workshop or Event and see more details
    Given I am in the Events page
    And I click in Workshop or Event
    When I am redirected to that event page
    Then I can see the title, company hosting the event, and location

  Scenario: As a user previously registered, to subsribe to an event I need to sign up
    Given I am in the Events page
    And I click in Workshop or Event and sign up
    When I press Sign up as a coach
    And I sign into Github
    Then I am redirected to my dashboard page

  # NEED A HOOK IN HERE!!!!!!!! - TO SIGN OUT AFTER THIS SCENARIO
  Scenario: As a user previously registered, to subsribe to an event I need to sign up
    Given I am in the Events page
    And I click in Workshop or Event and sign up
    When I press Sign up as a student
    Then I am redirected to my dashboard page

  # NEED A HOOK IN HERE!!!!!!!! - TO SIGN OUT AFTER THIS SCENARIO
  Scenario: As a user previously registered, to subsribe to an event I need to log in
    Given I am in the Events page
    When I click in Workshop or Event and log in
    And I click attend as a coach or a student
    When I press Attend
    Then I can see a message Thanks for getting back to us...
