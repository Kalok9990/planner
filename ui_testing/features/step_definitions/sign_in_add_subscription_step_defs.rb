Given("I am on the dashboard page") do
  navbar.visit_home_page
  sign_in_page.click_sign_in
  sign_in_page.find_username_field
  sign_in_page.fill_in_sign_in_username
  sign_in_page.fill_in_sign_in_password
  sign_in_page.click_sign_in_button
  if github.find_authorization
    github.click_authorization
  end
  expect(current_url).to eq("http://www.codebar.io/dashboard")
end

Given("I click on the edit link next to subscriptions.") do
  sign_in_page.click_edit_button_in_dashboard
end

When("I click on any chapter student subscription") do
  sign_in_page.click_barcelona_student_subscription
end

Then("I should see the appropriate success message informing the user has subscribed as a student") do
  expect(sign_in_page.get_student_success_subscription_message).to include("You have subscribed to Barcelona's Students group").or include("You have unsubscribed from Barcelona's Students group")
  sleep 7
end
