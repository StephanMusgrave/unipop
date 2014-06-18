Feature: User profile page
	In order to view information about someone
	As a user of this website
	I want to see a user profile page

Background: I am signed in As Ollie
	Given I am already signed in

Scenario: Default profile information
	Given I visit Ollie's page
	Then I should see "Ollie D"
	And I should see "0 items for sale"
	And I should see a default profile picture

Scenario: Uploading a profile picture
	Given I visit Ollie's page
	And I upload a profile picture
	Then I should see a profile picture
	And I should not see a default profile picture

Scenario: Can only change your own profile picture
	Given I visit Louise's page
	Then I should not see "Update User"

Scenario: Signing out
	Given I visit Ollie's page
	Then I click on "Sign out"
	And I should be signed out

Scenario: You cannot visit a user profile unless signed in
	Given I visit Ollie's page
	Then I click on "Sign out"
	Then I visit Ollie's page
	Then I should see "Sign in"

Scenario: View user's items for sale
	Given Ollie has 1 listing for sale
	When I visit Ollie's page
	Then I should see 1 item for sale

Scenario: The edit button
	Given I visit Ollie's page
	And I click on "Edit profile"
	Then I should be redirected to an edit page

