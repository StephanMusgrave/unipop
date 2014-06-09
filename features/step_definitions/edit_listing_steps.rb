Given(/^I have a listing$/) do
	my_listing = Listing.create({
		description: 'Makers Notebook for sale',
		price: 0.35
	})
  visit edit_listing_path my_listing
end

Given(/^I want to change something$/) do
  
end

Then(/^I click the Edit button$/) do
  click_on 'Edit'
end

Then(/^I complete the edit form$/) do
  
end

Then(/^I click save changes$/) do
  
end

Then(/^I should see my revised listing on the home page$/) do
  expect(page).to have_content
end
