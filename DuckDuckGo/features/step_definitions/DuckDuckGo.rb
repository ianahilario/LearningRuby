Capybara.default_driver=:selenium

Given(/^I am on DuckDuckGo$/) do
  visit('http://www.duckduckgo.com')
end

When(/^I type in the search engine with "([^"]*)"$/) do |arg1|
  fill_in('search_form_input_homepage', :with => arg1)
end

When(/^I click Submit$/) do
  click_button('search_button_homepage')
end

Then(/^I should see URL with "([^"]*)"$/) do |arg1|
  expect(page).to have_link(arg1)
end