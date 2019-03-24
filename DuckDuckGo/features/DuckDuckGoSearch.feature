Feature: DuckDuckGo Search

	Scenario: Search for Canada
	
		Given I am on DuckDuckGo
		When I type in the search engine with "Canada"
		And I click Submit
		Then I should see URL with "https://en.wikipedia.org/wiki/Canada"