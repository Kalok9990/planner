# Feature: Events page
#   As an user, when I click on a event, I can see more detailed information and subscribe to it
#
#   Scenario: As a user, I am able to see a list of all future events
#     Given I am in the Events page
#     And I look at the page content
#     Then I can see a list of all events
#
#   Scenario: As a user, I am able to click on a 'Workshop" and see more details
#     Given I am in the Events page
#     When I click in Workshop and I am not logged in
#     Then I am redirected to that event page
#     And I can see the title, company hosting the event, and location
#
#   Scenario: As a user, I want to be able to subscribe to a Workshop
#     Given I am in the Events page
#     When I click on Workshop and I'm redirected to the event page
#     And I click sign up
#     Then I am redirected to the sign up page
#     And I have to choose to sign up as a student or coach
#
#   Scenario: As a user, I want to be able to subscribe to a Workshop
#     Given I am in the Events page
#     When I click on Workshop and I'm redirected to the event page
#     Then I am able to login
#     And I can attend as a coach or student
#
#   Scenario: As a logged in user, I am able to click on a 'Workshop" and subscribe as a student/coach
#     Given I am in the Events page
#     When I click on Workshop and I'm redirected to the event page
#     Then I am able to see event details
#     And I can attend as a coach or student


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

  Scenario Outline: As a first time user, to subsribe to an event I need to sign up
    Given I am in the Events page
    And I click in Workshop or Event and sign up
    When I press <button>
    And I have to fill my form details
    When I, as a student, choose between London, Brighton and Cambridge
    Then I am redirected to my profile page
  # NEED A HOOK IN HERE!!!!!!!! - TO RESET THE DATABASE
  Scenario Outline: As a first time user, to subsribe to an event I need to sign up
    Given I am in the Events page
    And I click in Workshop or Event and sign up
    When I press <button>
    And I have to fill my form details
    When I, as a coach, choose between London, Brighton and Cambridge
    Then I am redirected to my profile page
  # NEED A HOOK IN HERE!!!!!!!! (SAME AS BEFORE)
  Scenario: As a first time user, to subsribe to an event I need to log in
    Given I am in the Events page
    When I click in Workshop or Event and log in
    And I have to fill my form details
    When I, as a student, choose between London, Brighton and Cambridge
    Then I am redirected to my profile page
  # NEED A HOOK IN HERE!!!!!!!! (SAME AS BEFORE)
  Scenario: As a first time user, to subsribe to an event I need to log in
    Given I am in the Events page
    When I click in Workshop or Event and log in
    And I have to fill my form details
    When I, as a coach, choose between London, Brighton and Cambridge
    Then I am redirected to my profile page

  Scenario Outline: As a user previously registered, to subsribe to an event I need to sign up
    Given I am in the Events page
    And I click in Workshop or Event and sign up
    When I press <button>
    Then I am redirected to my dashboard page
  # NEED A HOOK IN HERE!!!!!!!! - TO SIGN OUT AFTER THIS SCENARIO
  Scenario Outline: As a user previously registered, to subsribe to an event I need to sign up
    Given I am in the Events page
    And I click in Workshop or Event and sign up
    When I press <button>
    And I authorize my Github page
    Then I am redirected to my dashboard page
  # NEED A HOOK IN HERE!!!!!!!! - TO SIGN OUT AFTER THIS SCENARIO
  Scenario Outline: As a user previously registered, to subsribe to an event I need to log in
    Given I am in the Events page
    When I click in Workshop or Event and log in
    And I click attend as a coach or a student
    When I press <button>
    Then I can see a message Thanks for getting back to us...


    Examples:
    | button               |
    | Sign up as a student |
    | Sign up as a coach   |
    | Attend               |
