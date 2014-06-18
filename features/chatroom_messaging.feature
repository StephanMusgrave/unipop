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

Scenario: Sending a chat message as a buyer
  Given Ollie enters chatroom to speak with Louise about her notebook
  And Ollie fills in the chat field with "Hey, I wanna buy your notebook"
  And Ollie clicks "Create Comment"
  Then Ollie sees "Hey, I wanna buy your notebook" on the chat page
  And Ollie sees "less than a minute ago, Ollie said:"

Scenario: Accessing the chatroom as a seller
  Given Ollie has messaged Louise about her notebook
  And Ollie signs out
  And Louise signs in and is on her dashboard
  And Louise sees "1 in queue" on the page
  And Louise clicks "1 in queue"
  And Louise is in the chatroom for her notebook
  Then Louise sees "Ollie said: Hey, I wanna buy your notebook" on the page

  


