Feature: User profile page
	In order to view information about someone
	As a user of this website
	I want to see a user profile page

Background: Sign up as Ollie
	Given I am already signed in
	And I visit Ollie's page

Scenario: Visting the user profile page
	Then I should see "Ollie D"
	And I should see a profile picture
	And I should see "0 items for sale"