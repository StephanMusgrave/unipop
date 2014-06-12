Feature: Wanting an item
  In order to buy an item
  As a user
  I can register my interest

Scenario: Trying to buy as the first buyer
	Given Ollie is signed in
	And Louise has one notebook for sale
	And Ollie is on the home page
	And Ollie clicks on Louise's listing
	And Ollie clicks 'I want it!'
	Then Ollie enters a chatroom to speak with Louise

  

