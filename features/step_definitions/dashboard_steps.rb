

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

Given(/^Louise makes a listing$/) do
  Louise_pen = Listing.create(description: "an awesome blue pen", price: "20", seller: the_user2) 
  expect(the_user2.sales_listings.all.count).to eq 1   
end

Given(/^I want the listing$/) do
  visit '/'
  click_on  Louise_pen.description
  expect(current_path).to eq listing_path  Louise_pen 
  click_on "I want it!"  
end

Given(/^Everyone logs out$/) do
  logout
end

Given(/^Louise Logs in$/) do
  login_as the_user2
end