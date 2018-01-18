Feature: Events page
  As an user, when I click on a event, I can see more detailed information and subscribe to it

  Scenario: As a user, I am able to see a list of all future events
    Given I am in the Events page
    And I scroll down the page until the footer
    Then I can see a list of all events

  Scenario: As a user, I am able to click on a 'Workshop" and see more details
    Given I am in the Events page
    When I click in Workshop and I am not logged in
    Then I am redirected to that event page
    And I can see the title, company hosting the event, and location

  Scenario: As a user, I want to be able to subscribe to a Workshop
    Given I am in the Events page
    When I click on Workshop and I'm redirected to the event page
    Then I am able to login
    And I can attend as a coach or student

  Scenario: As a user, I want to be able to subscribe to a Workshop
    Given I am in the Events page
    When I click on Workshop and I'm redirected to the event page
    And I click sign up
    Then I am redirected to the sign up page
    And I have to choose to to sign up as a student or coach

  Scenario: As a logged in user, I am able to click on a 'Workshop" and subscribe as a student/coach
    Given I am in the Events page
    When I click on Workshop and I'm redirected to the event page
    Then I am able to see event details
    And I can attend as a coach or student
