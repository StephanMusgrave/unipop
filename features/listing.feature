Feature: A listing
	In order do stuff with the relationship between a seller and a listing
	As a listing
	A listing should know that it has a seller

Scenario: Making a new listing
	Given I am already signed in
	And I want to sell some stuff
	Then I should be able to post a listing
	And the listing should belong to me
	And the seller of the listing should be me


