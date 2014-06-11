Feature: A user's dashboard
	In order have a control center
	As a logged in user
	I want to to see listings that I want and I am selling

Background: Being logged in
	Given I am already signed in
	And there is a listing

Scenario: No listings that I want
	Given I don't want any listings
	Then I should see "Get some stuff man"
	And I should see link "Browse"
