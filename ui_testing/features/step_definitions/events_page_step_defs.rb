# Given("I am in the Events page") do
#   events_page.visit_events_page
# end
#
# And("I look at the page content") do
#   events_page.events_page_content
# end
#
# Then("I can see a list of all events") do
#   events_page.list_events
# end
#
# When("I click in Workshop and I am not logged in") do
#   events_page.click_workshop
# end
#
# Then("I am redirected to that event page") do
#   events_page.visit_event
# end
#
# And("I can see the title, company hosting the event, and location") do
#   events_page.event_details
# end
#
# Then("I am able to login") do
#   events_page.click_login.click
#   github.fill_username('Faker321')
#   github.fill_password('test123')
#   github.click_submit
# end
#
# When("I click on Workshop and I'm redirected to the event page") do
#   events_page.click_workshop
#   events_page.visit_event
# end
#
# And("I click sign up") do
#   events_page.click_sign_up
# end
#
# Then("I am redirected to the sign up page") do
#   events_page.sign_up_page
# end
#
# And("I have to choose to sign up as a student or coach") do
#   if newmember.find_sign_up_student
#     newmember.click_sign_up_student
#     newmember.find_dashboard
#   else newmember.find_sign_up_coach
#     newmember.click_sign_up_coach
#     newmember.find_dashboard
#   end
# end
#
# And("I can attend as a coach or student") do
#   if events_page.find_coach
#     events_page.click_coach
#   elsif
#     events_page.click_attend
#   end
#   events_page.click_student
# end
#
# Then("I am able to see event details") do
#   pending # Write code here that turns the phrase above into concrete actions
# end




# ---------------------------------------------------------------

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
  if events_page.find_workshop
    events_page.click_workshop
  else
    events_page.click_event
  end
end

When("I am redirected to that event page") do
  events_page.visit_event
end

Then("I can see the title, company hosting the event, and location") do
  events_page.event_details
end

And("I click in Workshop or Event and sign up") do
  if events_page.find_workshop
    events_page.click_workshop
  else
    events_page.click_event
  end
  events_page.click_sign_up
end

When(/^I press (.*)$/) do |press|
  events_page.click_button(press)
end

And("I have to fill my form details") do
  github.fill_username('Faker321')
  github.fill_password('test123')
  github.click_submit
  sign_up_page.full_form
  sign_up_page.click_next
end

When("I, as a student, choose between London, Brighton and Cambridge") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I am redirected to my profile page") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I, as a coach, choose between London, Brighton and Cambridge") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click in Workshop or Event and log in") do
  if events_page.find_workshop
    events_page.click_workshop
  else
    events_page.click_event
  end
  events_page.click_login.click
end

Then("I am redirected to my dashboard page") do
  pending # Write code here that turns the phrase above into concrete actions
end

And("I authorize my Github page") do
  pending # Write code here that turns the phrase above into concrete actions
end

And("I click attend as a coach or a student") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I can see a message Thanks for getting back to us...") do
  pending # Write code here that turns the phrase above into concrete actions
end
