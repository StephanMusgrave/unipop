Feature: adding listings

	Scenario: add a new listing
		Given I am already signed in
		And I want to sell some stuff
		Then I should be able to post a listing
		And the listing should belong to seller
    And I can see a picture
		