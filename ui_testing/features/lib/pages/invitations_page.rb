require 'capybara/dsl'

class Invitation
  include Capybara::DSL

  STUDENT_TEXT = 'Sign up as a student'
  COACH_TEXT = 'Sign up as a coach'
  WORKSHOP_TEXT = 'Host a workshop'


end
