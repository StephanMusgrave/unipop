Feature: Chatroom index
	In order to see the chatrooms I am involved in
  As a buyer or as a seller
  I can see a chatroom index

Background: A seller has items for sale
	Given Ollie is signed in
	And Louise has one notebook for sale
	And Louise has one bookshelf for sale
	And Louise has one lamp for sale
  And Ollie is the first to want both items
  And Ollie has messaged Louise about her notebook
  And Ollie has messaged Louise about her bookshelf
  And Steve is the first to want Louise's lamp
  And Ollie signs out

Scenario: Seeing all the chatrooms you are involved in as a buyer
  Given Ollie is signed in
  And Ollie is on the homepage
  And Ollie clicks the chatroom button
  And Ollie is on the chatroom index
  Then Ollie sees "Buying (2)"
  And Ollie sees "Hey, I wanna buy your notebook"
  And Ollie sees "Hey, I wanna buy your bookshelf"


Scenario: Seeing all the chatrooms you are involved in as a seller
  Given Louise logs in
  And Louise is on the homepage
  And Louise clicks the chatroom button
  And Louise is on the chatroom index
  Then Louise sees "Selling (3)"
  And Louise sees "Hey, I wanna buy your notebook"
  And Louise sees "Hey, I wanna buy your bookshelf"
  And Louise sees "Get in touch with the buyer!"

Scenario: 
 