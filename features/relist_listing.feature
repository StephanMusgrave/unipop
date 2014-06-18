Feature: Relist a listing you have sold
	In order to relist an item
	As a seller
	I will press a relist button

Scenario: Relisting an item
	Given Ollie has agreed to sell Louise his football
	And Louise has decided she doesn't want it anymore
	And Ollie clicks "Relist!"
	And Ollie goes to the home page
	Then Ollie sees his football