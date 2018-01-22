Given("I am in the Events page") do
  events_page.visit_events_page
end

When("I look at the page content") do
  events_page.events_page_content
end

Then("I can see a list of all events") do
  events_page.list_events
end

And("I click in Workshop or Event") do
  if events_page.find_event
    events_page.click_event
  # if events_page.find_workshop
  #   events_page.click_workshop
  else
    events_page.click_workshop
  end
end

When("I am redirected to that event page") do
  events_page.visit_event
end

Then("I can see the title, company hosting the event, and location") do
  events_page.event_details
end

When("I click in Workshop or Event and sign up") do
  if events_page.find_workshop
    events_page.click_workshop
  else
    events_page.click_event
  end
  events_page.click_sign_up
end

When("I click in Workshop or Event and log in") do
  if events_page.find_workshop
    events_page.click_workshop
  else
    events_page.click_event
  end
  events_page.click_login.click
end

And("I click attend as a coach or a student") do
  if events_page.find_student
    events_page.click_student
  else
    events_page.click_coach
  end
end

# When(/^I press (.*)$/) do |press|
#   events_page.click_button(press)
# end

When("I press Sign up as a coach") do
  events_page.click_button(" coach")
end

When("I press Sign up as a student") do
  events_page.click_button(" student")
end

When("I press Attend") do
  events_page.click_button("Attend")
end

And("I sign into Github") do
  github.fill_username('Faker321')
  github.fill_password('test123')
  github.click_submit
end

Then("I am redirected to my dashboard page") do
  if github.find_authorization
    github.click_authorization
  end
  sign_in_page.find_dashboard
end

Then("I can see a message Thanks for getting back to us...") do
  pending # Write code here that turns the phrase above into concrete actions
end




#
# And("I have to fill my form details") do
#   github.fill_username('Faker321')
#   github.fill_password('test123')
#   github.click_submit
#   sign_up_page.full_form
#   sign_up_page.click_next
# end
