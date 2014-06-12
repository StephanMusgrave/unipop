Feature: Edit user profile
	In order to edit my profile
	As a logged in user
	I want to see the edit user profile page

Background: I am signed in As Ollie
	Given I am already signed in

Scenario: Edit default profile information
	Given I visit the edit profile page
	And I change my first name to Nick
	Then I should see Nick on the profile page