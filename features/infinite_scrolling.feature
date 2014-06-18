Feature: Scrolling the listings
	Listings should be displayed as we keep scrolling

Scenario: Homepage infinite scrolling
	Given I am on the homepage
	And I reach the end of the page
	I want to see more listings

Scenario: User profile infinite scrolling