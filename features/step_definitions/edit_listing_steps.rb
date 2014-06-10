Given(/^I have a listing$/) do
	@my_listing = Listing.create({
		description: 'Makers Notebook for sale',
		price: 0.35
	})
end

Given(/^I want to change something$/) do
  visit listing_path @my_listing
end

Then(/^I click the Edit button$/) do
   # p page.source
   click_on 'Edit'
end

Then(/^I complete the edit form$/) do
  fill_in 'Description', with: "Makers Notebook - hardly used - for sale"
  fill_in 'Price', with: "0.45"
end

Then(/^I click save changes$/) do
  click_on 'Save'
end

Then(/^I should see my revised listing on the home page$/) do
  expect(page).to have_content "Makers Notebook - hardly used - for sale"
  expect(page).to have_content "0.45"
end
