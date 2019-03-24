require 'capybara/rspec'

#https://www.rubydoc.info/github/jnicklas/capybara#using-capybara-with-rspec


Capybara.default_driver = :selenium 
Capybara.default_max_wait_time = 5

describe "first test", type: :feature do #add 'type: :feature' if you are not using Rails
#  it "should be able to search and validate" do #bad example as this describes WHAT code is doing instead of how it should behave
   it "should load search results" do
    visit('https://www.kaligo.com')
	find(:xpath, "//div[@class='close-box']").click
	find(:xpath, "//a[@class='select2-choice']").click
    find(:xpath, "//input[@class='select2-input select2-focused']").set "Manila"
	find(:xpath, "//div[@class='select2-result-label' and text()='Manila, Philippines']").click
    click_button('search-form-submit')
	
	
	puts "end of test"
  end
end

