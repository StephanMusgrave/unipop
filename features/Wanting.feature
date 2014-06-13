
Feature: Wanting an item
  In order to buy an item
  As a user
  I can register my interest

Background: Being logged in with another user's item for sale
	Given Ollie is signed in
	And Louise has one notebook for sale

Scenario: Trying to buy as the first buyer
	And Ollie is on the homepage
	And Ollie clicks on Louise's notebook listing
	And Ollie clicks "I want it!"
	Then Ollie enters chatroom to speak with Louise about her notebook

Scenario: Trying to buy as the second buyer of a listing
	Given Shelley has clicked 'I want it!' on Louise's listing
	And Ollie is on the homepage
	And Ollie clicks on Louise's listing
	And Ollie clicks "I want it!"
	Then Ollie is referred to his dashboard
	And Ollie is told he's been added to the waitlist

Scenario: A user cannot want their own listing
	Given Ollie has one football for sale
	And Ollie is on the homepage
	And Ollie clicks on his football listing
	Then he doesn't see an 'I want it!' button

  

