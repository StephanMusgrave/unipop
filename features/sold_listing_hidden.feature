Feature: Listings that have been determined as 'sold' won't be displayed in the listings homepage
	In order to only see buyable listings on my homepage
	As a user
	I will only see listings that haven't been 'sold'

Scenario: Louise has bought Ollie's football, and she is on her homepage
	Given Ollie has agreed to sell Louise his football
	When Louise visits the homepage
	Then Louise should not see Ollie's football as a listing
