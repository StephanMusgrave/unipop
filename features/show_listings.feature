Feature: Showing listings
	Listings should be displayed in a grid format

	Scenario: Show no listings
		Given I am on the homepage
		And there are no listings
		Then I should see the message "There are no items yet"

	Scenario: Show one listing
		Given there is one listing
		And I am on the homepage
		Then I should see "Makers Notebook for sale"