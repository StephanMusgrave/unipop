Feature: Chats between a seller and a buyer
  In order to initiate a chat
  As a buyer
  I want to see the necessary fields

Background: Being logged in and having wanted another user's listing
  Given Ollie is signed in
  And Louise has one notebook for sale
  And Ollie is on the homepage
  And Ollie clicks on Louise's notebook listing
  And Ollie is the first buyer to click "I want it!"

Scenario: First seeing the chat room
  Given Ollie enters chatroom to speak with Louise about her notebook
  Then Ollie sees "Start chatting!" in the comments field
 

