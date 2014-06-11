Feature: Wanting an item
  In order to buy an item
  As a user
  I can register my interest

  Scenario: Trying to buy
    Given I am already signed in
    And I want to buy some stuff
    Then I should be able to want a listing

    And the listing should show I am on the waitlist


    

