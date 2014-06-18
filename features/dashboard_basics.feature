Feature: A user's dashboard
	In order have a control center
	As a logged in user
	I want to to see listings that I want and I am selling

Background: Being logged in
	Given Ollie is signed in
	And Ollie doesn't have any listings to sell

Scenario: Ollie wants no listings
	Given Ollie visits his profile page
	Then Ollie should see "You want 0 items."
	And Ollie should see link "Browse"

Scenario: Ollie wants one listing
	And Louise has one notebook for sale
	And Ollie is signed in
	And Ollie wants Louise's notebook
	And Ollie visits "dashboard"
	Then Ollie should see "You want 1 item."

Scenario: Ollie wants two listings
	And Louise has one notebook for sale
	And Steve has an iphone for sale
	And Ollie is signed in
	And Ollie wants Louise's notebook
	And Ollie wants Steve's iphone
	And Ollie visits his profile page
	Then Ollie should see "You want 2 items."

Scenario: Ollie has no listings to sell
	And Ollie visits "dashboard"
	Then Ollie should see "You are selling 0 items."
	And Ollie should see link "Add something to sell"

Scenario: Ollie has one football for sale
	And Ollie has one football for sale
	And Ollie visits "dashboard"
	Then Ollie should see "You are selling 1 item."

Scenario: Ollie has two listings for sale
	And Ollie has one football and one bike for sale
	And Ollie visits "dashboard"
	Then Ollie should see "You are selling 2 items."






