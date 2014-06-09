Feature: Showing listings
	Listings should be displayed in a grid format

	Scenario: Show no listings
		Given there are no listings displayed
		Then I should see the message "There are no items yet"
		