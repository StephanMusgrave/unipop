#-----  hashtags stuff

Given(/^I can see a "(.*?)" field$/) do |field_name|
	expect(page).to have_field(field_name)
end

When(/^I fill in the "(.*?)" field with "(.*?)"$/) do |field_name, stuff|
  fill_in(field_name, :with => stuff)
end

Then(/^I should be on the page of my listing$/) do
	@listing = Listing.last.id
  expect(current_path).to eq listing_path @listing
end

