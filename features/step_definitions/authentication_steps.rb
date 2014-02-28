
When(/^I go to the homepage$/) do
  visit root_path
end

When(/^I follow "(.*?)"$/) do |link|
  click_link(link)
end

When(/^I press "(.*?)"$/) do |text|
  click_button(text)
end

When(/^I click "(.*?)"$/) do |link|
  click_link(link)
end

Then(/^I should see(?::)? "(.*?)"$/) do |text|
  page.should have_content(text)
end

Then(/^I should not see "(.*?)"$/) do |text|
  page.should_not have_content(text)
end

When(/^I fill in "(.*?)" for "(.*?)"$/) do |content, field|
  fill_in(field, with: content)
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |field, content|
  fill_in(field, with: content)
end

Given(/^the user "(.*?)" with "(.*?)"$/) do |email, password|
  User.create(email: email, password: password, password_confirmation: password)
end

Given(/^I am on the sign in page$/) do
  visit new_user_session_path
end

Given(/^I am on my profile page$/) do
  visit user_path(User.find(id: id))
end

Then(/^I select "(.*?)" from "(.*?)"$/) do |value, field|
  select(value, :from => field)
end

