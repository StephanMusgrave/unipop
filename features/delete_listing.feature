Feature: Delete listing
@javascript

Scenario: Deleting my own listing
	Given I am already signed in
  And I want to delete my listing
  Then I click delete 
  And I click OK to confirm
  Then I should not see my listing

 Scenario: Can't delete another user's listing

 Given I am already signed in
 And I visit another user's listing
 Then I should not see a delete button
