require 'capybara/rspec'

Capybara.default_driver = :selenium 

describe "first test", type: :feature do #add 'type: :feature' if you are not using Rails
#  it "should be able to search and validate" do #bad example as this describes WHAT code is doing instead of how it should behave
   it "should be load search results" do
    visit('http://www.duckduckgo.com')
    fill_in('search_form_input_homepage', :with => "Canada")
    click_button('search_button_homepage')
    expect(page).to have_link("https://en.wikipedia.org/wiki/Canada")
	puts "end of test"
  end
end

