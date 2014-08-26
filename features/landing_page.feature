Feature: Showing a landing page
	In order to have an introduction to the application
	As a logged out user
	I want to see a landing page

Scenario: Show a welcome message
	Given I am on the homepage
	And I am not logged in
	Then I should see the message "Welcome to unipop!"