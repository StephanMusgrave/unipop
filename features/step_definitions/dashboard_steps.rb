Given(/^I don't want any listings$/) do
  
end

Then(/^I should see link "(.*?)"$/) do |link_name|
  expect(page).to have_link(link_name)
end

Given(/there is a listing/) do
	Listing.create(description: "an awesome red pen", price: "300", seller: the_user2)
	expect(Listing.all.count).to eq 1
end


Given(/^I don't have any listings to sell$/) do
  expect(@user.want_listings.count).to eq 0
end

