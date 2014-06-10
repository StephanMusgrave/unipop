Feature: User profile page
	In order to view information about someone
	As a user of this website
	I want to see a user profile page

Scenario: Default profile information
	Given I am already signed in
	And I visit Ollie's page
	Then I should see "Ollie D"
	And I should see "0 items for sale"

Scenario: Uploading a profile picture
	Given I am already signed in
	And I visit Ollie's page
	And I upload a profile picture
	And I click on "Update User"
	Then I should see a profile picture
	And I should not see a default profile picture

Scenario: Can only change your own profile picture
	Given I am signed in
	And I visit Louise's profile
	Then I should not see "Update User"

Scenario: Signing out
	Given I am already signed in
	Given I visit Ollie's page
	Then I click on "Sign out"
	And I should be signed out	

Scenario: Visiting a user profile when not signed in
	Given I am already signed in
	Given I visit Ollie's page
	Then I click on "Sign out"
	Then I visit Ollie's page
	Then I should see "Sign in"