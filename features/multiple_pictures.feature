Feature: Item listing page
  In order to see multiple pictures
  As a logged in user 
  I want to see multiple picures

  Background: Being logged in 
    Given Ollie is signed in
    And Ollie visits the homepage

  Scenario: Ollie views a listing
    And Shelley has one hamster for sale
    And Ollie is signed in 
    And Ollie views Shelley's hamster
    And Ollie visits the hamster listing page
    And Ollie sees a picture


