require 'capybara/dsl'

class EventsPage
  include Capybara::DSL

  BUTTON = '.button'

  def visit_events_page
    visit("/events")
  end

  def events_page_content
    page.find(:css, '.events-index')
  end

  def list_events
    page.find(:css, '.event')
    page.find(:id, 'minified')
  end

  def find_workshop
    page.find('section', text: 'Workshop')
  end

  def click_workshop
    find_workshop.click_link('Workshop')
  end

  def find_event
    page.find('section', text: 'Event')
  end

  def click_event
    find_event.click_link('Event')
  end

  def visit_event
    find('p', 'Attend our workshops to learn programming in a safe and supportive environment at your own pace, or to share your knowledge and coach our students.')
  end

  def event_details
    page.find(:css, '.large-12.columns')
    page.find(:css, '.medium-8.columns')
    page.find('h3', 'Venue')
  end

  def click_login
    find_link('Log in')
  end

  def find_coach
    find_link('Attend as a coach')
  end

  def click_coach
    find_coach.click
  end

  def find_student
    find_link('Attend as a student')
  end

  def click_student
    find_student.click
  end

  def find_attend
    find_link('Attend')
  end

  def click_attend
    find_attend.click
  end

  def click_sign_up
    find_link('Sign up').click
  end

  def sign_up_page
    page.find('h2', 'Sign up')
  end

  def click_button(click)
    click_link(click)
  end

end
