Given(/^Louise is trying to buy Ollie's football$/) do
	louise
	ollie
	@ollies_football = Listing.create(description: "a football", price: "2000", seller: ollie)
  @louise.want_listings << @ollies_football
  Chatroom.create(listing:@ollies_football)
end

Given(/^Louise and Ollie have discussed Ollie's football in the chatroom$/) do
	@ollies_football.chatroom.comments.create(body:'Hey, I wanna buy your football', user: @louise)
	@ollies_football.chatroom.comments.create(body:'Yeah sure, £500', user: @ollie)
	@ollies_football.chatroom.comments.create(body:'Cool', user: @louise)
end

Given(/^Ollie is signed in and in the chatroom for his football$/) do
	login_as @ollie
	visit listing_chatroom_path(@ollies_football)
end

Given(/^Ollie has agreed to sell Louise his football$/) do
	ollies_football
	louise
  @louise.want_listings << @ollies_football
  @ollies_football.sold = true
  Chatroom.create(listing:@ollies_football)

end

When(/^Louise visits the homepage$/) do
  visit '/'
end

Then(/^Louise should not see Ollie's football as a listing$/) do
	expect(page).not_to have_css('.listing-main-pic')
end

When(/^Ollie is logged in and visits his profile page$/) do
	login_as @ollie
	visit user_path(@ollie)
end

Then(/^Ollie should see "(.*?)" next to his football listing$/) do |content|
	pending # expect(page).to have_content(content)
end

Given(/^Louise has decided she doesn't want it anymore$/) do
	@ollies_football.chatroom.comments.create(body:"I don't want your stupid football anymore", user:@louise)
end

Given(/^Ollie goes to the home page$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^Ollie sees his football$/) do
  pending # express the regexp above with the code you wish you had
end
