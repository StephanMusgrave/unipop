Feature: Seller and buyer agreeing a sale
  In order to agree on a sale
  As a seller and a buyer
  I can choose to confirm the sale

Background: A buyer and seller have spoken about an item
	Given Louise is trying to buy Ollie's football
	And Louise and Ollie have discussed Ollie's football in the chatroom

Scenario: Ollie and Louise agree a deal
	Given Ollie is signed in and in the chatroom for his football
	And Ollie clicks "Sell it!"
	And Ollie signs out
	And Louise logs in 
	And Louise sees "Sale confirmed!"



