require 'capybara/dsl'

class SignUpPage
  include Capybara::DSL

  FIRST_NAME_FIELD = '#member_name'
  SURNAME_FIELD = '#member_surname'
  PRONOUNS_FIELD = '#member_pronouns'
  EMAIL_FIELD = '#member_email'
  DESCRIPTION_FIELD = '#member_about_you'
  NEXT_BTN = '.button.round.right'

  def first_name
    fill_in(FIRST_NAME_FIELD, :with => "test")
  end

  def surname
    fill_in(SURNAME_FIELD, :with => '1234test')
  end

  def pronouns
    fill_in(PRONOUNS_FIELD, :with => 'she')
  end

  def email
    fill_in(EMAIL_FIELD, :with => 'abc@gmail.com')
  end

  def description
    fill_in(DESCRIPTION_FIELD, :with => 'love to code')
  end

  def click_next
    find_link(NEXT_BTN).click
  end

end
