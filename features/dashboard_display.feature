Feature: A user's dashboard
  In order to have a control center
  As a logged in user
  I want to to see details of my listings 
Background: Being logged in
  Given Ollie is signed in
  And Ollie doesn't have any listings to sell

Scenario: Ollie can see descriptions of the two listings he has for sale
  And Ollie has one football and one bike for sale
  And Ollie visits "dashboard"
  Then Ollie should see "a football"
  Then Ollie should see "fabulous bike"

Scenario: Ollie can see the two listings he wants
  And Louise has one notebook for sale
  And Steve has an iphone for sale
  And Ollie is signed in
  And Ollie wants Louise's notebook
  And Ollie wants Steve's iphone
  And Ollie visits "dashboard"
  Then Ollie should see "my makers academy black notebook"
  Then Ollie should see "an iphone"