Feature: User profile page
	In order to view information about someone
	As a user of this website
	I want to see a user profile page

Background: Sign up as Ollie
	Given I visit the sign up page
	When I fill in "First name" with "Ollie"
	And I fill in "Last name" with "Delevingne"
	And I fill in "Email" with "ollie@one.com"
	And I fill in "Password" with "12345678"
	And I fill in "Password confirmation" with "12345678"
	And I click on "Sign up"

Scenario: Visting the user profile page
	Then I should see "Ollie D"
	And I should see a profile picutre
	And I should see "0 items for sale"