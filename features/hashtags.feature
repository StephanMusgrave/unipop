Feature: Making a listing with a hashtag
	In order to allow other users to search for my listing
	As a seller
	I want to create a listing with hastags

Background: Logging in as Ollie
	Given Ollie is signed in
	And Ollie is on the correct page to create a listing

Scenario: Adding a new hashtag
	Given I can see a "Hashtags" field
	When I fill in the "Hashtags" field with "bottle, water, 750ml"
	And I click on "Add my stuff"
	Then I should be on my "dashboard"


