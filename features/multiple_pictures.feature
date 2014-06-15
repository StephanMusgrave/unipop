Feature: Item listing page
  In order to see multiple pictures
  As a logged in user 
  I want to see multiple picures

  Background: Being signed in 
    Ollie is signed in
    And Ollie visits the homepage

  Scenario: Ollie views a listing
    Given Muhanad has one hamster for sale
    And Ollie clicks on Muhanad's hamster description
    And Ollie sees a picture


