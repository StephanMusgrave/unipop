Feature: Delete listing

Scenario: Delete a listing
  Given I have a listing
  And I want to delete my listing
  Then I click delete 
  And I click confirm
  Then I should not see my listing
