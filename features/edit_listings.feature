Feature: Edit Listings

Scenario: Change some information
Given I have a listing
And I want to change something
Then I click the Edit button
And I complete the edit form
And I click save changes
Then I should see my revised listing