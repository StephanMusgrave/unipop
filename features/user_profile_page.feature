Feature: User profile page
	In order to view information about someone
	As a user of this website
	I want to see a user profile page

Scenario: Visting the user profile page
	Given I visit Ollie's profile page
	Then I should see "Ollie D"
	And I should see a profile picutre
	And I should see "0 items for sale"