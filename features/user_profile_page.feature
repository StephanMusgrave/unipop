Feature: User profile page
	In order to view information about someone
	As a user of this website
	I want to see a user profile page

Background: Sign up as Ollie
	Given I am already signed in

Scenario: Default profile information
	Given I visit Ollie's page
	Then I should see "Ollie D"
	And I should see "0 items for sale"

Scenario: Uploading a profile picture
	Given I visit Ollie's page
	And I upload a profile picture
	And I should see a profile picture