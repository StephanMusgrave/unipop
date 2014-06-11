Given(/^I don't want any listings$/) do
  
end

Then(/^I should see link "(.*?)"$/) do |link_name|
  
end

Given(/I want a listing/) do
	ollie = User.find_by('ollie@ollie.com')
	ollie.want_listings << Listing.last
end

And(/there is a listing/) do
	Listing.create(description: "an awesome red pen", price: "300", seller: the_user2)
	expect(Listing.all.count).to eq 1
end


