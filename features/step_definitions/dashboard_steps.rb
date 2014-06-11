

Then(/^I should see link "(.*?)"$/) do |link_name|
  expect(page).to have_link(link_name)
end

Given(/there is a listing/) do
  Listing.create(description: "an awesome red pen", price: "300", seller: the_user)
	expect(Listing.all.count).to eq 1
  expect(the_user.sales_listings.all.count).to eq 1
end


Given(/^I don't have any listings to sell$/) do
  the_user.sales_listings.destroy_all
  expect(the_user.sales_listings.all.count).to eq 0
end

Given(/^I have one item for sale$/) do
  Listing.create(description: "an awesome red pen", price: "300", seller: the_user)
  expect(the_user.sales_listings.all.count).to eq 1
end


