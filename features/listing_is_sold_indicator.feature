Feature: A 'sold' indicator will appear beside your listing on your profile page if it is sold
	In order to know whether or not I've agreed to sell my item
	As a seller
	I will see a 'sold' indicator beside my listing on my profile page

Scenario: Ollie has sold something and is on his profile page
	Given Ollie has agreed to sell Louise his football
	When Ollie is logged in and visits his profile page
	Then Ollie should see "SOLD" next to his football listing
