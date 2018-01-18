require_relative '../lib/pages/footer'
require_relative '../lib/pages/tutorials_page'
require_relative '../lib/pages/navbar'
require_relative '../lib/pages/socialmedia'
require_relative '../lib/pages/events_page'

module CodeBar

  def navbar
    NavBar.new
  end

  def footer
    CodeBarFooter.new
  end

  def tutorials_page
    TutorialsPage.new
  end

  def events_page
    EventsPage.new
  end

end
