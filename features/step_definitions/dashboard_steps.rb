Given(/^I don't want any listings$/) do
  expect(u)
end

Then(/^I should see link "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Given(/I want a listing/) do
	ollie = User.find_by('ollie@ollie.com')
	ollie.want_listings << Listing.last
end

And(/I there is a listing/) do
	Listing.create(description: "an awesome red pen", price: "300", seller: the_user2)
	expect(Listing.all.count).to eq 1
end


