Feature: Authentication
	In order to sign up
	As a new user
	I can only use a valid email domain

Background: Visit the sign up page
	Given I visit the sign up page

Scenario: Login with a valid email
	And I sign up with a valid email
	Then I should be redirected to the homepage

Scenario: Login with an invalid email
	And I sign up with a anvalid email
	Then I should be see 'Email is invalid'