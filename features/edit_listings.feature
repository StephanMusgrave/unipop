Feature: Edit Listings

Scenario: Change some information
	Given I am already signed in
	And I have a listing
	And I want to change something
	Then I click the Edit button
	And I complete the edit form
	And I click save changes
	Then I should see my revised listing

Scenario: Cannot edit another user's listing
	Given I am already signed in
	And I visit another user's listing
	Then I should not see an Edit button