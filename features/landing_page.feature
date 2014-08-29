Feature: Showing a landing page
	In order to have an introduction to the application
	As a logged out user
	I want to see a landing page

Backgound:
	Given I am on the homepage
	Given I am not logged in

Scenario: Show a welcome message
	Then I should see a messege "Welcome to unipop!"