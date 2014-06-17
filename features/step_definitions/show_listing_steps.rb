Given(/^I am on the homepage$/) do
  visit '/'
end

Given(/^there are no listings$/) do
end

Then(/^I should see the message "(.*?)"$/) do |content|
  expect(page).to have_content content
end

Given(/^there is one listing$/) do
	Listing.create({
		description: 'Makers Notebook for sale',
		price: 0.35
	})
end

Then(/^I should see "(.*?)"$/) do |content|
  expect(page).to have_content content
end
