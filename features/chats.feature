Feature: Chats between a seller and a buyer
  In order to discuss a sale
  As a buyer or as a seller
  We can chat within the app

Background: Being logged in and having wanted another user's listing
  Given Ollie is signed in
  And Louise has one notebook for sale
  And Ollie is on the homepage
  And Ollie clicks on Louise's notebook listing
  And Ollie is the first buyer to click "I want it!"

Scenario: First seeing the chat room
  Given Ollie enters chatroom to speak with Louise about her notebook
  Then Ollie sees "Chatroom for Louise's: my makers academy black notebook"
  And Ollie sees "Begin_chatting" in the chat field

Scenario: First buyer and seller logged in
  Given Louise logs in 
  Given Ollie enters chatroom to speak with Louise about her notebook
  And Ollie opens the chat with "Hi I'm interested in buying your lovely notebook."
  Then Louise sees Ollie's message about her notebook listing
  And Louise says "Great, meet me in union bar at 1pm with the readdies"
  And Ollie says "OK, see you there my number is 07775 678678"
  

  


