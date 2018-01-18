Given("I am in the Events page") do
  events_page.visit_events_page
end

And("I look at the page content") do
  events_page.events_page_content
end

Then("I can see a list of all events") do
  events_page.list_events
end

When("I click in Workshop and I am not logged in") do
  events_page.click_workshop
end

Then("I am redirected to that event page") do
  events_page.visit_event
end

And("I can see the title, company hosting the event, and location") do
  events_page.event_details
end

Then("I am able to login") do
  events_page.click_login.click_link
end

And("I can attend as a coach or student") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click on Workshop and I'm redirected to the event page") do
  pending # Write code here that turns the phrase above into concrete actions
end

And("I click sign up") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I am redirected to the sign up page") do
  pending # Write code here that turns the phrase above into concrete actions
end

And("I have to choose to to sign up as a student or coach") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I am able to see event details") do
  pending # Write code here that turns the phrase above into concrete actions
end
