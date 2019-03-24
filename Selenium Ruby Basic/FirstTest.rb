#
#	First Test - "Cheese" Google Search
#
#	References:
#	https://www.seleniumhq.org/docs/03_webdriver.jsp
#	https://www.rubydoc.info/gems/selenium-webdriver/0.0.28/Selenium/WebDriver
#

#load selenium-webdriver gem
require 'selenium-webdriver'

#initialize webdriver
driver = Selenium::WebDriver.for :firefox
driver.manage.window.maximize
driver.manage.timeouts.implicit_wait = 10 # seconds

#open URL
driver.get "http://google.com/"

#perform search for "Cheese"
element = driver.find_element(:name,'q')
element.send_keys("Cheese")
element.submit

#wait for browser to move to next page
wait = Selenium::WebDriver::Wait.new(:timeout => 10)
wait.until { !driver.title.downcase.start_with? "google"}

#display page title
puts "Page title is '#{driver.title}'"

#verify page title
is_startWith = driver.title.downcase.start_with? "cheese"
puts "Page title starts with 'cheese?' " + is_startWith.to_s

#click first link
element = driver.find_elements(:xpath,'//a/h3')
str_linkText = element[0].text
element[0].click
puts "Clicked 1st link '" + str_linkText + "'"

#kill web driver instance
driver.quit

