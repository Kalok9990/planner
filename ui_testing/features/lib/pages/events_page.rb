require 'capybara/dsl'

class EventsPage
  include Capybara::DSL

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

  def click_workshop
    page.find('section', text: 'Workshop').click_link('Workshop')
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

  def find_button
    page.find(:css, '.button.round')
  end

  def click_coach

  end

  def find_student

  end

  def click_student

  end

end
