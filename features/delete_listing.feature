Feature: Delete listing
@javascript

Scenario: Delete a listing
  Given I have a listing
  And I want to delete my listing
  Then I click delete 
  And I click OK to confirm
  Then I should not see my listing
