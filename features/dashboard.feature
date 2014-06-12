Feature: A user's dashboard
	In order have a control center
	As a logged in user
	I want to to see listings that I want and I am selling

Background: Being logged in
	Given Ollie is signed in
	And Ollie doesn't have any listings to sell

Scenario: Ollie wants no listings
	Given Ollie visits "dashboard"
	Then Ollie should see "You want 0 items"
	And Ollie should see link "Browse"

Scenario: Ollie has no listings to sell
	And Ollie visits "dashboard"
	Then Ollie should see "You are selling 0 items"
	And Ollie should see link "Add something to sell"

Scenario: Ollie has one football for sale
	And Ollie has one football as a listing
	And Ollie visits "dashboard"
	Then Ollie should see "You are selling 1 item"

Scenario: Ollie has wants
	And Louise has one notebook as a listing
	And Ollie is signed in
	And Ollie wants Louise's notebook
	And Ollie visits "dashboard"
	Then Ollie should see "You want 1 item"


