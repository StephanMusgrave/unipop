Feature: A user's dashboard
	In order have a control center
	As a logged in user
	I want to to see listings that I want and I am selling

Background: Being logged in
	Given I am already signed in
	And there is a listing
	And I visit "dashboard"

Scenario: I want no listings
	Given I don't want any listings
	Then I should see "You want 0 items"
	And I should see link "Browse"

Scenario: I have no listings to sell
	Given I don't have any listings to sell
	Then I should see "You are selling 0 items"
	And I should see link "Add something to sell"

