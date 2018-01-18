require 'capybara/dsl'

class EventsPage
  include Capybara::DSL

  def visit_events_page
    visit("/events")
  end

  # def visit_footer
  #   scroll_to(page.find("footer", text: 'Tutorials'))
  # end

end
