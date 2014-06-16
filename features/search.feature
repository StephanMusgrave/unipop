Feature: A search box

Background: User is logged in and there are other users' items for sale
	Given Ollie is signed in
	And Louise has one notebook for sale
	And Steve has an iphone for sale

Scenario: searching with one hashtag
	Given Ollie visits the homepage
	And Ollie enters "notebook" in the search box
	Then Ollie should see Louise's notebook as a listing
	And Ollie shouldn't see Steve's iphone as a listing

