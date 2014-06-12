Feature: Unwanting a listing
In order to change your mind about buying a listing
As a user
I can retract my interest

Scenario: A User decides they no longer want an item 
Given Ollie is signed in
And Ollie visits a listing he has already wanted
Then Ollie clicks 'Changed my mind'
Then he is taken to the home page to begin browsing again
And he is told he has been unwanted it

